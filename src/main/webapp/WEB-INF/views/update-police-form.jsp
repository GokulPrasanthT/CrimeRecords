<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/updatePolice.css"%></style>
<meta charset="ISO-8859-1">
<title>Update PoliceDetails</title>
</head>
<body>
	<div id="root">
		<div id="form" class="box">
			<form:form action="updatepolicedetails" method="post"
				modelAttribute="updatepolice">
				<div>
					<label for="policeId">Police ID</label>
					<div>
						<form:input path="policeId" />
					</div>
				</div>
				<div>
					<label for="policeRank">Police Rank</label>
					<div>
						<form:input path="policeRank" />
					</div>
				</div>
				<div>
					<label for="policeName">Police Name</label>
					<div>
						<form:input path="policeName" />
					</div>
				</div>
				<div>
					<label for="mobileNo">Mobile Number</label>
					<div>
						<form:input path="mobileNo" />
					</div>
				</div>
				<div>
					<label for="email">E-Mail</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="dateOfbirth">Date_Of_Birth</label>
					<div>
						<form:input path="dateOfbirth" />
					</div>
				</div>
				<div>
					<label for="stationName">Station Name</label>
					<div>
						<form:input path="stationName" />
					</div>
					</div>
					<div>
						<form:button id="log">Update PoliceDetails</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>