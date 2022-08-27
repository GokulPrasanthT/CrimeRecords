<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/listPoliceComplaint.css"%></style>
<meta charset="ISO-8859-1">
<title>police to complaint Details</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
</head>
<body>
<h1>Police Complaint Details</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addpolicedetail" method="post"
				modelAttribute="getpolice">
				<div>
					<label for="policeId">Police ID</label>
					<div>
						<form:input path="policeId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="policeRank">Police Rank</label>
					<div>
						<form:input path="policeRank" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="policeName">Police Name</label>
					<div>
						<form:input path="policeName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="mobileNo">Mobile Number</label>
					<div>
						<form:input path="mobileNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="email">E-Mail</label>
					<div>
						<form:input path="email" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="dateOfbirth">Date_Of_Birth</label>
				</div>
				<div>
					<form:input path="dateOfbirth" readonly="true"/>
				</div>
				<div>
					<label for="stationName">Station Name</label>
					<div>
						<form:input path="stationName" readonly="true"/>
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
						<th>Date_Time</th>
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
							<td>${complaint.datetime}</td>
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