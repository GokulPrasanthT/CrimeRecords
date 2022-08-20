<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/userDone.css"%></style>
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