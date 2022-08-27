<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/findUser-Id.css"%></style>
<meta charset="ISO-8859-1">
<title>FindBy UserID</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
</head>
<body>
	<h1>P r o f i l e</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="post" modelAttribute="finduserById">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userid">User ID</label>
					<div>
						<form:input path="userid" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth">DOB</label>
					<div>
						<form:input path="dateOfBirth" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneno">Phone No</label>
					<div>
						<form:input path="phoneno" readonly="true" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" readonly="true" />
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>

	<div>
		<a href="/users/welcome"><button class="button3">
				<em class="gg-arrow-left-r"></em>
			</button></a>
	</div>
</body>
</html>