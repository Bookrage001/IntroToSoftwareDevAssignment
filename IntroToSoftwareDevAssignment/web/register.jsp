<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Register</h1>
        <form action="main.jsp" _lpchecked="1" method="post">
    <table>
        <tbody>
            <tr>
            <td><label for="firstName">First Name:</label></td>
            <td><input name="firstName" id="firstName" type="text"></td>
        </tr>
        <tr>
            <td><label for="lastName">Last Name:</label></td>
            <td><input name="lastName" id="lastName" type="text"></td>
        </tr>
        <tr>
            <td><label for="email">Email:</label></td>
            <td><input name="email" id="email" type="email"></td>
        </tr>
        <tr>
            <td><label for="password">Password:</label></td>
            <td><input name="password" id="password" type="password"></td>
        </tr>
        <tr>
            <td><label for="phoneNo">Phone Number:</label></td>
            <td><input name="phoneNo" id="phoneNo" type="tel" pattern="[0-9]{10}"></td>
        </tr>
        <tr>
            <td><label for="address">Address:</label></td>
            <td><input name="address" id="address" type="text"></td>
        </tr>
        <tr>
            <td><label for="city">City:</label></td>
            <td><input name="city" id="city" type="text"></td>
        </tr>
        <tr>
            <td><label for="state">State:</label></td>
            <td><select name="state" id="state">
                    <option value="nsw">NSW</option>  
                    <option value="qld">QLD</option>
                    <option value="sa">SA</option>
                    <option value="wa">WA</option>
                    <option value="vic">VIC</option>
                    <option value="act">ACT</option>
                    <option value="nt">NT</option>
                    <option value="tas">TAS</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><label for="postCode">Postcode:</label></td>
            <td><input name="postCode" id="postCode" type="number" pattern="[0-9]{4}"></td>
        </tr>
        <tr>
            <td><label for=""></label></td>
            <td><input name="" type="submit" value="Register"></td>
        </tr>

        </tbody>
    </table>
</form>
    </body>
</html>
