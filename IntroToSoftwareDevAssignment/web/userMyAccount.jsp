<%-- 
    Document   : myAccount
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Husein
--%>

<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.Model.User"%>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>Home Page</title>
    </head>
    <%

        User user = (User) session.getAttribute("userLogin");

        String username = user.getUsername();
        session.setAttribute("userlogin", user);
        DBManager db = (DBManager) session.getAttribute("manager");

        //String username = "mstrowan3";
        String[] details = new String[3];
        details = db.getDetails(username);


    %>
    <body align="center">
        <div class="container">
            <header align="left">
                <div id="Logoposition">
                    <img src="Images/RaiMovieLogoBlue.png" id="Logo">
                </div>

            </header>
        </div>

        <div class ="container">
            <%@include file="WEB-INF/Modules/navbar.jspf" %>


        </div>
        <div style ="padding-top: 1%"> </div>
        <div name="container1" style="border: 1px solid green;width: 50%;margin:auto;background:white;padding-top:">

            <h1><%= username%></h1>
            <h2><%= details[1]%>  <%= details[2]%></h2>



            <div name="details" style="text-align: left; margin-top:10%; margin-right: 15%;float:right">
                <form action="userChangeDetails.jsp" method="post">
                    <%session.setAttribute("details", details);%>

                    <p><input type="submit" value="Change Details"></button></p>
                </form>
                <form action="userDelete.jsp" method="post">
                    <%session.setAttribute("username", username);%>

                    <p><input type="submit" value="Cancel My account"></button></p>
                </form>
            </div>
            <div name="details" style="text-align: left; margin-left:20%;">
                <h3>Email: </h3>
                <p><%= details[0]%></p>
                <h3>Address: </h3>
                <p><%= details[3]%></p>
                <h3>Suburb: </h3>
                <p><%= details[4]%></p>
                <h3>Postcode:</h3>
                <p style="padding-bottom:5%"><%= details[5]%><p>        

            </div>



        </div>
    </body>
</html>