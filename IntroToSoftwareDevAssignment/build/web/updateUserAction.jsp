<%-- 
    Document   : updateUserAction
    Created on : 31/05/2019, 4:32:53 PM
    Author     : Husein
--%>

<%@page import="MovieStore.controller.Validator"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User Action Page</title>
    </head>
    <body>

        <%
            //Activate the database search-validate once DBManager functions are completed
            DBManager db = (DBManager) session.getAttribute("manager");
            Validator vd = new Validator();

            String username = session.getAttribute("username").toString();

            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String postcode = request.getParameter("postcode");
            String suburb = request.getParameter("suburb");

            if (!vd.validateEmail(email) || !vd.validatePostcode(postcode)) {
                session.setAttribute("detailsErr", "One or more of the fields you entered are invalid");
                response.sendRedirect("userChangeDetails.jsp");
            } else {
                db.updateUser(username, email, address, postcode, suburb);
                response.sendRedirect("userMyAccount.jsp");

            }
            //addUser(String ID, String email, String password, String firstName, String lastName,String address, String postcode, String suburb)


        %>

    </body>
</html>
