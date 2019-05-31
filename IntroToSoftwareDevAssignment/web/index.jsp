<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Home Page</title>
    </head>
    <body align="center">
    <script>
    var moviesArray = [];
    function addMovie(movieId){
        console.log(movieId);
        if (moviesArray == undefined || moviesArray == null) {
            moviesArray[0] = movieId;
        } else if (! moviesArray.includes(movieId)) {
            moviesArray.push(movieId);
        }
        console.log(moviesArray);
    }
    </script>
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
                <div id="refine">
                    <%@include file="WEB-INF/Modules/refignSearch.jspf" %>
                </div>
                <div class="movie-area ">
                    <%
                        //Add new session for all books
                        DBManager db = (DBManager) session.getAttribute("manager");
                        ArrayList<Movie> list = db.getMovies();
                        for (Movie movie : list) {
                    %>
                    <div style="padding:20px" >
                        <img class="movieimg" img='' />
                        <%-- TOOD why is there no poster on the movies object --%>
                        <div align="center">
                            <%=movie.getTitle()%>
                            <div class="Moviebtncontainer" style="text-align:center">
                                <%-- $<%=moive.getPrice()%> --%>
                            </div>
                            <div>
                                <button onclick="addMovie( <%=movie.getID()%>)" class="fa fa-cart-plus"> Add to Cart</button>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</body>
</html>