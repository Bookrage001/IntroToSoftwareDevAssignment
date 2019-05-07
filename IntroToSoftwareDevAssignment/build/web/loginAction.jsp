<%-- 
    Document   : loginAction
    Created on : 13/04/2019, 11:11:39 PM
    Author     : Hayley and Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="MovieStore.Model.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Action</title>
    </head>

    <%
        String userFilePath = application.getRealPath("WEB-INF/users.xml");
    %>

    <jsp:useBean id="webApp" class="MovieStore.Model.WebApplication" scope="application">
        <jsp:setProperty name="webApp" property="userFilePath" value="<%= userFilePath%>"/>
    </jsp:useBean>

    <%

        final WebApplication app = webApp;
        String email = request.getParameter("email");
        String password = request.getParameter("password");
    %>


    <body>    
        <%
            Users users = app.getUsers();
            User lister = users.login(email, password);

            if (lister != null) {
                session.setAttribute("user", lister);
                response.sendRedirect("index.jsp");
            } else {
        %>

        <h4> Incorrect Email/Password input. Click <a href="login.jsp"><u>here</u></a> to try again.</h4>

        <%
            }
        %>
    </body>
</html>