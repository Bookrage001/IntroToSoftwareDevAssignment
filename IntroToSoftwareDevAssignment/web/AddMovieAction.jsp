<%-- 
    Document   : AddMovieAction
    Created on : 24/05/2019, 11:21:51 AM
    Author     : mcant
--%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="MovieStore.Model.dao.DBManager"%>
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
                        <div class="col-md-10 offset-md-1 col-lg-4 offset-lg-0">
                            <div class="sidebar">
                                <!-- User Widget -->
                                <div class="widget user-dashboard-profile">
                                    <!-- User Image -->
                                    <div class="profile-thumb">
                                        <img src="images/user/user-thumb.jpg" alt="" class="rounded-circle">
                                    </div>
                                    <!-- User Name -->
                                    <h5 class="text-center">Name of staff</h5>
                                </div>
                                <!-- Dashboard Links -->
                                <div class="widget user-dashboard-menu">
                                    <ul>
                                        <li>
                                            <a href="AddMovie.jsp"><i class="fa fa-user"></i>Add Movie Listing</a></li>
                                        <li>
                                            <a href="#"><i class="fa fa-bookmark-o"></i> View All Movies <span>0</span></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-file-archive-o"></i>Manage Customers <span>20</span></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-bolt"></i> Orders<span>23</span></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-cog"></i> Logout</a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-power-off"></i>Delete Account</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">

                            <%
                                int movieID = (new Random()).nextInt(999999);
                                String title = request.getParameter("title");
                                String genre = request.getParameter("genre");
                                String releaseDate = request.getParameter("releaseDate");
                                String director = request.getParameter("director");
                                String synopsis = request.getParameter("synopsis");
                                String sPrice = request.getParameter("price");
                                double price = Double.parseDouble(sPrice);
                                String sCopies = request.getParameter("copies");
                                int copies = Integer.parseInt(sCopies);

                                DBManager db = (DBManager) session.getAttribute("manager");
                                db.addMovie(movieID, title, genre, releaseDate, director, synopsis, price, copies);
                            %>

                            <p>MovieID: <%=movieID%></p>
                            <p>Title: <%=title%></p>
                            <p>Genre: <%=genre%></p>
                            <p>date <%=releaseDate%></p>
                            <p>director <%=director%></p>
                            <p>Sypnosis <%=synopsis%></p>
                            <p>Genre: <%=genre%></p>
                            <p>Price: <%=price%></p>
                            <p><b>Movie successfully added!</b></p>
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

