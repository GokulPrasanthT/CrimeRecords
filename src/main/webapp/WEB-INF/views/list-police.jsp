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
	background-image:
		url('https://media.istockphoto.com/photos/closeup-shot-of-a-notebook-and-pen-on-a-table-in-an-office-picture-id1345561027?k=20&m=1345561027&s=612x612&w=0&h=0FbTAWqGMRSyvWBuQpqW__RjbZxUWa4brjdcGxHOUYQ=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Police Lists</title>
</head>
<body>
	<h1 align="center">Police List</h1>

	<div id="table root">
		<div align="center">
			<table border="1">
				<thead>
					<tr>
						<th>Police_Id</th>
						<th>Police_Rank</th>
						<th>Police_Name</th>
						<th>Mobile_No</th>
						<th>Email</th>
						<th>DOB</th>
						<th>Station_Name</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="police" items="${viewpoliceDetails}">
						<tr>
							<td>${police.policeId}</td>
							<td>${police.policeRank}</td>
							<td>${police.policeName}</td>
							<td>${police.mobileNo}</td>
							<td>${police.email}</td>
							<td>${police.dateOfbirth}</td>
							<td>${police.stationName}</td>
							<td><a href="updatepoliceform?poId=${police.policeId}">
									<input onclick="change()" type="button" value="Update"
									id="myButton1"></input>

							</a></td>
							<td><a href="deletepolice?poId=${police.policeId}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>