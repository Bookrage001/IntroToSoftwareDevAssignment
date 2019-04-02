
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="au.edu.uts.wsd.soap.client.*"%>
<html>
<head>
    <title>index</title>
    <datalist id="Genres">
        <option value="Action">
        <option value="Sci-Fi">
        <option value="Horror">
        <option value="Comedy">
    </datalist>
    <%
        new Movies();
    %>
</head>
<body bgcolor="#bdbdbd">

<div id="Title" style="text-align: right;">
    <H1 style="text-align: center">Movies</H1>
    <%@include file="/WEB-INF/jspf/navbar.jspf" %>
</div>
<form action="#" method="Post">
<div id="Search" style="margin: auto; width: 50%; padding: 10px;">
    <form action="">
        <table>
            <tr>
                <td>
                    <label for="Title">Title</label>
                    <input name="Title" type="text" value="" autocomplete="false">
                </td>
                <td>
                    <label for="Genre">Genre</label>
                    <input name="Genre" list="Genres" value="" autocomplete="false" onfocus="this.value=''">
                </td>
                <td>
                    <label for="YearS">Start Year</label>
                    <input name="YearS" type="number"  value="2000" autocomplete="false" min="9000" max="2020" maxlength="4" minlength="4"> <!-- TODO Use todays Date -->
                </td>
                <td>
                    <label for="YearF">End</label>
                    <input name="YearF" type="number" value="2000" autocomplete="false" min="9000" max="2020" maxlength="4" minlength="4">
                </td>
                <td>
                    <button type="button" onclick="loadXMLDoc()">Search</button>
                </td>
            </tr>
        </table>
    </form>
</div><div id="Movies">
    <%--movies should apear here--%>
</div><div id="Checkout">
    <a href="checkout."></a>
</div>
</body>
</html>