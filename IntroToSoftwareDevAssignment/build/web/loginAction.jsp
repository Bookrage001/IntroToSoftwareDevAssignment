<%-- 
    Document   : loginAction
    Created on : Aug 11, 2018, 9:34:47 PM
    Author     : George
--%>

<%@page import="uts.isd.model.dao.*"%>
<%@page import="uts.isd.controller.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action Page</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
            DBConnector connector = new DBConnector(); //Create a connection and initialize DB conn-field
            Connection conn = connector.openConnection(); //Get the protected connection instance from DB superclass to share for the application classes
            DBManager db = new DBManager(conn); //DBManger instance provide users with access to CRUD operations
            
            String ID = request.getParameter("username");
            String password = request.getParameter("password");
            boolean alreadyExists = db.findUser(ID);
            if (ID.isEmpty() || password.isEmpty() || email.isEmpty() || firstName.isEmpty() || lastName.isEmpty() || address.isEmpty() || postcode.isEmpty() || suburb.isEmpty())
            {
                response.sendRedirect("register_fields empty.jsp");
            }
            else 
            if (alreadyExists == true){
            
            response.sendRedirect("register_Username_in_use.jsp");
            
            }
            else
                    {
                            db.addUser(ID, password, email,firstName,lastName,address,postcode,suburb);
            response.sendRedirect("login.jsp"); 
                        
                    }
            //addUser(String ID, String email, String password, String firstName, String lastName,String address, String postcode, String suburb)
          
                       
        %>
        
    </body>
</html>
