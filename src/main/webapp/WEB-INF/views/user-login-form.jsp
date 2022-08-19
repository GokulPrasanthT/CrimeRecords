<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body {
	background-image:
		url("https://s3u.tmimgcdn.com/800x0/2267756-1594645219236_8.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	color: #4F311C;
	float: center;
	text-align: center;
}

*:before, *:after {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.background {
	width: 430px;
	height: 520px;
	position: absolute;
	transform: translate(-50%, -50%);
	left: 50%;
	top: 50%;
}

form {
	height: 400px;
	width: 400px;
	background-color: rgba(255, 255, 255, 0.13);
	position: absolute;
	transform: translate(-50%, -50%);
	top: 50%;
	left: 50%;
	border-radius: 40px;
	backdrop-filter: blur(15px);
	border: 2px solid rgba(255, 255, 255, 0.1);
	box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
	padding: 50px 35px;
	margin-left: auto;
	margin-right: auto;
}

form * {
	font-family: 'Poppins', sans-serif;
	color: #0d0401;
	letter-spacing: 0.5px;
	outline: none;
	border: none;
}

form h3 {
	font-size: 32px;
	font-weight: 500;
	line-height: 42px;
	text-align: center;
}

label {
	display: block;
	margin-top: 30px;
	font-size: 16px;
	font-weight: 500;
}

input {
	display: block;
	height: 50px;
	width: 100%;
	background-color: rgba(255, 255, 255, 0.07);
	border-radius: 40px;
	padding: 0 10px;
	margin-top: 8px;
	font-size: 14px;
	font-weight: 300;
}

::placeholder {
	color: 	white;
}

a, button {
	margin-top: 50px;
	width: 100%;
	background-color: #ffffff;
	color: #080710;
	padding: 15px 0;
	font-size: 18px;
	font-weight: 600;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
}

.back {
	font-size: 10px;
	width: 5%;
	position: absolute;
	top: 5%;
	left: 5%;
}
</style>
</head>
<body>
	<h1>User Login</h1>
	<br>
	<div id="root">
		<div id="form" class="box">
			<form:form action="checkcuserlogin" method="post"
				modelAttribute="users" class="form">

				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" class="form-control"
							placeholder="Enter UserName" pattern="^[a-zA-z\s]+$"
							name="userName" onblur="userNameCheck();" />

					</div>
				</div>
				<div>
					<label for="userPassword">Password</label>
					<div>
						<form:input type="password" path="userPassword"
							class="form-control" placeholder="Enter Password"
							pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
							name="password" onblur="passwordCheck();" />
					</div>
				</div>
				<br>
				<div>
					<label for="userRole">Role</label>
					<div>
						<form:select path="userRole" style="width: 300px;height: 25px;">
							<form:option value="Admin">Admin</form:option>
							<form:option value="User">User</form:option>
						</form:select>
					</div>
				</div>
				<br>
				<div>
					<br>
					<form:button id="log">Login</form:button>
				</div>
			</form:form>
		</div>
	</div>

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
	</script>
</body>
</html>