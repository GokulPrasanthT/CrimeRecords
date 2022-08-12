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
		url('https://videohive.img.customer.envatousercontent.com/files/71feac47-0da6-42a2-9b51-944b5395f783/inline_image_preview.jpg?auto=compress%2Cformat&fit=crop&crop=top&max-h=8000&max-w=590&s=c18acd2d55aee71ad3719c261903cca8');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.form-inline {
	display: flex;
	flex-flow: row wrap;
	align-items: center;
}

/* Add some margins for each label */
.form-inline label {
	margin: 5px 10px 5px 0;
}

/* Style the input fields */
.form-inline input {
	vertical-align: middle;
	margin: 5px 10px 5px 0;
	padding: 10px;
	background-color: #fff;
	border: 1px solid #ddd;
}

/* Style the submit button */
.form-inline button {
	padding: 10px 20px;
	background-color: dodgerblue;
	border: 1px solid #ddd;
	color: white;
}

.form-inline button:hover {
	background-color: royalblue;
}

/* Add responsiveness - display the form controls vertically instead of horizontally on screens that are less than 800px wide */
@media ( max-width : 800px) {
	.form-inline input {
		margin: 10px 0;
	}
	.form-inline {
		flex-direction: column;
		align-items: stretch;
	}
}
</style>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
	<h1 align="center">User Register</h1>
	<div id="root">
		<div id="form" align="center">
			<form:form action="adduser" method="post" modelAttribute="addUsers">
				<div>
					<label for="userName"> User Name</label>
					<div>
						<form:input path="userName" class="form-control"
							placeholder="Enter UserName"
							title="Name can't be empty And First Name must be in String"
							required="true" style="width: 200px;height=25px;" />
					</div>
					<form:errors path="userName" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" class="form-control"
							type="password" title="Password Must be in this pasword"
							required="true" placeholder="Enter Password"
							style="width: 200px;height=25px;" />
					</div>
					<form:errors path="userPassword" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="dateOfBirth">DOB</label>
					<div>
						<form:input path="dateOfBirth" class="form-control" type="date"
							style="width: 200px;height=25px;" />
					</div>
					<form:errors path="dateOfBirth" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="gender">Gender :</label>
					<div>
						<form:radiobutton path="gender" value="Male" />
						Male:
						<form:radiobutton path="gender" value="Female" />
						Female:
						<form:radiobutton path="gender" value="Others" />
						Others:
					</div>
					<form:errors path="gender" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="phoneno">Phone No</label>

					<div>
						<form:input path="phoneno" class="form-control"
							title="PhoneNumber can't be empty" required="true"
							placeholder="Enter PhoneNumber" style="width: 200px;height=25px;" />
					</div>
					<form:errors path="phoneno" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" class="form-control"
							title="Mail Id is not in correct format"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
							placeholder="Enter Email" style="width: 200px;height=25px;" />
					</div>
					<form:errors path="email" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="city"> City </label>
					<div>
						<form:input path="city" class="form-control"
							title="City can't be empty" required="true"
							placeholder="Enter City" style="width: 200px;height=25px;" />
					</div>
					<form:errors path="city" cssClass="text-danger"></form:errors>
				</div>
				</br>
				<div>
					<div>
						<label for="userRole" class="form-control"> Role: </label>
					</div>
					<div>
						<form:radiobutton path="userRole" value="Admin" />
						Admin
						<form:radiobutton path="userRole" value="User" />
						User
					</div>
					<%-- <form:errors path="userRole" cssClass="text-danger"></form:errors>  --%>
				</div>
		</div>
	</div>
	</br>
	<div>
		<td colspan="5" align="center"><br> <form:button> Submit </form:button></td>
	</div>
	</form:form>
	</div>
</body>
</html>