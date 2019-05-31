<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="MovieStore.Model.dao.*"%>
<%@page import="MovieStore.controller.*"%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*" %>
<%@page import="java.sql.*"%>

 <%
     DBManager db = (DBManager) session.getAttribute("manager");
 %>


<% String msFilePath = application.getRealPath("WEB-INF");%>
<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>Home Page</title>
    <datalist id="Genres">
        <option value="Action">
        <option value="Sci-Fi">
        <option value="Horror">
        <option value="Comedy">
    </datalist>
</head>
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
<body align="center">
    <div class="container">
        <header align="left">
            <div id="Logoposition">
                <img src="Images/RaiMovieLogoBlue.png" id="Logo">
            </div>

            <div id="Search">
                <%@include file="WEB-INF/Modules/search.jspf"%>
            </div>
    </div>
</header>
</header>

<content>
    <div class ="container">
        <%@include file="WEB-INF/Modules/navbar.jspf" %>
        <div id="collection">
            <div id="users" align="center">
                <%@include file="WEB-INF/Modules/searchUser.jspf" %>
            </div>
        </div>
    </div>
</content>
</body>
<jsp:include page="/ConnServlet" flush="true" />
</html>