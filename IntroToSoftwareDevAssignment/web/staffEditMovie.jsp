<%-- 
    Document   : staffEditMovie
    Created on : 31/05/2019, 8:00:11 AM
    Author     : mcant
--%>
<!-- Bootstrap -->
<link href="plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Delete Movie Listing</title>
</head>
    <%@include file="WEB-INF/Modules/header.jspf" %>
<body>
    <div class ="container">
        <div id="collection">
            <div class="row">
                <%@include file="WEB-INF/Modules/staffManagement.jspf" %>
                <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
                    <%@include file="WEB-INF/Modules/editMovie.jspf" %>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

