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
    String username = request.getParameter("username");
    DBManager db = (DBManager) session.getAttribute("manager");
    db.deleteUser(username);
    response.sendRedirect("UserManagement.jsp");
%>