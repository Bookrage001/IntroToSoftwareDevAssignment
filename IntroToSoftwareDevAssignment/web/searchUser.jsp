<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="MovieStore.controller.*"%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*" %>
<%@page import="java.sql.*"%>

 <%
     DBManager db = (DBManager) session.getAttribute("manager");
     String keyword = request.getParameter("hidden");
     ArrayList<User> list = db.searchUser(keyword);
     for (User users: list) {
 %>
 <body>
 </body>
<%}%>