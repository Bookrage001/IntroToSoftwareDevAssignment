<%-- 
    Document   : Registration 1
    Created on : 15/04/2019, 12:38:54 PM
    Author     : husei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<link href="Design/stylesheet.css" rel="stylesheet" type="text/css"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>    
       
        <div style="margin-top:5%"></div>
        <h1>Enter your details to Register: </h1>
        <div id="Logoposition">
            <img src="Design/Images/RaiMovieLogoBlue.png" class="SigninLogo">
        </div>
        <div>
            <form action="registerAction.jsp" method="POST">
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
                                Password: <input type="password" name="password">
                            </td>
                            <td>
                                Confirm password: <input type="password" name="ConfirmPassword">
                            </td>
                        </tr>
                    </table>

                </table>
                <table align="center">
                    <tr>
                        <td>First Name: <input type="text" name="firstname"> Last Name: <input type="text" name="lastname"> </td>

                    </tr>
                </table>
                <table align="center">
                    <tr>
                        <td>Address: <input type="text" name="address"> </td>
                        <td>Post Code:<input type="text" maxlength="4" name="postcode"  style="width:50px"> 
                        <td>Suburb:<input type="text" name="suburb" style="width: 60px"> </td>
                    </tr>
                </table>
                <br>
                <br>
                <tr>
                    <td></td><td><input type="submit" value="Register"</td>
                </tr> 
            </form>
            <p><c:if test="${EmptyErr!=null}"><c:out value="${EmptyErr}"/></c:if></p>
           
        
        </div>


        <p>Already have a username/password?</p>
        <p> <font color=blue><a href="login.jsp">Return to login page</a></p>
        
    </body>
</html>