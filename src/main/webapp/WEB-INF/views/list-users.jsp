<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Lists</title>
</head>
<body>
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>User_Name</th>
					<th>User_Password</th>
					<th>User_id</th>
					<th>Date_Of_Birth</th>
					<th>Gender</th>
					<th>Phone_No</th>
					<th>Email</th>
					<th>City</th>
					<th>User_Role</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${viewuser}">
					<tr>
						<td>${user.User_Name}</td>
						<td>${user.User_Password}</td>
						<td>${user.User_id}</td>
						<td>${user.Date_Of_Birth}</td>
						<td>${user.Gender}</td>
						<td>${user.Phone_No}</td>
						<td>${user.Email}</td>
						<td>${user.City}</td>
						<td>${user.User_Role}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>