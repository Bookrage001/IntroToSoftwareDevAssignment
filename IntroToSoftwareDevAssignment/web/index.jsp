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
                 <%
                    //Add new session for all books
                    DBManager db = (DBManager) session.getAttribute("manager");
                    ArrayList<Movie> list = db.getMovies();
                    for (Movie movies : list) {
                %>
            <form method="post" action="movieDetails.jsp">
                <tr>
                    <td><input type="hidden" name="movieID" value="<%= movies.getID()%>"></td>
                    <td><%= movies.getID()%></td>
                    <td><%= movies.getTitle()%></td>
                    <td><%= movies.getPrice()%></td>   
                    <td><button type="submit">details</button></td>
                </tr>
            </form>

            <%
                }
            %>
            </div>
        </div>
    </div>
</body>
</html>