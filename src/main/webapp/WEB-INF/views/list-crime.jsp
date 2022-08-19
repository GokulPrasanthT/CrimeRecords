<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/crimeList.css"%></style>
<meta charset="ISO-8859-1">
<title>Crime Lists</title>
</head>
<body>
	<h1>C r i m e__L i s t</h1>

	<div id="table root">
		<div align="center">
			<table border="1">
				<caption></caption>
				<thead>
					<tr>
						<th>Suspect_Id</th>
						<th>Crime_Location</th>
						<th>Issue_Date</th>
						<th>Type_Of_Offence</th>
						<th>Complaint_Id</th>
						<th>Image</th>
						<th>Update</th>
						<th>Delete</th>
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