<%-- 
    Document   : logout
    Created on : 23/05/2019, 9:06:43 PM
    Author     : Hayley
--%>

<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.controller.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Logout</title>
    </head>
    <body>
        <% //  String ID = "";         
//            DBManager manager = (DBManager)session.getAttribute("manager");
//            manager.updateLogout(ID);
            
            session.invalidate();        
        %>
        <p class="outline">You have been logged out. Click <a class="link" href="index.jsp">here</a> to return to the welcome page.</p>
    </body>
</html>