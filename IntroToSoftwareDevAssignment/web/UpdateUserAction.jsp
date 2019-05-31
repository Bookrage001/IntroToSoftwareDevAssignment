<%@ page language="java"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MovieStore.Model.*" import="java.sql.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="MovieStore.controller.*"%>
<%@page import="java.util.*"%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action Page</title>
</head>
<%
    DBManager db = (DBManager) session.getAttribute("manager");
    String username = request.getParameter("username");
    String first_name = request.getParameter("first_name");
    String last_name = request.getParameter("last_name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String  address = request.getParameter("address");
    String suburb = request.getParameter("suburb");
    String postcode = request.getParameter("postcode");
    String type = request.getParameter("type");
    db.executequery("UPDATE USERS SET USERNAME='" + username + "',FIRST_NAME='" + first_name + "',LAST_NAME='" + last_name +
            "',EMAIL='" + email +"',PASSWORD='" + password +"',ADDRESS='" + address +"',SUBURB='" + suburb +"',POSTCODE='" + postcode +"',TYPE='" + type +"'WHERE USERNAME='" + username + "'");
    response.sendRedirect("UserManagement.jsp");
    
%>