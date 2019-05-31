<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Sean
--%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="java.math.BigInteger"%>
<jsp:include page="/ConnServlet" flush="true" />
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
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
                Long LongOrderId = db.getMaxNumber("ORDERS", "ORDER_ID");
                int OrderId = LongOrderId.intValue();
                String username;
                if (request.getParameter("userLogin") != null) {
                    User loggedInUser = (User) session.getAttribute("userLogin");
                    username = loggedInUser.getUsername();
                } else {
                    username = "clabuschagne4";
                }
                for (Order order: cart.getOrders()) {
                    // TODO do some validation then purchase the movie
                    db.addOrder(OrderId + 1, username , order.getIntMivieId(), order.getAmount(),"Purchased" );
                }
            %>
                <h1>Your Order Has Been Placed</h1>
                <p><a href="index.jsp"> Click Here to go back to the index page</a>
            </div>
        </div>
    </content>
</body>
</html>