<%@ page language="java"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="MovieStore.Model.*" import="java.sql.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="MovieStore.controller.*"%>
<%@page import="java.util.*"%>

<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<%
    User me = (User) session.getAttribute("userLogin");
    String username = request.getParameter("username");
    DBManager db = (DBManager) session.getAttribute("manager");
    Statement stm = db.getSt();
    ResultSet rs = stm.executeQuery("SELECT * FROM USERS WHERE USERNAME = '" + username + "'");
    if (rs.next()) {
%>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Action Page</title>
</head>
<body>
<form method="post" action="UpdateUserAction.jsp">
<h1>Update User Information</h1>
<br>
Username: <br>
<input type="hidden" name="username" value="<%=rs.getString("username")%>">
<input type="text" name="username" value="<%=rs.getString("username")%>">
<br>
Password:<br>
<input type="text" name="password" value="<%=rs.getString("password")%>">
<br>
First name:<br>
<input type="text" name="first_name" value="<%=rs.getString("first_name")%>">
<br>
Last name:<br>
<input type="text" name="last_name" value="<%=rs.getString("last_name")%>">
<br>
Email Id:<br>
<input type="email" name="email" value="<%=rs.getString("email")%>">
<br>
Address:<br>
<input type="text" name="address" value="<%=rs.getString("address")%>">
<br>
Suburb:<br>
<input type="text" name="suburb" value="<%=rs.getString("suburb")%>">
<br>
Postcode:<br>
<input type="text" name="postcode" value="<%=rs.getString("postcode")%>">
<br>
<% if(me.getType().equals("admin")) {%>
Type:<br>
<select name="type">
<option value="admin">admin</option>
<option value="staff">staff</option>
<option value="user">user</option>
</select>
<% } %>
<br>
<input type="submit" value="submit">
</form>
</body>
<% } %>