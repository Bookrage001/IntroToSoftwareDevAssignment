<%-- 
    Document   : loginWelcome
    Created on : 23/05/2019, 1:55:40 PM
    Author     : Hayley
--%>

<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.Model.User"%>
<%@page contentType="text/html" import="MovieStore.Model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
        User user = (User) session.getAttribute("userLogin");
    %>
    <body>

        <% if (user != null) {%>        
        <h1>Hello, <%= user.getFirstname()%></h1> 
        <p>Your username is: <%= user.getUsername()%></p>
        <p>Your email: <%= user.getEmail()%></p>

               
        <%
            
            //Activate the database add-function once DBManager functions are completed
            //DBManager manager = (DBManager)session.getAttribute("manager");
            
            session.setAttribute("user", user);
            
            
        %>
        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Main Page </button>
        
        <% } else { %>
        
        <p class="outline"> Login unsuccessful! </p>
        <button class="button" type="button" onclick="location.href = 'main.jsp'" > Main Page </button>
        
        <% } %>        
        
        <button class="button" type="button" onclick="location.href = 'index.jsp'" > Home Page </button>
    </body>
</html>
