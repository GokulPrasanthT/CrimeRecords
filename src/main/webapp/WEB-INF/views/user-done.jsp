<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.btn {
	background-color: #ddd;
	border: none;
	color: black;
	padding: 16px 32px;
	text-align: center;
	font-size: 16px;
	margin: 4px 2px;
	transition: 0.3s;
	align-item: center;
}

.btn:hover {
	background-color: #3e8e41;
	color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>Registered Sucessfully</title>
</head>
<body>
	<h1 align="center">Complaint Registered successfully</h1>
	<center>
		<a href="/users/userlist">
			<button class="btn">User List</button> <a href="/users/index">
				<button class="btn">Back</button>
	</center>
	</a>
</body>
</html>