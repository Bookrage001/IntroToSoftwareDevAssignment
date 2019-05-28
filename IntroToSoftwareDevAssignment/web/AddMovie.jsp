<%-- 
    Document   : AddMovie
    Created on : 23/05/2019, 1:08:15 PM
    Author     : mcant
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- PLUGINS CSS STYLE -->
        <link href="plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- Fancy Box -->
        <link href="plugins/fancybox/jquery.fancybox.pack.css" rel="stylesheet">
        <!-- CUSTOM CSS -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
        <title>Add Movie Listing</title>
    </head>
    <body>
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
                <div class="container" style="padding-top: 20px">
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
                                    <!-- File chooser -->
                                    <!--                                    <div class="form-group choose-file">
                                                                            <i class="fa fa-user text-center"></i>
                                                                            <input type="file" class="form-control-file d-inline" id="input-file">
                                                                        </div>-->
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
    </content>
    <!-- JAVASCRIPTS -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>
