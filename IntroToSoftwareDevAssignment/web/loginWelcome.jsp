<%-- 
    Document   : loginWelcome
    Created on : 23/05/2019, 1:55:40 PM
    Author     : Hayley
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.Model.User"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" import="MovieStore.Model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <title>Login Welcome</title>
    </head>
    <%
        User user = (User) session.getAttribute("userLogin");
        String username = user.getUsername();
        DBManager db = (DBManager) session.getAttribute("manager");
        int logId = (new Random()).nextInt(999999);
        String activity = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy").format(new java.util.Date());
        db.createLogin(logId, username, "Signed In", activity);
    %>

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
        </div>
    </content>

    <% if (user != null) {%>        
    <h1>Hello, <%= user.getFirstname()%></h1> 
    <p>Your username is: <%= user.getUsername()%></p>
    <p>Your email: <%= user.getEmail()%></p>
    <p>Login time: <%= activity%> </p>


    <%
        session.setAttribute("user", user);
    %>

    <button class="button" type="button" onclick="location.href = 'index.jsp'" > Main Page </button>
    <button class="button" type="button" onclick="location.href = 'userActivity.jsp'" > My Activity </button>

    <% } else { %>

    <p class="outline"> Login unsuccessful! </p>
    <button class="button" type="button" onclick="location.href = 'index.jsp'" > Main Page </button>

    <% }%>        

</body>
</html>
