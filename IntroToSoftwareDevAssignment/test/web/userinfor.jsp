<%-- 
    Document   : userinfor
    Created on : May 28, 2019, 12:54:32 PM
    Author     : Supercheap Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserInfor</title>
    </head>
    <body>
        <table id="table_css" style="border: 5px solid #EAEAEA; margin: auto;border-collapse: collapse;">
				<tr>
			
			<td style="font-weight: bold;width:90px;">UserName</td>
			<td style="font-weight: bold;width:125px;">Password</td>
			<td style="font-weight: bold;width:110px;">Email</td>
			<td style="font-weight: bold;width:65px;">Gender</td>
			
			
			        </tr>
				
				<c:forEach var="user" items="${pageBean.userInfos }">
				
					<tr>
						<td><img alt="" src="${user.header }" width="55px" height="55px"></td>
						
						<td>${user.userName }</td>
						<td>${user.password }</td>
						<td>${user.email }</td>
						<td>${user.gender }</td>
						<td>${user.email }</td>
						
						<td>
							<a href="find_UserInfo?account=${user.name }&pass=${user.pass }&pageBean.pageCode=${pageBean.pageCode }" onclick="return isUpdate()" style="color: #8968CD;font-family: Arial;">update</a>
							<a href="move_UserInfo?ID=${user.ID }&pageBean.pageCode=${pageBean.pageCode }" onclick="return isRemove()"  style="color: #8968CD;font-family: Arial;">delate</a>
						</td>
					</tr>
				
				</table>
				


    </body>
</html>
