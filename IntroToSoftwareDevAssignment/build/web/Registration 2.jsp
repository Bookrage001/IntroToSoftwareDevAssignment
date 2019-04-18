<%-- 
    Document   : Registration 1
    Created on : 15/04/2019, 12:38:54 PM
    Author     : husei
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link  rel="stylesheet" href="css/stylesheet.css">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style="margin-top:5%"></div>
         <div id="Logoposition">
        <img src="Images/RaiMovieLogoBlue.png" id="Logo">
    </div>
        <div style="margin-top:5%"></div>
   
      
          <div id="rBorder">
                    <form>

                        <h1>Registration</h1>
                        
      <div style="margin-top:10%"></div>
      <table id="registertable">
          <table style="width:100%">
              <tr>
                  <td>First Name: <input type="text" name="FirstName"> Last Name: <input type="text" name="LastName"> </td>
                  
              </tr>
          </table>
          <table style="width:100%;margin-top:20px">
              <tr>
                  <td>Address: <input type="text" name="Address" style="width:80%"> </td>
              </tr>
             </table>
          <table style="width:100%">
           <tr>
                  <td>Post Code:<input type="text" name="PostCode" style="width:50px"> Suburb:<input type="text" name="username"> </td>
              </tr>
          </table>
          
          <table style="width:100%;margin-top:20px">
              <td>Email:<input type="text" name="Email"> </td>
              
          </table>
      </form>
              <div style="margin-bottom:5%"></div>
              <button type="button" style="margin-top:20px;height:40px">Register!</button>
              <div style="margin-bottom:5%"></div>
        </div>
      
      
      <p>Already have a username/password?</p>
      <p> <font color=blue>Return to login page</p>
    </body>
</html>
