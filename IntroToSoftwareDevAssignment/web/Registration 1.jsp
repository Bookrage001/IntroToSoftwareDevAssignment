<%-- 
    Document   : Registration 1
    Created on : 15/04/2019, 12:38:54 PM
    Author     : husei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link  rel="stylesheet" href="css/stylesheet.css">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin-top:5%"></div>
        <div id="Logoposition">
            <img src="Images/RaiMovieLogoBlue.png" class="SigninLogo">
        </div>
        <div>
            <form>
                <h1>Registration</h1>
                <table align="center">
                    <tr>
                        <td>
                            Username: <input type="text" name="username">
                        </td>
                        <td>Email: <input type="text" name="Email"> </td>
                    </tr>
                    <table align="center">
                    <tr>
                        <td>
                            Password: <input type="text" name="Password">
                        </td>
                        <td>
                            Confirm password: <input type="text" name="ConfirmPassword">
                        </td>
                    </tr>
                    </table>

                </table>
                    <table align="center">
                        <tr>
                            <td>First Name: <input type="text" name="FirstName"> Last Name: <input type="text" name="LastName"> </td>

                        </tr>
                    </table>
                    <table align="center">
                        <tr>
                            <td>Address: <input type="text" name="Address"> </td>
                            <td>Post Code:<input type="text" name="PostCode" style="width:50px"> 
                                <td>Suburb:<input type="text" name="username" style="width: 60px"> </td>
                        </tr>
                    </table>
            </form>
            <button class="Registerbtn">Next</button>
        </div>


        <p>Already have a username/password?</p>
        <p> <font color=blue>Return to login page</p>
    </body>
</html>
