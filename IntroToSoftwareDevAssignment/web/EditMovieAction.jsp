<%-- 
    Document   : EditMovieAction
    Created on : 31/05/2019, 8:19:45 AM
    Author     : mcant
--%>

<%@page import="java.util.Random"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Edit Movie Listing</title>
    <div class="searchContainer">
        <div id="Logoposition">
            <img src="Images/RaiMovieLogoBlue.png" id="Logo">
        </div>
        <%@include file="WEB-INF/Modules/search.jspf"%>
    </div>
</head>
<body>
    <div class ="container">
        <%@include file="WEB-INF/Modules/navbar.jspf" %>
        <div id="collection">
            <div class="row">
                <%@include file="WEB-INF/Modules/staffManagement.jspf" %>
                <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">

                    <%
                        int movieID = Integer.parseInt(request.getParameter("movieID"));
                        String title = request.getParameter("title");
                        String genre = request.getParameter("genre");
                        String releaseDate = request.getParameter("releaseDate");
                        String director = request.getParameter("director");
                        String synopsis = request.getParameter("synopsis");
                        String sPrice = request.getParameter("price");
                        double price = Double.parseDouble(sPrice);
                        String sCopies = request.getParameter("copies");
                        int copies = Integer.parseInt(sCopies);

                        DBManager db = (DBManager) session.getAttribute("manager");
                            db.UpdateMovie(movieID, title, genre, releaseDate, director, synopsis, price, copies);
                        
                    %>
                    <div style="padding-top: 20px">
                        <br>
                        <p>MovieID: <%=movieID%></p>
                        <p>Title: <%=title%></p>
                        <p>Genre: <%=genre%></p>
                        <p>date <%=releaseDate%></p>
                        <p>director <%=director%></p>
                        <p>Sypnosis <%=synopsis%></p>
                        <p>Genre: <%=genre%></p>
                        <p>Price: <%=price%></p>
                        <p><b>Movie successfully updated!</b></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>