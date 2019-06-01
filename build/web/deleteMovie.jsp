<%-- 
    Document   : deleteMovie
    Created on : 30/05/2019, 11:37:40 AM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.Movie"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Delete</title>
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
                        db.deleteMovie(movieID);
                    %>
                    <div style="padding-top: 100px; color: red">
                        <h1>Successfully deleted!</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
