<%--
Document : RegisterAction
Created on : Aug 11, 2018, 9:34:47 PM
Author : George
--%>

<%@page import="MovieStore.controller.Validator"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<title>Register Action Page</title>
<%
    //Activate the database search-validate once DBManager functions are completed
        
    DBManager db = (DBManager) session.getAttribute("manager"); //DBManger instance provide users with access to CRUD operations
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
        
    if (!vd.validateEmail(email) || !vd.validatePostcode(postcode)) {
        session.setAttribute("EmptyErr", "One or more of the fields you entered are invalid");
        response.sendRedirect("userRegister.jsp");
    } else if (ID.isEmpty() || password.isEmpty() || email.isEmpty() || firstName.isEmpty() || lastName.isEmpty() || address.isEmpty() || postcode.isEmpty() || suburb.isEmpty()) {
        session.setAttribute("EmptyErr", "One or more of the fields are empty");            
        response.sendRedirect("userRegister.jsp");            
    } else if (alreadyExists == true) {
            
        session.setAttribute("EmptyErr", "Registered Username in Use");            
        response.sendRedirect("userRegister.jsp");            
    } else {
        db.addUser(ID, password, email, firstName, lastName, address, postcode, suburb);
        session.setAttribute("RegisterSuccessNotification", "Account was registered successfully");            
        response.sendRedirect("login.jsp");            
            
    }
    //addUser(String ID, String email, String password, String firstName, String lastName,String address, String postcode, String suburb)
        

%>

</body>
