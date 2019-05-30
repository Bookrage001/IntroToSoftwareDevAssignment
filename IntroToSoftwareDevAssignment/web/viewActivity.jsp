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

<html>
    <head>
        <title>Home Page</title>
    <div class="searchContainer">
        <div id="Logoposition">
            <img src="Images/RaiMovieLogoBlue.png" id="Logo">
        </div>
        <%@include file="WEB-INF/Modules/search.jspf"%>
    </div>
</head>
<body align="center">
    <div class ="container">
        <%@include file="WEB-INF/Modules/navbar.jspf" %>
        <div id="collection">
            
            <div id="activity">
                <% 
                String actID = request.getParameter("LogId");
                int LogId = Integer.parseInt(actID);
                //Add new session for all activity
                DBManager db = (DBManager) session.getAttribute("manager");
                UserActivity act = db.getActivityDetails(LogId);
                
            %>
            
            <p><%= actID %></p>
            <p><%= act.getUsername() %></p>
            <p><%= act.getStatus() %></p>
            <p><%= act.getActivity() %></p>
            </div>
        </div>
    </div>
</body>
</html>