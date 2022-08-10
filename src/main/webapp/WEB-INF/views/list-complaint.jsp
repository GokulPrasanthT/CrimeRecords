<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, tb {
	width: 50%;
	padding: 15px;
	text-align: left;
}

th, td {
	border: solid 1px #777;
	padding: 10px;
	border-color: #cc0033;
}

td {
	color: #000000;
}
tr{
color: white;}
body {
	background-image:
		url('https://media.istockphoto.com/photos/closeup-shot-of-a-notebook-and-pen-on-a-table-in-an-office-picture-id1345561027?k=20&m=1345561027&s=612x612&w=0&h=0FbTAWqGMRSyvWBuQpqW__RjbZxUWa4brjdcGxHOUYQ=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Complaint Lists</title>
</head>
<body>
	<h1 align="center">Complaint List</h1>

	<div id="table root">
		<div align="center">
			<table border="20" width="10%" cellpadding="1">
				<thead>
					<tr>
						<th>Complaint_Id</th>
						<th>Type_Of_Complaint</th>
						<th>Registered_Station</th>
						<th>Complaint_Describtion</th>
						<th>Complaint_Status</th>
						<th>issue_Date</th>
						<th>issue_Time</th>
						<th>Police_Id</th>
						<th>User_id</th>
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