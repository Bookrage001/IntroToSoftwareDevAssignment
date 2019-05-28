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
			<td style="font-weight: bold;width:125px;">F</td>
			<td style="font-weight: bold;width:110px;">姓名</td>
			<td style="font-weight: bold;width:65px;">性别</td>
			<td style="font-weight: bold;width:120px;">生日</td>
			<td style="font-weight: bold;width:120px;">爱好</td>
			<td style="font-weight: bold;width:120px;">电子邮箱</td>
			<td style="font-weight: bold;width:120px;">联系方式</td>
			<td style="font-weight: bold;width:120px;">联系地址</td>
			<td style="font-weight: bold;width:120px;">注册时间</td>
			<td style="font-weight: bold;width:95px;">登陆次数</td>
			<td style="font-weight: bold;width:120px;">最后登陆</td>
			<td style="font-weight: bold;width:120px;">操作</td>
				</tr>
				
				<c:forEach var="user" items="${pageBean.userInfos }">
				
					<tr>
						<td><img alt="" src="${user.header }" width="55px" height="55px"></td>
						<td>${user.ID }</td>
						<td>${user.account }</td>
						<td>${user.userName }</td>
						<td>${user.sex }</td>
						<td>${user.birth }</td>
						<td>${user.hobby }</td>
						<td>${user.email }</td>
						<td>${user.phone }</td>
						<td>${user.address }</td>
						<td>${user.registTime }</td>
						<td>${user.loginCount }</td>
						<td>${user.lastLogin }</td>
						<td>
							<a href="find_UserInfo?account=${user.account }&pass=${user.pass }&pageBean.pageCode=${pageBean.pageCode }" onclick="return isUpdate()" style="color: #8968CD;font-family: 微软雅黑;">更新</a>
							<a href="move_UserInfo?ID=${user.ID }&pageBean.pageCode=${pageBean.pageCode }" onclick="return isRemove()"  style="color: #8968CD;font-family: 微软雅黑;">删除</a>
						</td>
					</tr>
				
				</table>
				


    </body>
</html>
