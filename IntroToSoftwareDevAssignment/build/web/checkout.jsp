<%@page import="uts.wsd.oms.Movie"%>
<%@page import="java.util.*"%>
<%@page import="uts.wsd.oms.Order"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String filePath = application.getRealPath("WEB-INF/order.xml");%>
<jsp:useBean id="cartController" class="uts.wsd.oms.CartController" scope="application">
    <jsp:setProperty name="cartController" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
<% String msFilePath = application.getRealPath("WEB-INF");%>
<jsp:useBean id="movieStoreApp" class="uts.wsd.oms.MovieStoreApplication" scope="application">
    <jsp:setProperty name="movieStoreApp" property="filePath" value="<%=msFilePath%>"/>
</jsp:useBean>
<%
    String xmlPath = "WEB-INF\\order.xml";
    String xslPath = "xsl/cart.xsl";
    User user = (User) session.getAttribute("user");
    Order order;
    if(cartController.getOrder() == null || cartController.getOrder().getOrderID() == 0)
    {
        order = cartController.createOrder();
    }
    if(user != null)
            cartController.setOrderUser(user);
    ArrayList<String> paramNames = Collections.list(request.getParameterNames());
    for (String param : paramNames) {
        if (param.contains("Checkout")) {
            Movie movie = movieStoreApp.getMovie(param);
            if(movie != null)
                cartController.addMovie(movieStoreApp, movie);
        } 
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>

    <body>
        <c:import url="<%=xmlPath%>"  var="inputDoc" />

        <c:import url="<%=xslPath%>" var="stylesheet" />

        <h1 align="center">Checkout Page</h1>
        <%@include file="/WEB-INF/jspf/navbar.jspf" %>

        <x:transform xml="${inputDoc}" xslt="${stylesheet}">
            <x:param name="emailError" value="<%=session.getAttribute("emailError")%>" />
            <x:param name="firstNameError" value="<%=session.getAttribute("firstNameError")%>" />
            <x:param name="lastNameError" value="<%=session.getAttribute("lastNameError")%>" />
        </x:transform>
        <%
            session.removeAttribute("emailError");
            session.removeAttribute("firstNameError");
            session.removeAttribute("lastNameError");
        %>
    </body>
</html>
