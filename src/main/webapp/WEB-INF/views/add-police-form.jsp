<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
h1 {
	color: #800000;
	float: center;
	text-align: center;
}

tr {
	color: red;
}

label {
	color: #403333;
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
	backdrop-filter: blur(10px);
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

body {
	background-image:
		url('https://thumbs.dreamstime.com/b/close-up-complain-stamp-document-red-seal-stamped-complaint-form-fountain-pen-macro-shot-99013049.jpg');
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
<title>Add PoliceDetails</title>
</head>
<body>
	<h1>Register Police Form</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addpolicedetail" method="post"
				modelAttribute="addpolicedetails">

				<div>
					<label for="policeRank">Police Rank</label>
					<div>
						<form:input path="policeRank" placeholder="Enter Rank" />
					</div>
				</div>

				<div>
					<label for="policeName">Police Name</label>
					<div>
						<form:input path="policeName" placeholder="Enter Name" />
					</div>
				</div>

				<div>
					<label for="mobileNo">Mobile Number</label>
					<div>
						<form:input path="mobileNo" placeholder="Enter Mobile Number" />
					</div>
				</div>

				<div>
					<label for="email">E-Mail</label>
					<div>
						<form:input path="email" placeholder="Enter Email" />
					</div>
				</div>

				<div>
					<label for="dateOfbirth">Date Of Birth</label>
				</div>
				<div>
					<form:input path="dateOfbirth" type="date"
						style="width: 170px;height: 22px;" />
				</div>

				<div>
					<label for="stationName">Station Name</label>
					<div>
						<form:input path="stationName" placeholder="Enter Station Name" />
					</div>
				</div>

				<div>
					<div>
						<br>
						<form:button id="log">Submit</form:button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>