<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
h1 {
	color: #008080;
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
}

#log {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

body {
	background-image:
		url('https://us.123rf.com/450wm/fokusiert/fokusiert2003/fokusiert200300022/143956074-explaining-instead-of-complaining-hand-turns-dice-and-changes-the-word-complain-to-explain-.jpg?ver=6');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Add Complaint</title>
</head>
<body>
	<h1>Add Complaint</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addcomplaints" method="post"
				modelAttribute="addcomplaintdetail">
				<div>
					<label for="typeofcomplaint">Type Of Complaint</label>
					<div>
						<form:input path="typeofcomplaint"
							placeholder="Enter Type of Complaint" />
					</div>
					<form:errors path="typeofcomplaint" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="complaintdescription">Complaint Description</label>
					<div>
						<form:input path="complaintdescription"
							placeholder="Enter Complaint Describtion" />
					</div>
					<form:errors path="complaintdescription" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="date">Issue Date</label>
					<div>
						<form:input path="date" type="date" />
					</div>
					<form:errors path="date" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="time">Issue Time</label>
					<div>
						<form:input path="time" type="time" />
					</div>
					<form:errors path="time" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="userid">User ID</label>
				</div>
				<div>
					<form:input path="userid" placeholder="Enter User Id"
						readonly="true" />
				</div>
				<form:errors path="userid" cssClass="text-danger"></form:errors>
				<div>
					<label for="registeredstation">Register Station</label>
					<div>
						<form:input path="registeredstation"
							placeholder="Enter Registered Station" />
					</div>
				</div>
				<div>
					<label for="policeId">Police ID</label>
					<div>
						<form:input path="policeId" value="0" readonly="true" />
					</div>
					<form:errors path="policeId" cssClass="text-danger"></form:errors>
				</div>
				<label for="complaintId">Complaint ID</label>
				<div>
					<form:input path="complaintId" hidden="hidden" />
				</div>
				<div>
					<label for="complaintstatus">Complaint Status</label>
					<div>
						<form:input path="complaintstatus" value="...Pending..." readonly="true" />
					</div>
				</div>
				<div>
					<form:button id="log">Submit</form:button>

				</div>
			</form:form>
		</div>
	</div>
</body>
</html>