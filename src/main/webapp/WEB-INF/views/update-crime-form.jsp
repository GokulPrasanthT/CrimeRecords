<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/updateCrime.css"%></style>
<meta charset="ISO-8859-1">
<title>Update Crime Details</title>
</head>
<body>
<h1> Update Crime </h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="updatecrimedetails" method="post"
				modelAttribute="updatecrimeDetail">
				<div>
					<label for="suspectId">Suspect ID</label>
					<div>
						<form:input path="suspectId" />
					</div>
				</div>
				<div>
					<label for="crimelocation">Crime Location</label>
					<div>
						<form:input path="crimelocation" />
					</div>
				</div>
				<div>
					<label for="date">Date Of Issue</label>
					<div>
						<form:input path="date" />
					</div>
				</div>
				<div>
					<label for="offencetype"> Type Of Offence</label>
					<div>
						<form:input path="offencetype" />
					</div>
				</div>
				<div>
					<label for="complaintid">Complaint ID</label>
					<div>
						<form:input path="complaintid" />
					</div>
				</div>
				<div>
					<label for="image">img</label>
					<div>
						<form:input path="image" />
					</div>
				</div>
				<br>
				<div>
				<form:button id="log">Submit</form:button></div>
		</form:form>
	</div>
	</div>
</body>
</html>