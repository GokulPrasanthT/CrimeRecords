<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crime Lists</title>
</head>
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
							<td>${crime.Suspect_Id}</td>
							<td>${crime.Crime_Location}</td>
							<td>${crime.Issue_Date}</td>
							<td>${crime.Type_Of_Offence}</td>
							<td>${crime.Complaint_Id}</td>
							<td>${crime.Image}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>