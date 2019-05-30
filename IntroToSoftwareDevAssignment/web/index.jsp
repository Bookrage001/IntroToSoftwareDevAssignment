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

<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
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