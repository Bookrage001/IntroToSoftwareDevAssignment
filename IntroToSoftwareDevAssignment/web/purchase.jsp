<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Sean
--%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="import java.math.BigInteger"%>
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
                BigInteger ORDER_ID = (BigInteger) db.getMaxNumber("ORDERS", "ORDER_ID");
                ORDER_ID.add(BigInteger.valueOf(1));
                String username;
                if (request.getParameter("userLogin") != null) {
                    User loggedInUser = (User) session.getAttribute("userLogin");
                    username = loggedInUser.getUsername();
                } else {
                    username = "annonomous";
                }
                for (Order order: cart.getOrders()) {
                    // TODO do some validation then purchase the movie
                    db.addOrder(ORDER_ID, username, order.getMovieId(), order.getAmount(),"Purchased" );
                }
            %>
                <h1>Your Order Has Been Placed</h1>
                <p><a href="index.jsp"> Click Here to go back to the index page</a>
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