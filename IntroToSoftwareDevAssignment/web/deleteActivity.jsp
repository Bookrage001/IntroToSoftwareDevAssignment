<%-- 
    Document   : deleteActivity
    Created on : 29/05/2019, 7:05:57 PM
    Author     : Hayley
--%>

<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page import="MovieStore.Model.UserActivity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleted Activity</title>
    </head>
    <body>
        <%  
            UserActivity activity = (UserActivity) session.getAttribute("activity");
            
            DBManager db = (DBManager)session.getAttribute("manager");
            db.deleteActivity(activity.getLogId());
            
        %>

    </body>
</html>
