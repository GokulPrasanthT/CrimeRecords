<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
h1 {
	float: center;
	text-align: center;
}

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

.cont {
	float: center;
	text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<title>Registered Sucessfully</title>
</head>
<body>
	<h1>Complaint Registered Successfully</h1>
	<div class="cont">
		<a href="/users/finduserid?userId=${userId}">
			<button class="btn">User Profile</button>
		</a> <a href="/users/index">
			<button class="btn">Log Out</button>
		</a> <a href="/complaint/findcomplaintid?comId=${comId}"><button
				class="btn">Check Status</button></a>
	</div>

</body>
</html>