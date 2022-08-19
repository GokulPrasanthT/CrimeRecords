<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
table, tb {
	width: 50%;
	padding: 15px;
	text-align: center;
}

table {
	backdrop-filter: blur(10px);
}

.center {
	margin-left: auto;
	margin-right: auto;
}

th, td {
	border: solid 1px #7FFF00;
	padding: 10px;
	border-color: #7FFFD4;
}

th {
	color: #FFFF00;
}

td {
	color: white;
}

body {
	font-family: Arial, sans-serif;
	background:
		url('https://thumbs.dreamstime.com/b/tile-floor-brick-wall-background-lights-night-hd-image-large-resolution-can-be-used-as-desktop-wallpaper-real-zise-184215885.jpg')
		no-repeat;
	background-size: cover;
	height: 100vh;
}

h1 {
	text-align: center;
	font-family: Tahoma, Arial, sans-serif;
	color: #06D85F;
	float: center;
}

.box {
	width: 40%;
	margin: 0 auto;
	background: rgb(44 15 15/ 20%);
	padding: 25px;
	border: 2px solid #fff;
	border-radius: 20px/50px;
	background-clip: padding-box;
	text-align: center;
	backdrop-filter: blur(10px);
}

label {
	display: block;
	margin-right: 15px;
	font-size: 18px;
	font-weight: 500;
	color: 	#DCDCDC;
}

input {
	display: white;
	height: 30px;
	width: 80%;
	background-color: rgba(255, 255, 255, 0.07);
	border-radius: 40px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 14px;
	font-weight: 300;
	border-bottom-color: currentcolor;
	color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>User Complaint List</title>
</head>
<body>
	<h1>User Complaint List</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="adduser" method="post" modelAttribute="getuser">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" class="form-control" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" class="form-control" />
					</div>
				</div>
				<div>
					<label for="userid">User ID</label>
					<div>
						<form:input path="userid" class="form-control" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth">DOB</label>
					<div>
						<form:input path="dateOfBirth" class="form-control" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" class="form-control" />
					</div>
				</div>
				<div>
					<label for="phoneno">Phone No</label>
					<div>
						<form:input path="phoneno" class="form-control" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" class="form-control" />
					</div>
					<div>
						<label for="city">City</label>
						<div>
							<form:input path="city" class="form-control" />
						</div>
						<br>
					</div>
				</div>
			</form:form>
		</div>
	</div>

	<br>

	<div id="table root">
		<div>
			<table border="1" class="center">
				<caption></caption>
				<thead>
					<tr>
						<th>Complaint_Id</th>
						<th>Type_Of_Complaint</th>
						<th>Registered_Station</th>
						<th>Complaint_Status</th>
						<th>Date</th>
						<th>Time</th>
						<th>Police_Id</th>
						<th>User_id</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="complaint" items="${comlist}">
						<tr>
							<td>${complaint.complaintId}</td>
							<td>${complaint.typeofcomplaint}</td>
							<td>${complaint.registeredstation}</td>
							<td>${complaint.complaintstatus}</td>
							<td>${complaint.date}</td>
							<td>${complaint.time}</td>
							<td>${complaint.policeId}</td>
							<td>${complaint.userid}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>