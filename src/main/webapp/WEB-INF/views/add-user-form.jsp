<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image:
		url('https://videohive.img.customer.envatousercontent.com/files/71feac47-0da6-42a2-9b51-944b5395f783/inline_image_preview.jpg?auto=compress%2Cformat&fit=crop&crop=top&max-h=8000&max-w=590&s=c18acd2d55aee71ad3719c261903cca8');
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
<title>Add User</title>
</head>
<body>
	<h1 align="center">User Register</h1>
	<div id="root">
		<div id="form" align="center">
			<table border="20" width="10%" cellpadding="1">
				<form:form action="adduser" method="post" modelAttribute="addUsers">
					<tr>
						<div>
							<td><label for="userName">User Name</label></td>
							<div>
								<td><form:input path="userName" class="form-control"
										placeholder="Enter UserName"
										title="Name can't be empty And First Name must be in String"
										required="true" /></td>
							</div>
							<form:errors path="userName" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userPassword">User Password</label></td>
							<div>
								<td><form:input path="userPassword" class="form-control"
										type="password"
										pattern="^(?=.[A-Za-z])(?=.\\d)(?=.[@$!%#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
										required="true" placeholder="Enter Password" /></td>
							</div>
							<form:errors path="userPassword" cssClass="text-danger"></form:errors>
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
							<td><label for="gender">Gender :</label></td>
							<div>
								<td>Male: <form:radiobutton path="gender" value="Male" />
									Female: <form:radiobutton path="gender" value="Female" />
									Others: <form:radiobutton path="gender" value="Others" />
								</td>
							</div>
							<form:errors path="gender" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="phoneno">Phone No</label></td>
							<div>
								<td><form:input path="phoneno" class="form-control"
										title="PhoneNumber can't be empty" required="true"
										placeholder="Enter PhoneNumber" /></td>
							</div>
							<form:errors path="phoneno" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="email">Email</label></td>
							<div>
								<td><form:input path="email" class="form-control"
										title="Mail Id is not in correct format"
										pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
										placeholder="Enter Email" /></td>
							</div>
							<form:errors path="email" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="city">City</label></td>
							<div>
								<td><form:input path="city" class="form-control"
										title="City can't be empty" required="true"
										placeholder="Enter City" /></td>
							</div>
							<form:errors path="city" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					</br>
					<tr>
						<div>
							<div>
								<td><label for="userRole" class="form-control">
										Choose a Role: </label></td>
							</div>
							<div>
								<td>Admin <form:radiobutton path="userRole" value="Admin" />
									User <form:radiobutton path="userRole" value="User" /></td>
							</div>
							<%-- <form:errors path="userRole" cssClass="text-danger"></form:errors>  --%>
						</div>
						</div>
					</tr>
					</div>
					</br>
					<div>
						<td colspan="5" align="center"><br> <form:button> Submit </form:button></td>
					</div>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>