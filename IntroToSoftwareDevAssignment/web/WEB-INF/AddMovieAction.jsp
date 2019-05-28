<%-- 
    Document   : AddMovieAction
    Created on : 23/05/2019, 4:15:43 PM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
            //Movie movie = new Movie(movieID, title, genre, releaseDate, director, synopsis, price, copies);
            //session.setAttribute("movie", movie);
        %>
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
    </content>
</body>
</html>
