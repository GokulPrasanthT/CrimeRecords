<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<
style type ="text /css ">h1 {
	color: #008080;
	float: center;
	text-align: center;
}

h1 {
	float: center;
	text-align: center;
}

tr {
	color: red;
}

label {
	color: black;
	font-size: 1.2em;
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
	color: black;
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
	font-weight: 400;
	width: 400px;
	backdrop-filter: blur(10px);
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

body {
	background-image:
		url('https://media.istockphoto.com/photos/red-exclamation-mark-on-wooden-floor-and-concrete-wall-3d-warning-picture-id1128969284?k=20&m=1128969284&s=612x612&w=0&h=7_SIGimhXnrrv2Mh_TlSG8oN_DIGeHxOIc0-z1SxLxA=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-color: #080710;
}
</style>
<meta charset="ISO-8859-1">
<title>FindBy UserID</title>
</head>
<body>
<h1> P r o f i l e </h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="" method="get" modelAttribute="finduserById">
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
</body>
</html>