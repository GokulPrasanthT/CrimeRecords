<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<style type="text/css">
<%@include file="/WEB-INF/views/cssfile/user-login.css"%></style>
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
      
      <div>
           <a href="/users/index"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
                </div>
	
</body>
</html>