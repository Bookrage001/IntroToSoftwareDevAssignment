<%-- 
    Document   : customerInfor
    Created on : May 28, 2019, 5:44:52 PM
    Author     : Supercheap Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <table id="table_css" style="border: 5px solid #EAEAEA; margin: auto;border-collapse: collapse;">
				<tr>
					<td style="font-weight: bold;width:90px;">username</td>
					<td style="font-weight: bold;width:90px;">password</td>
					<td style="font-weight: bold;width:125px;">gender</td>
					<td style="font-weight: bold;width:110px;">email</td>
					
				</tr>
				
				<c:forEach var="user" items="${pageBean.userInfos }">
				
					<tr>
						<td><img alt="" src="${user.header }" width="55px" height="55px"></td>
						<td>${user.ID }</td>
						<td>${user.account }</td>
						<td>${user.userName }</td>
						<td>${user.gender }</td>
						<td>${user.birth }</td>
						<td>${user.hobby }</td>
						<td>${user.email }</td>
					
						<td>
							<a href="find_UserInfo?account=${user.account }&pass=${user.pass }&pageBean.pageCode=${pageBean.pageCode }" onclick="return isUpdate()" style="color: #8968CD;font-family: 微软雅黑;">update</a>
							<a href="move_UserInfo?ID=${user.ID }&pageBean.pageCode=${pageBean.pageCode }" onclick="return isRemove()"  style="color: #8968CD;font-family: 微软雅黑;">delate</a>
						</td>
					</tr>
				
				</c:forEach>
				
			</table>

</html>
