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
			<table>
				<form:form action="adduser" method="post" modelAttribute="addUsers">
					<tr>
						<div>
							<td><label for="userName">User Name</label></td>
							<div>
								<td><form:input path="userName" class="form-control"
										placeholder="Enter UserName" /></td>
							</div>
							<form:errors path="userName" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userPassword">User Password</label></td>
							<div>
								<td><form:input path="userPassword" class="form-control"
										type="password" placeholder="Enter Password" /></td>
							</div>
							<form:errors path="userPassword" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userid">User ID</label></td>
							<div>
								<td><form:input path="userid" class="form-control"
										placeholder="Enter User Id" /></td>
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
							<td><label for="gender">Gender :</label></td>
							<div>
								<td><input type="radio" name="gender" value="Male" />Male
									<input type="radio" name="gender" value="Female" />Female <input
									type="radio" name="gender" value="Others" />Others</td>
							</div>
							<form:errors path="gender" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="phoneno">Phone No</label></td>
							<div>
								<td><form:input path="phoneno" class="form-control"
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
								<td><input type="radio" name="userRole" value="userRole" />Admin
									<input type="radio" name="userRole" value="userRole" />User</td>
						</div>
						<%-- <form:errors path="userRole" cssClass="text-danger"></form:errors>  --%>
						</div>
						</div>
					</tr>
					</div>
					</br>
					<div>
						<td colspan="5" align="center"><br> <form:button>Submit</form:button></td>
					</div>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>