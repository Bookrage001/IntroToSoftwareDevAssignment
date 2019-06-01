<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<link href="Design/stylesheet.css" rel="stylesheet" type="text/css"/>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <title>Log in</title>

    </head>

    <body align="center">

        <div class="container">
            <header align="left">
                <div id="Logoposition">
                    <img src="Images/RaiMovieLogoBlue.png" id="Logo">
                </div>
                <div id="Search">
                    <%@include file="WEB-INF/Modules/search.jspf"%>
                </div>
            </header>
        </div>


    <content>
        <div class ="container">
            <%@include file="WEB-INF/Modules/navbar.jspf" %>
            <div id="collection"/>
        </div>
    </content>

    <div style="margin-top:10%">

        <h1>Enter your details to login: <span class="error"><c:if test="${existErr!=null}"><span class="error"><c:out value="${existErr}"/></span></c:if></span></h1>
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

        <p>Don't have an account? <font color="blue"><a href="userRegister.jsp">Register</a></font></p>
    </div>
    ${existErr = null}
</body>
</html>
