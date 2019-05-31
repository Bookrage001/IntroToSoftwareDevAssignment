<%-- 
    Document   : editMovie
    Created on : 31/05/2019, 8:03:45 AM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.Movie"%>
<%@page import="java.util.ArrayList"%>
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
                        String mov = request.getParameter("movieID");
                        int movieID = Integer.parseInt(mov);
                        DBManager db = (DBManager) session.getAttribute("manager");
                        Movie move = db.getMovieDetails(movieID);
                    %>
                    <form action="EditMovieAction.jsp" method="Post">
                        <!-- Movie Description -->
                        <div class="widget personal-info">
                            <h3 class="widget-header user">Movie Description</h3>
                            <input type="hidden" name="movieID" value="<%= move.getID()%>">
                            <!-- Title -->
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" name="title" value="<%= move.getTitle() %>">
                            </div>
                            <!-- Genre -->
                            <div class="form-group">
                                <label>Genre</label>
                                <input type="text" class="form-control" name="genre" value="<%= move.getGenre()%>">
                            </div>
                            <!-- Release Date -->
                            <div class="form-group">
                                <label>Release Date</label>
                                <input type="text" class="form-control" name="releaseDate" value="<%= move.getReleaseDate()%>">
                            </div>
                            <!-- Director -->
                            <div class="form-group">
                                <label>Director</label>
                                <input type="text" class="form-control" name="director" value="<%= move.getDirector()%>">
                            </div>
                            <!-- Synopsis -->
                            <div class="form-group">
                                <label>Synopsis</label>
                                <textarea type="text" class="form-control" name="synopsis" placeholder="<%= move.getSynopsis() %>" style="height: 100px"></textarea>
                            </div>
                        </div>
                        <!-- Movie Details -->
                        <div class="widget">
                            <h3 class="widget-header user">Movie Details</h3>
                            <!-- Price -->
                            <div class="form-group">
                                <label>Price</label>
                                <input type="text" class="form-control" name="price" value="<%= move.getPrice() %>">
                            </div>
                            <!-- Copies -->
                            <div class="form-group">
                                <label>Number of Copies</label>
                                <input type="text" class="form-control" name="copies" value="<%= move.getCopies() %>">
                            </div>
                            <!-- Submit Button -->
                            <button class="btn btn-transparent">Update Movie Listing</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
