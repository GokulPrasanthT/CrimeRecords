<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Police Lists</title>
</head>
<body>
	<h1 align="center">Police Lists</h1>
	<div id="table root">
		<div align="center">
			<table border="1">
				<thead>
					<tr>
						<th>Suspect_Id</th>
						<th>Suspect_Name</th>
						<th>Suspect_Identity</th>
						<th>Gender</th>
						<th>DOB</th>
						<th>Address</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach var="suspect" items="${viewsuspectDetails}">
						<tr>
							<td>${suspect.suspectId}</td>
							<td>${suspect.suspectName}</td>
							<td>${suspect.suspectIdentity}</td>
							<td>${suspect.gender}</td>
							<td>${suspect.dateofbirth}</td>
							<td>${suspect.address}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>