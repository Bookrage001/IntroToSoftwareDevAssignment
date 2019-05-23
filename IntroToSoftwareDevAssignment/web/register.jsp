<%-- 
    Document   : Registration 1
    Created on : 15/04/2019, 12:38:54 PM
    Author     : husei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="Design/stylesheet.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>    
        <div style="margin-top:5%"></div>
        <div id="Logoposition">
            <img src="Design/Images/RaiMovieLogoBlue.png" class="SigninLogo">
        </div>
        <div>
            <form action="index.jsp" method="POST">
                <h1>Registration</h1>
                <table align="center">
                    <tr>
                        <td>
                            Username: <input type="text" name="username">
                        </td>
                        <td>Email: <input type="text" name="email"> </td>
                    </tr>
                    <table align="center">
                        <tr>
                            <td>
                                Password: <input type="text" name="password">
                            </td>
                            <td>
                                Confirm password: <input type="text" name="ConfirmPassword">
                            </td>
                        </tr>
                    </table>

                </table>
                <table align="center">
                    <tr>
                        <td>First Name: <input type="text" name="Firstname"> Last Name: <input type="text" name="Lastname"> </td>

                    </tr>
                </table>
                <table align="center">
                    <tr>
                        <td>Address: <input type="text" name="Address"> </td>
                        <td>Suburb:<input type="text" name="Suburb" style="width: 60px"> </td>
                        <td>Post Code:<input type="text" name="PostCode" style="width:50px"> 
                     </tr>
                </table>
                <br>
                <br>
                <tr>
                    <td></td><td><input type="submit" value="Register"</td>
                </tr> 
            </form>
            
        </div>


        <p>Already have a username/password?</p>
        <p> <font color=blue><a href="login.jsp">Return to login page</a></p>
    </body>
</html>