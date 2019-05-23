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
        <title>Add Movie Listing</title>
    </head>
    <body>
        <div class="container">
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
                            <h5 class="text-center">Samanta Doe</h5>
                            <p>Joined February 06, 2017</p>
                        </div>
                        <!-- Dashboard Links -->
                        <div class="widget user-dashboard-menu">
                            <ul>
                                <li>
                                    <a href="dashboard-my-ads.html"><i class="fa fa-user"></i>Add Movie Listing</a></li>
                                <li>
                                    <a href="dashboard-favourite-ads.html"><i class="fa fa-bookmark-o"></i> View All Movies <span>0</span></a>
                                </li>
                                <li>
                                    <a href="dashboard-archived-ads.html"><i class="fa fa-file-archive-o"></i>Manage Customers <span>20</span></a>
                                </li>
                                <li>
                                    <a href="dashboard-pending-ads.html"><i class="fa fa-bolt"></i> Orders<span>23</span></a>
                                </li>
                                <li>
                                    <a href="logout.html"><i class="fa fa-cog"></i> Logout</a>
                                </li>
                                <li>
                                    <a href="delete-account.html"><i class="fa fa-power-off"></i>Delete Account</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
                    <!-- Edit Personal Info -->
                    <div class="widget personal-info">
                        <h3 class="widget-header user">Movie Description</h3>
                        <form action="#">
                            <!-- First Name -->
                            <div class="form-group">
                                <label for="first-name">Title</label>
                                <input type="text" class="form-control" id="first-name">
                            </div>
                            <!-- Last Name -->
                            <div class="form-group">
                                <label for="last-name">Genre</label>
                                <input type="text" class="form-control" id="last-name">
                            </div>
                            <!-- File chooser -->
                            <div class="form-group choose-file">
                                <i class="fa fa-user text-center"></i>
                                <input type="file" class="form-control-file d-inline" id="input-file">
                            </div>
                            <!-- Comunity Name -->
                            <div class="form-group">
                                <label for="comunity-name">Release Date</label>
                                <input type="text" class="form-control" id="comunity-name">
                            </div>
                            <!-- Comunity Name -->
                            <div class="form-group">
                                <label for="comunity-name">Director</label>
                                <input type="text" class="form-control" id="comunity-name">
                            </div>
                            <!-- Comunity Name -->
                            <div class="form-group">
                                <label for="comunity-name">Synopsis</label>
                                <input type="text" class="form-control" id="comunity-name">
                            </div>
                        </form>
                    </div>
                    <!-- Change Password -->
                    <div class="widget change-password">
                        <h3 class="widget-header user">Movie Details</h3>
                        <form action="#">
                            <!-- Current Password -->
                            <div class="form-group">
                                <label for="current-password">Price</label>
                                <input type="password" class="form-control" id="current-password">
                            </div>
                            <!-- New Password -->
                            <div class="form-group">
                                <label for="new-password">Number of Copies</label>
                                <input type="password" class="form-control" id="new-password">
                            </div>
                            <!-- Submit Button -->
                            <button class="btn btn-transparent">Add Movie Listing</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- JAVASCRIPTS -->
        <script src="plugins/jquery/jquery.min.js"></script>
        <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="plugins/fancybox/jquery.fancybox.pack.js"></script>
        <script src="js/scripts.js"></script>

    </body>
</html>
