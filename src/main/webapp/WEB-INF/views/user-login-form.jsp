<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
Body {
	font-family: Calibri, Helvetica, sans-serif;
	background-color: pink;
}

button {
	background-color: #000099;
	width: 50%;
	color: orange;
	padding: 10px;
	margin: 10px 0px;
	border: none;
	cursor: pointer;
}

form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	margin: 5px 0;
	padding: 10px 20px;
	display: inline-block;
	border: 2px solid green;
	box-sizing: border-box;
}

button:hover {
	opacity: 0.7;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	margin: 10px 5px;
}

.container {
	padding: 20px;
	background-color: lightblue;
}

body {
	background-image:
		url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpEd4pHlkPIwWbqsep-GPUHv_fWAdZvGXO1g&usqp=CAU');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
</head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
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
								<td><form:input path="userName" class="form-control"
										placeholder="Enter Name" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userPassword">User Password</label></td>
							<div>
								<td><form:input path="userPassword" class="form-control"
										placeholder="Enter Password"/></td>
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