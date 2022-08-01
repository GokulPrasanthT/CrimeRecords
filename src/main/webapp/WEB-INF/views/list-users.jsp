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
						<td>${user.userName}</td>
						<td>${user.userPassword}</td>
						<td>${user.userid}</td>
						<td>${user.dateOfBirth}</td>
						<td>${user.gender}</td>
						<td>${user.phoneno}</td>
						<td>${user.email}</td>
						<td>${user.city}</td>
						<td>${user.userRole}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>