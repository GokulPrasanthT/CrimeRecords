<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<style>
<%@include file="/WEB-INF/views/cssfile/userDone.css"%></style>
<head>
<meta charset="ISO-8859-1">
<title>Check History</title>
</head>
<body>
	<h1>Welcome to Crime System</h1>
	<div class="cont">
	 <a href="/users/finduserid?userId=${userId}">
			<button class="btn">User Profile</button>
		</a> <a href="/users/index">
			<button class="btn">Log Out</button>
		</a> <a href="/complaint/findcomplaintid?userId=${userId}"><button
				class="btn">Check Status</button></a>
		<a href="/complaint/addcomplaintdetailform?userId=${userId}"><button
				class="btn">Add Complaint</button></a>
	</div>

</body>
</html>