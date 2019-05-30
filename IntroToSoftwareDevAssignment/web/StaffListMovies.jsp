<%-- 
    Document   : deleteMovie
    Created on : 30/05/2019, 11:28:56 AM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.Movie"%>
<%@page import="java.util.ArrayList"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Movie Listing</title>
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
                   <div id="movies">
                 <%
                    //Add new session for all books
                    DBManager db = (DBManager) session.getAttribute("manager");
                    ArrayList<Movie> list = db.getMovies();
                    for (Movie movies : list) {
                %>
            <form method="post" action="deleteMovie.jsp">
                <tr>
                    <td><input type="hidden" name="movieID" value="<%= movies.getID()%>"></td>
                    <td><%= movies.getID()%></td>
                    <td><%= movies.getTitle()%></td>
                    <td><%= movies.getPrice()%></td>   
                    <td><button type="submit">Delete</button></td>
                </tr>
            </form>

            <%
                }
            %>
            </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
