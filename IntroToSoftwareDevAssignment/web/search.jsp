<%-- 
    Document   : search.jsp
    Created on : 28/05/2019, 7:19:51 PM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.Movie"%>
<%@page import="MovieStore.Model.dao.DBManager" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
                            String keyword = request.getParameter("keyword");
                            DBManager db = (DBManager) session.getAttribute("manager");
                            ArrayList<Movie> list = db.searchMovie(keyword);
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
