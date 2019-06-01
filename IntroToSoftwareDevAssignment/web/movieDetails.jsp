<%-- 
    Document   : movieDetails
    Created on : 29/05/2019, 11:15:17 PM
    Author     : mcant
--%>

<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bootstrap -->
<link href="plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<html>
        <title>Home Page</title>
<%@include file="WEB-INF/Modules/header.jspf"%>
<body align="center">
    <div class ="container">
        <div id="collection">
            <div id="refine">
                <%@include file="WEB-INF/Modules/filter.jspf" %>
            </div>
            <div id="movies">
                <%
                    String mov = request.getParameter("movieID");
                    int movieID = Integer.parseInt(mov);
                    //Add new session for all books
                    DBManager db = (DBManager) session.getAttribute("manager");
                    Movie move = db.getMovieDetails(movieID);

                %>
                <div style="padding: 20px;">
                    <div style="float:left; text-align: justify; width: 450px;">
                        <h4><b> Title:</b> <%= move.getTitle()%></h4><br>
                        <h5><b> Genre:</b> <%= move.getGenre()%></h5><br>
                        <h5><b> Director: </b> <%= move.getDirector()%></h5><br>
                        <h5><b> Release Date: </b> <%= move.getReleaseDate()%></h5> <br> 
                        <h5><b> Price: $</b> <%= move.getPrice()%></h5> <br> 
                        <h5><b> Synopsis:<br> </b> <%= move.getSynopsis()%></h5> <br> 
                        <br>
                        <div>
                            <form method="post" action="checkout.jsp">
                                <input type="hidden" name="movieID" value="<%= move.getID()%>">
                                <button type="submit" class="fa fa-cart-plus" style="padding: 16px 32px;">  Add to Cart</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div>
                    <img class="movieimg" src="<%= move.getPoster()%>"  style="float:right; width: 260px; height: 320px"/>
                </div>

            </div>
        </div>
    </div>
</body>
</html>