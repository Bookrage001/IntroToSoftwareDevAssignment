<%-- 
    Document   : viewActivity
    Created on : 30/05/2019, 7:04:44 PM
    Author     : Hayley
--%>

<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
    .beta table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 75%;

    }

    .beta td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    .beta tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .beta tr:hover{
        background-color: #dddddd;
    }


</style>

<head>
     <title>View Activity</title>
</head>
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

<body align="center">
    <div id="activity">
        <%
            String actID = request.getParameter("LogId");
            int LogId = Integer.parseInt(actID);
            //Add new session for all activity
            DBManager db = (DBManager) session.getAttribute("manager");
            UserActivity act = db.getActivityDetails(LogId);

        %>

        <table class="beta" align="center">
            <thead>
                <tr>
                    <td>USERNAME</td>
                    <td>ACTIVITY</td>
                    <td>STATUS</td>
                    <td>DELETE</td>
                </tr>
            </thead>
            <tbody>

            <form method="post" action="deleteActivity.jsp">

                <td><%= act.getUsername()%></td>
                <td><%= act.getActivity()%></td>
                <td><%= act.getStatus()%></td>
                <td><button type="submit" name="LogId" value="<%= actID%>">Delete</button></td>
                </tr>
            </form>            
    </div>

</body>
</html>