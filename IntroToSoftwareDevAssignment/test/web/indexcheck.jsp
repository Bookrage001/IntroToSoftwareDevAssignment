<%-- 
    Document   : indexcheck.jsp
    Created on : Apr 14, 2019, 12:14:09 PM
    Author     : Supercheap Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="db" class="Bean.DBBean" scope="page" />
<%
    request.setCharacterEncoding("UTF-8");
    String username=(String)request.getParameter("username");
    String password=(String)request.getParameter("password");
    String sql="select * from login where username="+"'"+username+"'";
    ResultSet rs=db.executeQuery(sql);
    if(rs.next())
    {

        if(password.equals(rs.getObject("password"))){
            response.sendRedirect("loginsuccess.jsp");
        }
        else{
            out.print("<script language='javaScript'> alert('wrong password');</script>");
            response.setHeader("refresh", "0;url=login.jsp");
        }
    }
    else 
    {
        out.print("<script language='javaScript'> alert('wrong username——else');</script>");
        response.setHeader("refresh", "0;url=login.jsp");
    }
    
%>
</body>
</html>
