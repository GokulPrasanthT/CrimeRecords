<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
h1 {
	color: rgb(210, 210, 210);
	float: center;
	text-align: center;
}

tr {
	color: red;
}

label {
	color: white;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#log {
	width: 150px;
	height: 30px;
	border: black;
	border-radius: 3px;
	padding-left: 8px;
	color: white;
	background-color: maroon;
	display: inline-block;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s;
	transition-duration: 0.4s;
	float: center;
}

.box {
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	float: center;
	font-weight: 600;
	width: 600px;
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

body {
	background-image:
		url('https://videohive.img.customer.envatousercontent.com/files/71feac47-0da6-42a2-9b51-944b5395f783/inline_image_preview.jpg?auto=compress%2Cformat&fit=crop&crop=top&max-h=8000&max-w=590&s=c18acd2d55aee71ad3719c261903cca8');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-color: #080710;
}
</style>
<meta charset="ISO-8859-1">
<title>Add Users</title>
</head>
<body>
	<h1>User Register Form</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="adduser" method="post" modelAttribute="addUsers">

				<div>
					<label for="userName"> User Name:</label>
					<div>
						<form:input path="userName" class="form-control"
							placeholder="Enter UserName" title="Name can't be empty"
							required="true" style="width: 300px;height: 25px;" />
					</div>
					<form:errors path="userName" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="userPassword"> User Password:</label>
					<div>
						<form:input path="userPassword" class="form-control"
							type="password" title="Password Must be in this pasword"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
							placeholder="Enter Password" style="width: 300px;height=25px;" />
					</div>
					<form:errors path="userPassword" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="dateOfBirth"> Date of Birth:</label>
					<div>
						<form:input path="dateOfBirth" class="form-control" type="date"
							style="width: 300px;height=25px;" />
					</div>
					<form:errors path="dateOfBirth" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="gender" id="label"> Gender:</label>
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
					<label for="phoneno"> Phone No:</label>
					<div>
						<form:input path="phoneno" class="form-control"
							title="PhoneNumber can't be empty" required="true"
							placeholder="Enter PhoneNumber" style="width: 300px;height=25px;" />
					</div>
					<form:errors path="phoneno" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="email"> Email:</label>
					<div>
						<form:input path="email" class="form-control"
							title="Mail Id is not in correct format"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
							placeholder="Enter Email" style="width: 300px;height=25px;" />
					</div>
					<form:errors path="email" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="city"> City:</label>
					<div>
						<form:input path="city" class="form-control"
							title="City can't be empty" required="true"
							placeholder="Enter City" style="width: 300px;height=25px;" />
					</div>
					<form:errors path="city" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<div>
						<label for="userRole" class="form-control"> Role: </label>
					</div>
					<div>
						<form:radiobutton path="userRole" value="Admin" />
						Admin:
						<form:radiobutton path="userRole" value="User" />
						User:
					</div>
				</div>
				<br>
				<div>
					<form:button id="log"> Submit </form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>