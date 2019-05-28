<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>Home Page</title>
        <div class="searchContainer">
                <div id="Logoposition">
                    <img src="Images/RaiMovieLogoBlue.png" id="Logo">
                </div>
                <%@include file="WEB-INF/Modules/search.jspf"%>
        </div>
    </head>
    <body align="center">
        <div class ="container">
            <%@include file="WEB-INF/Modules/navbar.jspf" %>
            <div id="collection">
                <div id="refine">
                    <%@include file="WEB-INF/Modules/filter.jspf" %>
                </div>
                <div id="movies">
                    <c:set var="Movies">
                        <Movies>
                            <%
                                //Add new session for all books
                                DBManager db = (DBManager) session.getAttribute("manager");
                                ArrayList<Movie> list = db.getMovies();
                                for (Movie movies : list) {
                                    request.setAttribute("movies", movies);
                            %>
                            <movie id="${movies.ID}">
                                <title>${movies.title}</title>
                                <price>${movies.price}</price>
                            </movie>
                            <%}%>

                        </Movies>
                    </c:set>

                    <c:import url="WEB-INF/Data/movies.xsl" var="moviesxslt"/>
                    <x:transform xml="${Movies}" xslt="${moviesxslt}"/>
                </div>
            </div>
        </div>
    </body>
</html>