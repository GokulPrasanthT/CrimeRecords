<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/policeList.css"%></style>
<meta charset="ISO-8859-1">
<title>Police Lists</title>
</head>
<body>
	<h1>P o l i c e__L i s t</h1>

	<div id="table root">
		<div>
			<table border="1" class="center">
				<caption></caption>
				<thead>
					<tr>
						<th>Police Id</th>
						<th>Police Rank</th>
						<th>Police Name</th>
						<th>Mobile No</th>
						<th>Email</th>
						<th>DOB</th>
						<th>Station Name</th>
						<th>Update</th>
						<th>Delete</th>
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