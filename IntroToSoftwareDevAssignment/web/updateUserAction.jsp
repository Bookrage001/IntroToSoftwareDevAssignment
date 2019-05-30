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
            Validator vd = new Validator();
           
              
            
            String username = session.getAttribute("username").toString();
           
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String postcode = request.getParameter("postcode");
            String suburb = request.getParameter("suburb");
         
           
            
           if (!vd.validateEmail(email) || !vd.validatePostcode(postcode)) {
                session.setAttribute("detailsErr", "One or more of the fields you entered are invalid");
               response.sendRedirect("changedetails.jsp");
            } 
           
            else
                    {
                            db.updateUser(username, email, address, postcode, suburb);
            response.sendRedirect("MyAccount.jsp"); 
                        
                    }
            //addUser(String ID, String email, String password, String firstName, String lastName,String address, String postcode, String suburb)
          
                       
        %>
        
    </body>
</html>
