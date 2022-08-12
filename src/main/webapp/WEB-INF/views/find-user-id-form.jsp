<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>FindBy UserID</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="viewuser">
				<div>
					<label for="User_Name">User Name</label>
					<div>
						<form:input path="User_Name" readonly="true" />
					</div>
				</div>
				<div>
					<label for="User_Password">User Password</label>
					<div>
						<form:input path="User_Password" readonly="true" />
					</div>
				</div>
				<div>
					<label for="User_id">User ID</label>
					<div>
						<form:input path="User_id" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Date_Of_Birth">DOB</label>
					<div>
						<form:input path="Date_Of_Birth" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Gender">Gender</label>
					<div>
						<form:input path="Gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Phone_No">Phone No</label>
					<div>
						<form:input path="Phone_No" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Email">Email</label>
					<div>
						<form:input path="Email" readonly="true" />
					</div>
					<div>
						<label for="City">City</label>
						<div>
							<form:input path="City" readonly="true" />
						</div>
						<div>
							<div>

								<label for="User_Role">Choose a Role:</label> <select id="role">
									<option value="Admin">ADMIN</option>
									<option value="User">USER</option>
								</select>
								<form:input path="User_Role" readonly="true" />
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