<%-- 
    Document   : register
    Created on : Apr 15, 2019, 12:28:31 PM
    Author     : Supercheap Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body bgcolor="#f2f2f2">

        <div style="background-color: #C18C5D">
            <img src="Images/RaiMovieLogo.png" height="115.25" width="320" style="padding:20px;padding-left: 50px;">
        </div>
        <div id="Title" style="text-align: right;background-color: #C18C5D">
            <%@include file="/Modules/navbar.jspf" %>
        </div>
        
        
        
         <div align="center"> 
            <h2>Register a new account</h2>
            <form method="post" action="RegisterAction.jsp">
                <table>
                    <tr>
                        <td><label>Username</label></td>
                        <td><input type="text" name="username" placeholder="Username" required></td>
                    </tr>
                    <tr>
                        <td><label>First name</label></td>
                        <td><input type="text" name="fisrstname" placeholder="Firstname" required></td>
                    </tr>
                    <tr>
                        <td><label>Last name</label></td>
                        <td><input type="text" name="lastname" placeholder="Lastname" required></td>
                    </tr>
                    <tr>
                        <td><label>Email</label></td>
                        <td><input type="text" name="email" placeholder="Email" required></td>
                    </tr>
                    <tr>
                        <td><label>Address</label></td>
                        <td><input type="text" name="address" placeholder="Address" required></td>
                    </tr>
                    <tr>
                        <td><label>Contact Number</label></td>
                        <td><input type="password" name="ContactNum" placeholder="ContactNum" required></td>
                    </tr>
                    <tr>
                        <td><input class="button" type="submit" value="Register"></td>
                    </tr>
                    
                </table>            
            </form>
        </div>
       
        
    </body>>
        
        
</html>>
    

