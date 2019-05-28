<%-- 
    Document   : loginAction
    Created on : 23/05/2019, 1:37:10 PM
    Author     : Hayley
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="MovieStore.controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MovieStore.Model.*" import="java.sql.*"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action Page</title>
</head>

<%
    //Activate the database search-validate once DBManager functions are completed
    DBManager db = (DBManager) session.getAttribute("manager");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    User user = db.findUser(username, password);

    if (user != null) {
        session.setAttribute("userLogin", user);
        response.sendRedirect("loginWelcome.jsp");
    } else {
        session.setAttribute("existErr", "User profile does not exist!");
        response.sendRedirect("login.jsp");
    }
%>

