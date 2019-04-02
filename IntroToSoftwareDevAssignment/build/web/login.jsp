<%@page import="uts.wsd.oms.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String filePath = application.getRealPath("WEB-INF");%>
<jsp:useBean id="movieStoreApp" class="uts.wsd.oms.MovieStoreApplication" scope="application">
    <jsp:setProperty name="movieStoreApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%
    boolean loginError = false;
    boolean validEmail = true, validPassword = true;
    String email = "";
    String password = "";
    User user = (User) session.getAttribute("user");
    
    //redirect user if they go to the login page while already logged in
    if(user != null)
            response.sendRedirect("index.jsp");
    
    //Validate details and log user in
    if (request.getParameter("login") != null) {
        email = request.getParameter("email");
        password = request.getParameter("password");
        user = movieStoreApp.getUsers().login(email, password);
        //If user is valid, log them in
        if (user != null) {
            session.setAttribute("user", user);
            response.sendRedirect("main.jsp");
        } 
        //Otherwise set the validation errors
        else {
            loginError = true;
            validEmail = movieStoreApp.validateEmail(email);
            validPassword = movieStoreApp.validatePassword(password);
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Login</h1>

        <%@include file="/WEB-INF/jspf/navbar.jspf" %>

        <% if (loginError) { %>
        <p class="validation">Username or Password invalid. Try again</p>
        <% }%>

        <form action="" method="post">
            <table id="userDetailsTable">
                <tbody>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input type="email" name="email" value="<%=email%>"></td>
                        <% if(!validEmail) { %>
                        <td><text class="validation">Invalid Email format</text></td>
                        <% } %>
                    </tr>
                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td><input type="password" name="password"></td>
                        <% if(!validPassword) { %>
                        <td>
                            <text class="validation">
                            Invalid Password format. 
                            Passwords Must be at least 8 characters long and only include letters and numbers
                            </text>
                        </td>
                        <% } %>
                    </tr>
                    <tr>
                        <td><label for="login"></label></td>
                        <td><input type="submit" name="login" value="Login"></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
