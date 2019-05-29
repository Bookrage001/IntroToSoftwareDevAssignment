<%-- 
    Document   : userActivity
    Created on : 28/05/2019, 10:02:50 PM
    Author     : Hayley
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="MovieStore.Model.UserActivity"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 75%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
    
    searchContainer {
        margin: 25px;
    }
    
</style>

<html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <title>Activity Log</title>

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
            </div>
        </content>

        <searchContainer>
            <%@include file="WEB-INF/Modules/searchActivity.jspf"%>
        </searchcontainer>

        <div class="searchContainer"/>
        <%@include file="WEB-INF/Modules/searchActivity.jspf"%>
        <p><font color="blue"><a href="userActivity.jsp">View full log<a/>

                <table align="center">
                    <thead>
                        <tr>
                            <td>USERNAME</td>
                            <td>ACTIVITY</td>
                            <td>STATUS</td>
                        </tr>
                    </thead>
                    <tbody>

                        <%
                            String keyword = request.getParameter("keyword");
                            DBManager db = (DBManager) session.getAttribute("manager");
                            ArrayList<UserActivity> list = db.searchActivity(keyword);
                            for (UserActivity activity : list) {
                                request.setAttribute("activity", activity);
                        %>

                        <tr>
                            <td><%= activity.getUsername()%></td>
                            <td><%= activity.getActivity()%></td>
                            <td><%= activity.getStatus()%></td>
                        </tr>

                        <%
                            }
                        %>
                    </tbody>
                </table>
            </body>
</html>
