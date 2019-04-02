<%@page import="java.util.List"%>
<%@page import="uts.wsd.oms.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String filePath = application.getRealPath("WEB-INF");%>
<jsp:useBean id="movieStoreApp" class="uts.wsd.oms.MovieStoreApplication" scope="application">
    <jsp:setProperty name="movieStoreApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<%
    Users users = movieStoreApp.getUsers();
    User user = (User) session.getAttribute("user");
    History history = movieStoreApp.getHistory();
    List<Order> orders = history.getOrdersByParams(null, user.getEmail(), null, null);

    String firstName = "";
    String lastName = "";
    String email = "";
    String password = "";
    String phoneNo = "";
    String address = "";
    String city = "";
    String state = "";
    String postCode = "";
    int test = 0;

    boolean test2 = true;
    boolean registerError = false;
    boolean doesUserExist = false;
    boolean validFirstName = true;
    boolean validLastName = true;
    boolean validEmail = true;
    boolean validPassword = true;
    boolean validPhone = true;
    boolean validCity = true;
    boolean validPostCode = true;

    if (request.getParameter("Update") != null) {
        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        email = request.getParameter("email");
        password = request.getParameter("password");
        phoneNo = request.getParameter("phoneNo");
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
            if (users.getUser(email) == null || users.getUser(email) == user) {
                movieStoreApp.editUser(user, firstName, lastName, email, password, phoneNo, address, city, state, postCode);
            } else {
                doesUserExist = true;
            }
        } else {
            registerError = true;
        }
    } else if (request.getParameter("Delete") != null) {
        for (Order order : orders) {
            movieStoreApp.cancelOrder(order.getOrderID());
        }
        
        
        //movieStoreApp.cancelOrder(101);
        users.removeUser(user);
        movieStoreApp.updateUsers(users);
        response.sendRedirect("logout.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Account</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <h1>Edit Account</h1>

        <%@include file="/WEB-INF/jspf/navbar.jspf" %>

        <form action="" method="post">
            <table>
                <tbody>
                    <tr>
                        <td><label for="firstName">First Name:</label></td>
                        <td><input name="firstName" id="firstName" type="text" value="${user.getFirstName()}" ></td>
                            <% if (!validFirstName) { %>
                        <td class="validation">Invalid name</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="lastName">Last Name:</label></td>
                        <td><input name="lastName" id="lastName" type="text" value="${user.getLastName()}"></td>
                            <% if (!validLastName) { %>
                        <td class="validation">Invalid name</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input name="email" id="email" type="email" value="${user.getEmail()}"></td>
                            <% if (!validEmail) { %>
                        <td class="validation">Invalid email format</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="password">Password:</label></td>
                        <td><input name="password" id="password" type="password" ></td>
                            <% if (!validPassword) { %>
                        <td class="validation">Invalid password format</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="phoneNo">Phone Number:</label></td>
                        <td><input name="phoneNo" id="phoneNo" type="number" value="${user.getPhoneNo()}"></td>
                            <% if (!validPhone) { %>
                        <td class="validation">Invalid phone number</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for="address">Address:</label></td>
                        <td><input name="address" id="address" type="text" value="${user.getAddress()}"></td>
                    </tr>
                    <tr>
                        <td><label for="city">City:</label></td>
                        <td><input name="city" id="city" type="text" value="${user.getCity()}"></td>
                            <% if (!validCity) { %>
                        <td class="validation">Invalid city</td>
                        <%}%>
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
                        <td><input name="postCode" id="postCode" type="number" value="${user.getPostCode()}"></td>
                            <% if (!validPostCode) { %>
                        <td class="validation">Invalid post code</td>
                        <%}%>
                    </tr>
                    <tr>
                        <td><label for=""></label></td>
                <form action="" method="post">
                        <td><input name="Update" type="submit" value="Update"></td>
                        <td><input name="Delete" type="submit" value="Delete Account"</td>
                </form>
                    </tr>
                </tbody>
            </table>
        </form>
        <% if (registerError) { %>
        <p class="validation">Entered information incorrect. See error messages</p>
        <%}%>
        <% if (doesUserExist) { %>
        <p class="validation">User with email already exists</p>
        <%}%>
        <% if (test2) {%>
        <p><%=test%></p>
        <%}%>
    </body>
</html>