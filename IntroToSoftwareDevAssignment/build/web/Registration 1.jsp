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
                            Username :
                        </td>
                        <td>
                            <input type="text" name="username">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password :
                        </td>
                        <td>
                            <input type="text" name="Password">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Confirm password :
                        </td>
                        <td>
                            <input type="text" name="ConfirmPassword">
                        </td>
                    </tr>

                </table>

            </form>
            <button class="Registerbtn">Next</button>
        </div>


        <p>Already have a username/password?</p>
        <p> <font color=blue>Return to login page</p>
    </body>
</html>
