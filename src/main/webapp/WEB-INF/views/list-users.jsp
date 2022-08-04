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
	border-color: #8E44AD;
}

td {
	color: #000000
}
</style>
</head>
<body>
	<meta charset="ISO-8859-1">
	<title>User Lists</title>
<body>
	<h1 align="center">Users List</h1>

	<div id="table root">
		<div align="center">
			<table border="1" width="75%" cellpadd="">
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
						<th>Update</th>
						<th>Delete</th>
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
							<td><a href="updateuserform?userId=${user.userid }"> <input
									onclick="change()" type="button" value="Update" id="myButton1"></input>

							</a></td>
							<td><a href="deleteusers?userId=${user.userid }"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>