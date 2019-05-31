<%-- 
    Document   : deleteActivity
    Created on : 29/05/2019, 7:05:57 PM
    Author     : Hayley
--%>

<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.Model.UserActivity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <title>Activity Deleted!</title>
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
    <body>
        <%
            String actID = request.getParameter("LogId");
            int LogId = Integer.parseInt(actID);
            //Add new session for all activity
            DBManager db = (DBManager) session.getAttribute("manager");
            db.deleteActivity(LogId);

        %>

        <p>This activity has been successfully removed from your log!</p>
        <p>Click <a href="userActivity.jsp">here</a> to return back to your user activity!</p>

    </body>
</html>
