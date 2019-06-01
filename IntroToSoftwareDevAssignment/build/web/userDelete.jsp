<%-- 
    Document   : userDelete
    Created on : 31/05/2019, 4:30:29 PM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete USer Action Page</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
            DBManager db = (DBManager) session.getAttribute("manager");

            String username = session.getAttribute("username").toString();

            db.deleteUser(username);

            session.setAttribute("EmptyErr", "Your acount has been cancelled");
            session.invalidate();
            response.sendRedirect("index.jsp");
        %>

    </body>
</html>
