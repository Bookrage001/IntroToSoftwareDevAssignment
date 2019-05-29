<%-- 
    Document   : logout
    Created on : 23/05/2019, 9:06:43 PM
    Author     : Hayley
--%>

<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.Model.User"%>
<%@page import="MovieStore.controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Logout</title>
    </head>

    <body align="center">

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
            <div id="collection"/>
        </div>
    </content>

    <%
        User user = (User) session.getAttribute("userLogin");
        String username = user.getUsername();

        DBManager db = (DBManager) session.getAttribute("manager");
        int logId = (new Random()).nextInt(999999);
        String activity = new SimpleDateFormat("HH:mm:ss dd.MM.yyyy").format(new java.util.Date());

        db.createLogout(logId, username, "Signed Out", activity);

        session.invalidate();
    %>
    <p class="outline">You have been logged out. Click <a class="link" href="index.jsp">here</a> to return to the home page.</p>
</body>
</html>