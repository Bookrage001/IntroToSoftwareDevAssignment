<%-- 
    Document   : profile
    Created on : May 28, 2019, 4:36:02 PM
    Author     : Chen
--%>
<%@page import="javax.xml.registry.infomodel.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css">
        <title>Profile Page</title>
    </head>
    <body>
        <%
            user  = (User) session.getAttribute("user");
        %>
        <table class="account_table">
            <thead>
                <tr>
                    <td>ID</td>
                    <td>Name</td>
                    <td>DOB</td>
                    <td>Email</td>
                    <td>Password</td>
                    <td>Favorite Color</td>
                </tr>
            </thead>
            <tbody >
                <tr>
                    <td>${customer.ID}</td>
                    <td>${customer.name}</td>
                    <td>${custoemr.dob}</td>
                    <td>${customer.email}</td>
                    <td>${customer.password}</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
