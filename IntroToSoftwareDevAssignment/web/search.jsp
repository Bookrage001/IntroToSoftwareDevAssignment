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
            <div class="movie-area">
                <%
                    //Add new session for all books
                    String keyword = request.getParameter("keyword");
                    DBManager db = (DBManager) session.getAttribute("manager");
                    ArrayList<Movie> list = db.searchMovie(keyword);
                    for (Movie movies : list) {
                %>
                <div style="padding:20px" >
                    <form method="post" action="movieDetails.jsp">

                        <button type="submit" style="background: transparent">
                            <img class="movieimg" src="<%= movies.getPoster()%>"  />
                            <div align="center">
                                <input type="hidden" name="movieID" value="<%= movies.getID()%>">
                                <%= movies.getTitle()%> <br>
                                $ <%= movies.getPrice()%> AUD
                            </div>
                        </button>

                    </form>
                    <div>
                        <form method="post" action="checkout.jsp">
                            <button type="submit" class="fa fa-cart-plus">Add to Cart</button>
                        </form>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>
