<%@page import="uts.wsd.oms.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String filePath = application.getRealPath("WEB-INF");%>
<jsp:useBean id="movieStoreApp" class="uts.wsd.oms.MovieStoreApplication" scope="application">
    <jsp:setProperty name="movieStoreApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%
    String firstName = "";
    String lastName = "";
    String email = "";
    String password = "";
    String phoneNo = "";
    String address = "";
    String city = "";
    String state = "";
    String postCode = "";

    boolean registerError = false;
    boolean doesUserExist = false;
    boolean validFirstName = true;
    boolean validLastName = true;
    boolean validEmail = true;
    boolean validPassword = true;
    boolean validPhone = true;
    boolean validCity = true;
    boolean validPostCode = true;

    if (request.getParameter("register") != null) {
        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        email = request.getParameter("email");
        password = request.getParameter("password");
        phoneNo = request.getParameter("phoneNo");
        address = request.getParameter("address");
        city = request.getParameter("city");
        state = request.getParameter("state");
        postCode = request.getParameter("postCode");

        validFirstName = movieStoreApp.validateName(firstName);
        validLastName = movieStoreApp.validateName(lastName);
        validEmail = movieStoreApp.validateEmail(email);
        validPassword = movieStoreApp.validatePassword(password);
        validPhone = movieStoreApp.validatePhoneNo(phoneNo);
        validCity = movieStoreApp.validateCity(city);
        validPostCode = movieStoreApp.validatePostCode(postCode);

        if (validFirstName && validLastName && validEmail && validPassword && validPhone && validCity && validPostCode) {
            User user = new User(firstName, lastName, email, password, phoneNo, address, city, state, postCode);
            if (movieStoreApp.registerUser(user)) {
                session.setAttribute("user", user);
                response.sendRedirect("main.jsp");
            } else {
                doesUserExist = true;
            }
        } else {
            registerError = true;
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Register</h1>

        <%@include file="/WEB-INF/jspf/navbar.jspf" %>
        <% if (registerError) { %>
        <p class="validation">Entered information incorrect. See error messages</p>
        <%}%>
        <% if (doesUserExist) { %>
        <p class="validation">User with email already exists</p>
        <%}%>
        <form action="" method="post">
            <table id="userDetailsTable">
                <tbody>
                    <tr>
                        <td><label for="firstName">First Name:</label></td>
                        <td><input name="firstName" type="text" value="<%=firstName%>" ></td>
                            <% if (!validFirstName) { %>
                        <td class="validation">Invalid name (only letters allowed)</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="lastName">Last Name:</label></td>
                        <td><input name="lastName" type="text" value="<%=lastName%>"></td>
                            <% if (!validLastName) { %>
                        <td class="validation">Invalid name (only letters allowed)</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input name="email" type="email" value="<%=email%>"></td>
                            <% if (!validEmail) { %>
                        <td class="validation">Invalid email format</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td><input name="password" type="password"></td>
                            <% if (!validPassword) { %>
                        <td class="validation">Invalid password format (minimum 8 characters and only alphanumeric characters allowed)</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="phoneNo">Phone Number:</label></td>
                        <td><input name="phoneNo" type="text" value="<%=phoneNo%>"></td>
                            <% if (!validPhone) { %>
                        <td class="validation">Invalid phone number (10 digits required)</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="address">Address:</label></td>
                        <td><input name="address" type="text" value="<%=address%>"></td>
                    </tr>
                    <tr>
                        <td><label for="city">City:</label></td>
                        <td><input name="city" type="text" value="<%=city%>"></td>
                            <% if (!validCity) { %>
                        <td class="validation">Invalid city (only letters allowed)</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="state">State:</label></td>
                        <td><select name="state">
                                <option value="nsw" <%= state.equals("nsw") ? "selected" : ""%>>NSW</option>  
                                <option value="qld" <%= state.equals("qld") ? "selected" : ""%>>QLD</option>
                                <option value="sa" <%= state.equals("sa") ? "selected" : ""%>>SA</option>
                                <option value="wa" <%= state.equals("wa") ? "selected" : ""%>>WA</option>
                                <option value="vic" <%= state.equals("vic") ? "selected" : ""%>>VIC</option>
                                <option value="act" <%= state.equals("act") ? "selected" : ""%>>ACT</option>
                                <option value="nt" <%= state.equals("nt") ? "selected" : ""%>>NT</option>
                                <option value="tas" <%= state.equals("tas") ? "selected" : ""%>>TAS</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="postCode">Postcode:</label></td>
                        <td><input name="postCode" type="text" value="<%=postCode%>"></td>
                            <% if (!validPostCode) { %>
                        <td class="validation">Invalid post code (4 digits required)</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for=""></label></td>
                        <td><input name="register" type="submit" value="Register"></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
