<%-- 
    Document   : login
    Created on : Apr 14, 2019, 11:35:09 AM
    Author     : Supercheap Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>welcome</title>
</head>
<body>
    <center>
        <h1 style="color:red">Login</h1>
            <form id="indexform" name="indexForm" action="logincheck.jsp" method="post">
                <table border="0">
                    <tr>
                        <td>username：</td>
                        <td><input type="text" name="username"></td>
                    </tr>
                    <tr>
                        <td>password：</td>
                        <td><input type="password" name="password">
                        </td>
                    </tr>
                </table>
            <br>
                <input type="submit" value="login" style="color:#BC8F8F">
            </form>
            <form action="zhuce.jsp">
                <input type="submit" value="register" style="color:#BC8F8F">
            </form>
    </center>
</body>
    
</html>
