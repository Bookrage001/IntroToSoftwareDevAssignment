<%-- 
    Document   : Sign in
    Created on : 15/04/2019, 11:24:14 AM
    Author     : husei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="Design/stylesheet.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in</title>
    </head>
    <body align="center">


        <div style="margin-top:10%">
            <div>
                <img src="Design/Images/RaiMovieLogoBlue.png" class="SigninLogo"/>
            </div>
            <h1>Sign in</h1>
            <form>
                Username:<br>
                <input type="text" name="Username"><br>
                Password:<br>
                <input type="text" name="Password">
            </form>
            <button type="button" style="margin-top:20px">Sign in!</button>
            <p>Don't have an account? <font color="blue"><a href="register.jsp">Register</a></font></p>
        </div>
    </body>
</html>
