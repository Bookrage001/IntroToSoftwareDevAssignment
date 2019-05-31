<%-- 
    Document   : AddMovie
    Created on : 23/05/2019, 1:08:15 PM
    Author     : mcant
--%>
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
                    <form action="AddMovieAction.jsp" method="Post">
                        <!-- Movie Description -->
                        <div class="widget personal-info">
                            <h3 class="widget-header user">Movie Description</h3>
                            <!-- Title -->
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" name="title">
                            </div>
                            <!-- Genre -->
                            <div class="form-group">
                                <label>Genre</label>
                                <input type="text" class="form-control" name="genre">
                            </div>
                            <!-- Release Date -->
                            <div class="form-group">
                                <label>Release Date</label>
                                <input type="text" class="form-control" name="releaseDate">
                            </div>
                            <!-- Director -->
                            <div class="form-group">
                                <label>Director</label>
                                <input type="text" class="form-control" name="director">
                            </div>
                            <!-- Synopsis -->
                            <div class="form-group">
                                <label>Synopsis</label>
                                <input type="text" class="form-control" name="synopsis">
                            </div>
                        </div>
                        <!-- Movie Details -->
                        <div class="widget">
                            <h3 class="widget-header user">Movie Details</h3>
                            <!-- Price -->
                            <div class="form-group">
                                <label>Price</label>
                                <input type="text" class="form-control" name="price">
                            </div>
                            <!-- Copies -->
                            <div class="form-group">
                                <label>Number of Copies</label>
                                <input type="text" class="form-control" name="copies">
                            </div>
                            <!-- Submit Button -->
                            <button class="btn btn-transparent">Add Movie Listing</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
