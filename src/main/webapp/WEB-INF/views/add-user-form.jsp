<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/addUser.css"%></style>
<meta charset="ISO-8859-1">
<title>Add Users</title>
	<script type="text/javascript">
		var userNameCheck = function() {
			var nameRegex = new RegExp("^[a-zA-z\s]+$");
			if (!document.form.userName.value.match(nameRegex)) {
				if (alert("Name can't be empty or must contain only alphabets")) {
					document.form.userName.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
		
		var emailCheck = function() {
			var nameRegex = new RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
			if (!document.form.email.value.match(nameRegex)) {
				if (alert("Email not in the correct format")) {
					document.form.email.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}

		var passwordCheck = function() {
			var nameRegex = new RegExp(
					"^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
			if (!document.form.userPassword.value.match(nameRegex)) {
				if (alert("Password must begin with letter and contain atleast one number and must have atleast 8 characters")) {
					document.form.userPassword.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}

		}
		var phoneNoCheck = function() {
			var nameRegex = new RegExp("[0-9]{10}");
			if (!document.form.phoneno.value.match(nameRegex)) {
				if (alert("Phone number must have 10 digits")) {
					document.form.phoneno.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
	</script>
</head>
<body>
	<h1>User Register Form</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="adduser" method="post" modelAttribute="addUsers"
				name="form">

				<div>
					<label for="userName"> User Name:</label>
					<div>
						<form:input path="userName" class="form-control"
							placeholder="Enter UserName" required="true"
							pattern="^[a-zA-z\s]+$" onblur="userNameCheck();"
							style="width: 300px;height: 25px;" />
					</div>
					<form:errors path="userName" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="userPassword"> User Password:</label>
					<div>
						<form:input path="userPassword" class="form-control"
							type="password" required="true" placeholder="Enter Password"
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							name="password" onblur="passwordCheck();"
							style="width: 300px;height=25px;" />
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
						<form:input path="phoneno" class="form-control" required="true"
							placeholder="Enter PhoneNumber" pattern='[0-9]{10}'
							name="phoneNo" onblur="numberCheck();"
							style="width: 300px;height=25px;" />
					</div>
					<form:errors path="phoneno" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="email"> Email:</label>
					<div>
						<form:input path="email" class="form-control"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
							placeholder="Enter Email" name="email" onblur="emailCheck();"
							style="width: 300px;height=25px;" />
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
<div>
                  <a href="/users/index"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
                </div>

</body>
</html>