<%-- 
    Document   : User Change Details
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Husein
--%>

<%@page import="MovieStore.Model.User"%>
<%@page import="MovieStore.Model.dao.DBManager"%>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>Home Page</title>
    </head>
    <%
        String username = (String)session.getAttribute("username");
        DBManager db = (DBManager) session.getAttribute("manager");

        String[] details = new String[3];
        details = db.getDetails(username);

    %>
    <body align="center">
        <div class="container">
            <header align="left">
                <div id="Logoposition">
                    <img src="Images/RaiMovieLogoBlue.png" id="Logo">
                </div>
            </header>
        </div>
        <div class ="container">
            <%@include file="WEB-INF/Modules/navbar.jspf" %>
        </div>
        <div style ="padding-top: 1%"> </div>
        <div name="container1" style="border: 1px solid green;width: 50%;margin:auto;background:white;padding-top:">

            <h1><%= username%></h1> 
            <h2><%= details[1]%> <%= details[2]%></h2>
            <h3>Please enter your new details</h3>
            <p>If nothing is input then details will be kept the same</p>

            <form action="updateUserAction.jsp" method="post">

                <div name="details" style="border: 1px solid green;width: 50%;margin:auto;text-align: center;">

                    <h3 >Email: </h3>
                    <p><%= details[0]%> <p><input type="text" name="email" style="width: 200px;"></p></p> 
                    <h3>Address: </h3>
                    <p><%= details[3]%> <p><input type="text" name="address" style="width: 200px;"></p></p>
                    <h3>Suburb: </h3>
                    <p><%= details[4]%> <p><input type="text" name="suburb" style="width: 200px;"></p></p>
                    <h3>Postcode:</h3>
                    <p><%= details[5]%> <p><input type="text" name="postcode" style="width: 40px;"></p><p>        

                </div>
                <% session.setAttribute("username", username);%>
                <p style="padding-bottom:5%" ><button  type="submit" value="Login">Submit</button><p>  
            </form>
            <p><c:if test="${detailsErr!=null}"><c:out value="${detailsErr}"/></c:if></p>

    </div>
</body>
<!--Script-->
<script>
    $(document).ready(function () {
        $('.order tr').click(function (event) {
            if (event.target.type !== 'checkbox') {
                $(':checkbox', this).trigger('click');
            }
        });
        $("input[type='checkbox']").change(function (e) {
            if ($(this).is(":checked")) {
                $(this).closest('tr').addClass("highlight_row");
            } else {
                $(this).closest('tr').removeClass("highlight_row");
            }
        });
    });
</script>
<jsp:include page="/ConnServlet" flush="true" />
</html>