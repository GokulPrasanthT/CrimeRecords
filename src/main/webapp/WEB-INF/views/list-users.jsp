<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/userList.css"%></style>
<meta charset="ISO-8859-1">
<title>User Lists</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
</head>
<body>
	<h1>Users List</h1>

	<div id="table root">
		<div>
			<table border="1" class="center">
				<caption></caption>
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