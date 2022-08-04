<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h1 align="center">User Login</h1>
	<div id="root">
		<div id="form" align="center">
			<table>
				<form:form action="checkcuserlogin" method="post"
					modelAttribute="users">
					<tr>
						<div>
							<td><label for="userName">User Name</label></td>
							<div>
								<td><form:input path="userName" class="form-control" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userPassword">User Password</label></td>
							<div>
								<td><form:input path="userPassword" class="form-control" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td colspan="5" align="center"><br> <form:button>Login</form:button></td>
						</div>
					</tr>
				</form:form>
			</table>
</body>
</html>