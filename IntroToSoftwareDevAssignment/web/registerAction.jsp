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
           
              
            
            String ID = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String firstName = request.getParameter("firstname"); 
            String lastName = request.getParameter("lastname"); 
            String address = request.getParameter("address");
            String postcode = request.getParameter("postcode");
            String suburb = request.getParameter("suburb");
            boolean alreadyExists = db.checkUser(ID);
            
           
            
            if (!vd.validateEmail(email)) {
                session.setAttribute("EmptyErr", "Email format is incorrect");
                response.sendRedirect("register.jsp");
            } else if (ID.isEmpty() || password.isEmpty() || email.isEmpty() || firstName.isEmpty() || lastName.isEmpty() || address.isEmpty() || postcode.isEmpty() || suburb.isEmpty())
            {
               session.setAttribute("EmptyErr", "One or more of the fields are empty");               
               response.sendRedirect("register.jsp");         
            }
            else  if (alreadyExists == true){
            
            
               session.setAttribute("EmptyErr", "Registered Username in Use");               
               response.sendRedirect("register.jsp");  
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
