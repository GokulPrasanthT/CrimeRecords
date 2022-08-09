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
	color: #000000
}

body {
	background-image:url('https://media.istockphoto.com/photos/stack-of-papers-with-blue-tint-picture-id137890584?k=20&m=137890584&s=612x612&w=0&h=CPrCDb6xZB5_jHN1D7CVCX66BKvvC3B5B8EKAbw-W-k=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
</head>
<meta charset="ISO-8859-1">
<title>Crime Lists</title>
<body>
	<h1 align="center">Crime List</h1>

	<div id="table root">
		<div align="center">
			<table border="1">
				<thead>
					<tr>
						<th>Suspect_Id</th>
						<th>Crime_Location</th>
						<th>Issue_Date</th>
						<th>Type_Of_Offence</th>
						<th>Complaint_Id</th>
						<th>Image</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="crime" items="${viewcrimeDtails}">
						<tr>
							<td>${crime.suspectId}</td>
							<td>${crime.crimelocation}</td>
							<td>${crime.date}</td>
							<td>${crime.offencetype}</td>
							<td>${crime.complaintid}</td>
							<td>${crime.image}</td>
							<td><a href="updatecrimeform?crId=${crime.suspectId}"> <input
									onclick="change()" type="button" value="Update" id="myButton1"></input>

							</a></td>
							<td><a href="deletecrime?crId=${crime.suspectId}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>