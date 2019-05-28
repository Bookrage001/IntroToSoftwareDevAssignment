<%-- 
    Document   : index
    Created on : 04/04/2019, 12:32:01 PM
    Author     : Sean
--%>
<%@page import="java.util.*"%>
<%@page import="MovieStore.Model.*"%>
<%@page import="MovieStore.Model.dao.*"%>
<jsp:include page="/ConnServlet" flush="true" />
<%@ page pageEncoding="UTF-8" contentType="text/html" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="css/stylesheet.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
<html>
    <head>
        <title>Home Page</title>
    </head>
    <body align="center">
        <div class="container">
            <div id="header">
                <div id="Logoposition">
                    <img src="Images/RaiMovieLogoBlue.png" id="Logo">
                </div>
                <%@include file="WEB-INF/Modules/search.jspf"%>
            </div>
        </div>
    <content>
        <div class ="container">
            <%@include file="WEB-INF/Modules/navbar.jspf" %>
            <div id="collection">
                <div id="refine">
                    <%@include file="WEB-INF/Modules/filter.jspf" %>
                </div>
                <div id="movies">
                    <c:set var="Movies">
                        <Movies>
                            <%
                                //Add new session for all books
                                DBManager db = (DBManager) session.getAttribute("manager");
                                ArrayList<Movie> list = db.getMovies();
                                for (Movie movies : list) {
                                    request.setAttribute("movies", movies);
                            %>
                            <movie id="${movies.ID}">
                                <title>${movies.title}</title>
                                <price>${movies.price}</price>
                            </movie>
                            <%}%>

                        </Movies>
                    </c:set>

                    <c:import url="WEB-INF/Data/movies.xsl" var="moviesxslt"/>
                    <x:transform xml="${Movies}" xslt="${moviesxslt}"/>
                </div>
            </div>
        </div>
    </content>
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