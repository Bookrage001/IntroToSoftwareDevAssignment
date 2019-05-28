<%-- 
    Document   : Sign in
    Created on : 13/04/2019, 11:24:14 AM
    Author     : Hayley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in</title>
    </head>
    <body align="center">


        <div style="margin-top:10%">
            <div>
                <img src="Images/RaiMovieLogoBlue.png" id="Logo"/>
            </div>
            <h1>Log in</h1>
            <form method="post" action="loginAction.jsp">

                <tr>
                    <td><label>Username</label></td>
                    <td><input type="text" name="username" placeholder="Username" required></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input type="password" name="password" placeholder="Password" required></td>
                </tr>
                <tr>
                    <td><input class="button" type="submit" value="Login" style="margin-top:20px"></td>
                </tr>       
            </form>

            <p>Don't have an account? <font color="blue"><a href="register.jsp">Register</a></font></p>
        </div>
    </body>
</html>
