<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body {
	background-image:
		url("https://s3u.tmimgcdn.com/800x0/2267756-1594645219236_8.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	color: #4F311C;
}

label {
	color: White;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#userName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#userPassword {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#role {
	width: 260px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
	color: blue;
}

.box {
	width: 400px;
	height: 240px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background: linear-gradient(110deg, #fdcd3b 60%, #ffed4b 60%);
}

</style>
</head>
<body>
	<h1 align="center">User Login</h1>
	<br>
	<div id="root" class="box">
		<div id="form" align="center">
			<table width="100% ellpadding="10>
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
							<td><label for="userPassword">Password</label></td>
							<div>
								<td><form:input type="password" path="userPassword"
										class="form-control" /></td>
							</div>
						</div>
						<br>
					</tr>
					<tr>
						<div>
							<td><label for="userRole">Role</label></td>
							<div>
								<td><form:select path="userRole">
										<form:errors path="userRole" />
										<form:option value="admin">Admin</form:option>
										<form:option value="user">User</form:option>
									</form:select></td>
							</div>
						</div>

						<br>
					</tr>
					<tr>
						<div>
							<td colspan="5" align="center"><br> <form:button
									id="log">Login</form:button></td>
						</div>
					</tr>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>
