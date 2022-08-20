<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/updateSuspect.css"%></style>
<meta charset="ISO-8859-1">
<title>Update Users</title>
</head>
<body>
	<div id="root">
		<div id="form" class="box">
				<form:form action="updateusers" method="post"
					modelAttribute="updateuser">
					
						<div>
							<label for="userName">User Name</label>
							<div>
							<form:input path="userName" class="form-control" />
							</div>
							<form:errors path="userName" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="userPassword">User Password</label>
							<div>
								<form:input path="userPassword" class="form-control"
										type="password" />
							</div>
							<form:errors path="userPassword" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="userid">User ID</label>
							<div>
								<form:input path="userid" class="form-control" />
							</div>
							<form:errors path="userid" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="dateOfBirth">DOB</label>
							<div>
								<form:input path="dateOfBirth" class="form-control"
										type="date" />
							</div>
							<form:errors path="dateOfBirth" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="gender">Gender</label>
							<div>
								<form:input path="gender" class="form-control" />
							</div>
							<form:errors path="gender" cssClass="text-danger"></form:errors>
							 <div>
							<label for="userRole">Choose a Role:</label> <select id="user">
								<option value="Admin">ADMIN</option>
								<option value="User">USER</option>
							</select>
						</div> 
						</div>
					<div>
						<div>
							 <form:button id="log">Submit</form:button>
						</div>
					</div>
				</form:form>
		</div>
	</div>
</body>
</html>