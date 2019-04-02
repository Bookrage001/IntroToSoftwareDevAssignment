<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Landing Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    
    <body>
        <h1 align="center">Main Page</h1>
        <%@include file="/WEB-INF/jspf/navbar.jspf" %>
        <h3 align="center">Order History</h3>
        <table width="100%">
            <thead>
                <tr>
                    <th width="10%">Order ID</th>
                    <th width="60%">Movies</th>
                    <th width="10%">Cost</th>
                    <th width="10%">Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
