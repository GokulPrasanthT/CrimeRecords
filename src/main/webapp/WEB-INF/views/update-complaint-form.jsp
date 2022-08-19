<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/updateComplaint.css"%></style>
<meta charset="ISO-8859-1">
<title>Update Complaint Details</title>
</head>
<body>
	<h1>Edit Complaint</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="updatecomplaints" method="post"
				modelAttribute="updatecomplaintDetails">

				<div>
					<label for="complaintId">Complaint ID</label>
					<div>
						<form:input path="complaintId" />
					</div>
				</div>
				<div>
					<label for="typeofcomplaint">Type_Of_Complaint</label>
					<div>

						<form:input path="typeofcomplaint" />
					</div>
				</div>

				<div>
					<label for="complaintdescription">Complaint_Description</label>
					<div>
						<form:input path="complaintdescription" />
					</div>
				</div>

				<div>
					<label for="registeredstation">Registered_Station</label>
					<div>
						<form:input path="registeredstation" />
					</div>
				</div>

				<div>
					<label for="complaintstatus">complaint_Status</label>
					<div>
						<form:input path="complaintstatus" />
					</div>
				</div>

				<div>
					<label for="date">Issue_Date</label>
					<div>
						<form:input path="date" type="date" />
					</div>
				</div>

				<div>
					<label for="time">Issue_Time</label>
					<div>
						<form:input path="time" type="date" />
					</div>
				</div>

				<div>
					<label for="policeId">Police_ID</label>
				</div>
				<div>
					<form:input path="policeId" />
				</div>

				<div>
					<label for="userid">User_ID</label>
				</div>
				<div>
					<form:input path="userid" />
				</div>

				<br>
				<div>
					<br>
					<form:button id="log">Submit</form:button>

				</div>
			</form:form>
		</div>
	</div>
</body>
</html>