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
	<div id="table root">
		<table>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>