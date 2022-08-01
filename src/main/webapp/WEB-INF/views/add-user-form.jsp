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
	<div id="root">
		<div id="form">
			<form:form action="addUsers" method="post" modelAttribute="adduser">
				<div>
					<label for="User_Name">User Name</label>
					<div>
						<form:input path="User_Name" />
					</div>
				</div>
				<div>
					<label for="User_Password">User Password</label>
					<div>
						<form:input path="User_Password" />
					</div>
				</div>
				<div>
					<label for="User_id">User ID</label>
					<div>
						<form:input path="User_id" />
					</div>
				</div>
				<div>
					<label for="Date_Of_Birth">DOB</label>
					<div>
						<form:input path="Date_Of_Birth" />
					</div>
				</div>
				<div>
					<label for="Gender">Gender</label>
					<div>
						<form:input path="Gender" />
					</div>
				</div>
				<div>
					<label for="Phone_No">Phone No</label>
					<div>
						<form:input path="Phone_No" />
					</div>
				</div>
				<div>
					<label for="Email">Email</label>
					<div>
						<form:input path="Email" />
					</div>
					<div>
						<label for="City">City</label>
						<div>
							<form:input path="City" />
						</div>
						<div>
							<!-- <label for="User_Role">User Role</label> -->
							<div>
								<form:input path="User_Role"/>
								<label for="User_Role">Choose a Role:</label> <select id="user">
									<option value="Admin">ADMIN</option>
									<option value="User">USER</option>
								</select>
							</div>
						</div>
						<div>
							<form:button>Add User</form:button>
						</div>
			</form:form>
		</div>
	</div>
</body>
</html>