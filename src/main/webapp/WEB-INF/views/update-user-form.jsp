<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
body {
	background-image:
		url('https://thumbs.dreamstime.com/b/close-up-complain-stamp-document-red-seal-stamped-complaint-form-fountain-pen-macro-shot-99013049.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

table {
	background-color: grey;
}

td {
	background-color: #E5E4E2;
}
</style>
<meta charset="ISO-8859-1">
<title>Update Users</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<table>
				<form:form action="updateusers" method="post"
					modelAttribute="updateuser">
					<tr>
						<div>
							<td><label for="userName">User Name</label></td>
							<div>
								<td><form:input path="userName" class="form-control" /></td>
							</div>
							<form:errors path="userName" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userPassword">User Password</label></td>
							<div>
								<td><form:input path="userPassword" class="form-control"
										type="password" /></td>
							</div>
							<form:errors path="userPassword" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userid">User ID</label></td>
							<div>
								<td><form:input path="userid" class="form-control" /></td>
							</div>
							<form:errors path="userid" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="dateOfBirth">DOB</label></td>
							<div>
								<td><form:input path="dateOfBirth" class="form-control"
										type="date" /></td>
							</div>
							<form:errors path="dateOfBirth" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="gender">Gender</label></td>
							<div>
								<td><form:input path="gender" class="form-control" /></td>
							</div>
							<form:errors path="gender" cssClass="text-danger"></form:errors>
							<!-- <div>
							<label for="userRole">Choose a Role:</label> <select id="user">
								<option value="Admin">ADMIN</option>
								<option value="User">USER</option>
							</select>
						</div> -->
						</div>
					</tr>
					<div>
						<div>
							<td colspan="5" align="center"><br> <form:button>Submit</form:button></td>
						</div>
					</div>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>