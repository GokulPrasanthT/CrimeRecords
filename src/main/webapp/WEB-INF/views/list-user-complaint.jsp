<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Complaint List</title>
</head>
<body>
	<div id="root">
		<div id="form" align="center">
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
						</br>
						<div>
							<div>
								<label for="userRole" class="form-control"> Choose a
									Role: </label> <select id="user">
									<option value="Admin">ADMIN</option>
									<option value="User">USER</option>
								</select>
							</div>
						</div>
					</div>
				</div>
				</br>
				<div>
					<form:button>Add User</form:button>
				</div>
			</form:form>
		</div>
	</div>
	</br>
	<div id="table root">
		<div align="center">
			<table border="1">
				<thead>
					<tr>
						<th>Complaint_Id</th>
						<th>Type_Of_Complaint</th>
						<th>Registered_Station</th>
						<th>Complaint_Status</th>
						<th>Date_Time</th>
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
							<td>${complaint.datetime}</td>
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