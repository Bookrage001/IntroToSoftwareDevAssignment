<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Sean
--%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<jsp:include page="/ConnServlet" flush="true" />
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="MovieStore.Model.*" %>

<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>Home Page</title>
    </head>
    <body align="center">
        <div class="container">
            <header align="left">
                <div id="Logoposition">
                <a href="index.jsp">
                    <img src="Images/RaiMovieLogoBlue.png"  id="Logo">
                    </a>
                </div>
                <div id="Search">
                    <%@include file="WEB-INF/Modules/search.jspf"%>
                </div>
                <div>
                    <%@include file="WEB-INF/Modules/navbar.jspf"%>
                </div>
            </header>
        </div>
    <content>
        <div class ="container">
            <div id="collection">
            <%-- just some logic to controll the cart --%>
            <%
                DBManager db = (DBManager) session.getAttribute("manager");
                Cart cart = (Cart) session.getAttribute("cart");
                if (request.getParameter("removeId") != null) {
                    int movieId = Integer.parseInt(request.getParameter("removeId"));
                    Movie movie = db.getMovieDetails(movieId);
                    cart.removeOrder(movie);
                }
                if (request.getParameter("movieID") != null) {
                    int movieId = Integer.parseInt(request.getParameter("movieID"));
                    Movie movie = db.getMovieDetails(movieId);
                    cart.addOrder(movie);
                }
                if ( cart.getOrders().size() != 0) {
                
            %>
                <form method="POST" action="purchase.jsp">
                <table class="cart">
                    <thead>
                        <tr><b>
                            <td>Title</td>
                            <td>Genre</td>
                            <td>ReleaseDate</td>
                            <td>Director</td>
                            <td>Amount</td>
                            <td>Price(1)</td>
                            <td></td>
                        </b></tr>
                    </thead>
                    <tbody>
                        <%   
                            for (Order order: cart.getOrders()) {
                        %>
                                <tr>
                                <td><%=order.getMovie().getTitle()%></td>
                                <td><%=order.getMovie().getGenre()%></td>
                                <td><%=order.getMovie().getReleaseDate()%></td>
                                <td><%=order.getMovie().getDirector()%></td>
                                <td><input type="number" value="<%=order.getAmount()%>"  min="1" max="<%=order.getMovie().getCopies()%>" > </td>
                                <td>$<%=order.getMovie().getPrice()%></td>
                                <td>
                                <form method="post" action="checkout.jsp">
                                    <input type="hidden" name="removeId" value="<%=order.getMovie().getID()%>">
                                    <button type="submit">Remove</button>
                                </form>
                                </td>
                                </tr>
                            <%
                            }
                            %>
                    </tbody>
                </table>
                <button action="purchase.jsp">Purchase</button>
                <form>
                <%
                } else {
                %>
                NO ORDERS
                <a href="index.jsp">Cick here to add some movies</a>
                <%
                }
                %>
            </div>
        </div>
    </content>
</body>
<!--Script-->
<script>
    $(document).ready(function () {
        $('.order tr').click(function (event) {
            if (event.target.type !== 'checkbox') {
                $(':checkbox', this).trigger('click');
            }
        });
        $("input[type='checkbox']").change(function (e) {
            if ($(this).is(":checked")) {
                $(this).closest('tr').addClass("highlight_row");
            } else {
                $(this).closest('tr').removeClass("highlight_row");
            }
        });
    });
</script>
<jsp:include page="/ConnServlet" flush="true" />
</html>