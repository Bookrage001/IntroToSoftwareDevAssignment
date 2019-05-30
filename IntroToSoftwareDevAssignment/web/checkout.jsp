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
                    <img src="Images/RaiMovieLogoBlue.png" id="Logo">
                </div>
                <div id="Search">
                    <%@include file="WEB-INF/Modules/search.jspf"%>
                </div>
            </header>
        </div>
    <content>
        <div class ="container">
            <%@include file="WEB-INF/Modules/navbar.jspf" %>
            <div id="collection">
            <%-- just some logic to controll the cart --%>
            <%
                DBManager db = (DBManager) session.getAttribute("manager");
                String[] moviesArray = request.getParameterValues("movieArray");
                Cart cart = (Cart) session.getAttribute("cart");
                if(moviesArray == null || moviesArray.length == 0 ) {
                    %>
                    NO ORDERS
                    <%
                } else {
                    for(String movieId : moviesArray) {
                        Movie movie = db.getMovieDetails(Integer.parseInt(movieId));
                        cart.addOrder(movie,1,"anonymous");
                    }
                    ArrayList<Order> orders = cart.getOrders();
                %>
                <table class="cart">
                    <thead>
                        <tr><b>
                            <td>Title</td>
                            <td>Genre</td>
                            <td>ReleaseDate</td>
                            <td>Director</td>
                            <td>Price</td>
                            <td></td>
                        </b></tr>
                    </thead>
                    <tbody>
                        <%   
                            
                            for (Order order: orders) {
                        %>
                                <tr>
                                <td><%=order.getMovie().getTitle()%></td>
                                <td><%=order.getMovie().getGenre()%></td>
                                <td><%=order.getMovie().getReleaseDate()%></td>
                                <td><%=order.getMovie().getDirector()%></td>
                                <td>$<%=order.getMovie().getPrice()%></td>
                                <td><button>Remove</button></td>
                                </tr>
                            <%
                            }
                }
                        %>
                    </tbody>
                </table>
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