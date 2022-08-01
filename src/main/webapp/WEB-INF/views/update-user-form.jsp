<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Users</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updateusers" method="post"
				modelAttribute="updateuser">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" />
					</div>
				</div>
				<div>
					<label for="userid">User Id</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth">DOB</label>
					<div>
						<form:input path="dateOfBirth" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="phoneno">Phone_NO</label>
					<div>
						<form:input path="phoneno" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" />
					</div>
					<!-- <div>
							<label for="userRole">Choose a Role:</label> <select id="user">
								<option value="Admin">ADMIN</option>
								<option value="User">USER</option>
							</select>
						</div> -->
				</div>
				<div>
					<div>
						<form:button>Update User</form:button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>