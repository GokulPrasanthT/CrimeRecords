<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/listuserComplaint.css"%></style>
<meta charset="ISO-8859-1">
<title>User Complaint List</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
</head>
<body>
	<h1>User Complaint List</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="adduser" method="post" modelAttribute="getuser">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" class="form-control" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" class="form-control"
							readonly="true" />
					</div>
				</div>
				<div>
					<label for="userid">User ID</label>
					<div>
						<form:input path="userid" class="form-control" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth">DOB</label>
					<div>
						<form:input path="dateOfBirth" class="form-control"
							readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" class="form-control" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneno">Phone No</label>
					<div>
						<form:input path="phoneno" class="form-control" readonly="true" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" class="form-control" readonly="true" />
					</div>
					<div>
						<label for="city">City</label>
						<div>
							<form:input path="city" class="form-control" readonly="true" />
						</div>
						<br>
					</div>
				</div>
			</form:form>
		</div>
	</div>

	<br>

	<div id="table root">
		<div>
			<table border="1" class="center">
				<caption></caption>
				<thead>
					<tr>
						<th>Complaint_Id</th>
						<th>Type_Of_Complaint</th>
						<th>Registered_Station</th>
						<th>Complaint_Status</th>
						<th>Date</th>
						<th>Time</th>
						<th>Police_Id</th>
						<th>User_id</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="complaint" items="${comlist}">
						<tr>
							<td>${complaint.complaintId}</td>
							<td>${complaint.typeofcomplaint}</td>
							<td>${complaint.registeredstation}</td>
							<td>${complaint.complaintstatus}</td>
							<td>${complaint.date}</td>
							<td>${complaint.time}</td>
							<td>${complaint.policeId}</td>
							<td>${complaint.userid}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

<div>
     <a href="/users/admin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
</div>
</body>
</html>