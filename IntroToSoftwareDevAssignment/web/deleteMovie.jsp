<%-- 
    Document   : deleteMovie
    Created on : 30/05/2019, 11:37:40 AM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.Movie"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
                String mov = request.getParameter("movieID");
                int movieID = Integer.parseInt(mov);
                //Add new session for all books
                DBManager db = (DBManager) session.getAttribute("manager");
                db.deleteMovie(movieID);
            %>
            
            <p>successfully deleted!!</p>
            <a href="index.jsp">here </a>
    </body>
</html>
