<%-- 
    Document   : userLog
    Created on : 23/05/2019, 4:52:37 PM
    Author     : Hayley
--%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.Model.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/demo.css"> 
        <script type="text/javascript" src="js/script.js"></script>
        <title>Main Page</title>
    </head>
    <%
        String log;
                
        User user = (User) session.getAttribute("user");

        if (user != null) {
            log = " &lt " + user.getFirstname() + " &gt";
        } else {

            log = " &lt " + "Guest User" + " &gt";
        }
        DBManager db = (DBManager) session.getAttribute("manager");
        db.showActivity();

    %>
    <body>
        <h2 class="outline">User Log</h2> 
        <table width="100%" >
            <tr bgcolor="lightgrey" ><td align="right" class="outline">You are logged in as  <%=log%></td></tr>
            <tr><td align="right">
                    <%if (user != null) { %>
                    <u><a class="link" href="edit_user.jsp">Account</a></u> 
                        <%} else { %>
                    <u><a class="link" href="register.jsp">Register</a></u>
                        <%}%>
                    &emsp;<u><a class="link" href="logout.jsp">Logout</a></u>
                </td>
            </tr>                  
        </table>        
        <hr>
        <% if (user != null) { %>
        <table class="account">
            <thead class="h">
                <tr>
                    <td class="a">Log ID</td>
                    <td class="a">Username</td>
                    <td class="a">Status</td>
                    <td class="a">Activity</td>
                </tr>
            </thead>
            <tbody >
                <tr>
                    <td class="a">${log.logid}</td>
                    <td class="a" >${user.username}</td>
                    <td class="a">${log.status}</td>
                    <td class="a">${log.activity}</td>
                </tr>
            </tbody>
        </table>
        <% session.setAttribute("user", user); %>
        <%}else{ %>
        <p class="outline">Welcome Guest Student</p>
        <%}%>
    </body>
</html>
