<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
	<h1 align="center">User Register</h1>
	<div id="root">
		<div id="form" align="center">
			<form:form action="adduser" method="post" modelAttribute="addUsers">
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
						<form:input path="dateOfBirth" class="form-control" type="date" />
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
</body>
</html>