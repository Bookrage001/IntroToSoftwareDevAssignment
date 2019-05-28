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
        width: 100%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>




<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>User Activity Log</title>
    </head>

    <body>
        <input type="text" placeholder="Search.." name="keyword">
        <button type="submit"><i class="fa fa-search"></i></button>

    </form>
    <table>
        <thead>
            <tr>
                <td>USERNAME</td>
                <td>ACTIVITY</td>
                <td>STATUS</td>
            </tr>
        </thead>
        <tbody>
            <%
                DBManager db = (DBManager) session.getAttribute("manager");
                ArrayList<UserActivity> list = db.getActivity();
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
