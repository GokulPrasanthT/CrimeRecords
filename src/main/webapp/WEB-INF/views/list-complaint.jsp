<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/userList.css"%></style>
<meta charset="ISO-8859-1">
<title>Complaint Lists</title>
</head>
<body>
	<h1>C o m p l a i n t__L i s t</h1>

	<div id="table root">
		<div>
			<table border="1" class="center">
				<caption></caption>
				<thead>
					<tr>
						<th>Complaint Id</th>
						<th>Type Of Complaint</th>
						<th>Complaint Describtion</th>
						<th>Registered Station</th>
						<th>Complaint Status</th>
						<th>issue Date</th>
						<th>issue Time</th>
						<th>Police Id</th>
						<th>User Id</th>
						<th>Update</th>
						<th>Delete</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="complaint" items="${viewcomplaintDetails}">
						<tr>
							<td>${complaint.complaintId}</td>
							<td>${complaint.typeofcomplaint}</td>
							<td>${complaint.complaintdescription}</td>
							<td>${complaint.registeredstation}</td>
							<td>${complaint.complaintstatus}</td>
							<td>${complaint.date}</td>
							<td>${complaint.time}</td>
							<td>${complaint.policeId}</td>
							<td>${complaint.userid}</td>
							<td><a
								href="updatecomplaintform?comId=${complaint.complaintId }">
									<input onclick="change()" type="button" value="Update"
									id="myButton1"></input>

							</a></td>
							<td><a
								href="deletecomplaint?comId=${complaint.complaintId }"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>