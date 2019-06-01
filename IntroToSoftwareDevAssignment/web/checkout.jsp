<%-- 
    Document   : checkout.jsp
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Caleb
--%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>

<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <title>Home Page</title>
    </head>
    <%@include file="WEB-INF/Modules/header.jspf"%>
    <body align="center">
    <content>
        <div class ="container">
            <div id="collection">
            <%-- just some logic to controll the cart --%>
            <%
                DBManager db = (DBManager) session.getAttribute("manager");
                Cart cart = (Cart) session.getAttribute("cart");
                if (request.getParameter("movieID") != null) {
                    int movieId = Integer.parseInt(request.getParameter("movieID"));
                    Movie movie = db.getMovieDetails(movieId);
                    cart.addOrder(movie);
                }       
                if ( cart.getOrders().size() != 0) {
                
            %>
                <form method="POST" action="purchase.jsp" id="cart">
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
                                Movie movie = order.getMovie();
                        %>
                        <form> 
                        </form>
                                <tr>
                                <td><%=movie.getTitle()%></td>
                                <td><%=movie.getGenre()%></td>
                                <td><%=movie.getReleaseDate()%></td>
                                <td><%=movie.getDirector()%></td>
                                <td>
                                    <input type="number" value="<%=order.getAmount()%>"  min="1" max="<%=movie.getCopies()%>" name="<%=movie.getID()%>"> 
                                </td>
                                <td>$<%=movie.getPrice()%></td>
                                <td>
                                    <form method="POST" action="removeMovieAction.jsp" id="remove<%=order.getMovie().getID()%>">
                                        <input type="hidden" name="movieId" value="<%=order.getMovie().getID()%>">
                                        <button form="remove<%=order.getMovie().getID()%>" type="submit" value="Submit" onClick="console.log('I have been clicked')">Remove</button>
                                    </form>
                                </td>
                                </tr>
                            <%
                            }
                            %>
                    </tbody>
                </table>
                <button form="cart">Purchase</button>
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
<jsp:include page="/ConnServlet" flush="true" />
</html>