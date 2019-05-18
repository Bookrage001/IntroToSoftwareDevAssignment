<%-- 
    Document   : AddMovieAction
    Created on : 18/05/2019, 4:49:28 PM
    Author     : mcant
--%>

<%@page import="MovieStore.Model.Movie"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.controller.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String title = request.getParameter("title");
            String genre = request.getParameter("genre");
            String date = request.getParameter("releaseDate");
            String director = request.getParameter("director");
            String synopsis = request.getParameter("synopsis");
            String price = request.getParameter("price");
            String copies = request.getParameter("copies");

            int key = (new Random()).nextInt(999999);
            String ID = "" + key;
        %>

        <p>MovieID: <%=ID%></p>
        <p>Title: <%=title%></p>
        <p>Genre: <%=genre%></p>
        <p>Price: <%=price%></p>
        <p><b>Movie successfully added!</b></p>

        <%
            DBManager manager = (DBManager) session.getAttribute("manager");
            Movie movie = new Movie(ID, title, genre, date, director, synopsis, price, copies);
            manager.addMovie(ID, title, genre, date, director, synopsis, price, copies);
            session.setAttribute("movie", movie);

        %>
    </body>
</html>
