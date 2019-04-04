<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : caleb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html"%>
<%@ page import="java.io.*" %>
<% String msFilePath = application.getRealPath("WEB-INF");%>
<link rel="stylesheet" href="styles.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>index</title>
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
<body bgcolor="#bdbdbd">
    <div id="Title" style="text-align: right;">
        <h1>Movies</h1>
        <%@include file="/Modules/navbar.jspf" %>
    </div>
    <div id="Search" style="margin: auto; width: 50%; padding: 10px;">
        <form action="index.jsp" method="Post" id="MovieSearch">
            <table>
                <tr>
                    <td align="center">
                        <label for="Title">Title
                            <input name="Title" type="text" value="" autocomplete="false">
                            </td>
                            <td align="center">
                                <label for="Genre">Genre
                                    <select name="Genre">
                                        <option value="" name=""></option>
                                        <option value="Action" name="Action">Action</option>
                                        <option value="Sci-Fi" name="Sci-Fi">Sci-Fi</option>
                                        <option value="Horror" name="Horror">Horror</option>
                                        <option value="Comedy" name="Comedy">Comedy</option>
                                    </select>
                                </label>
                            </td>
                    </td>
                    <td align="center">
                        <label for="YearS">Start Year
                            <input name="YearS" type="number"  value="" autocomplete="false" min="1900" max="2020" maxlength="4" minlength="4">
                        </label>
                    </td>
                    <td align="center">
                        <label for="YearF">End
                            <input name="YearF" type="number" value="" autocomplete="false" min="1900" max="2020" maxlength="4" minlength="4"> <!-- TODO Use todays Date -->
                        </label>
                    </td>
                    <td style="vertical-align: bottom">
                        <button>Search</button>
                    </td>
                </tr>
            </table>
        </form>
    </div><div id="Movies">
        <%--movies should apear here--%>

</body>
</html>
