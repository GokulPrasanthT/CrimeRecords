<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/addPolice.css"%></style>
<meta charset="ISO-8859-1">
<title>Add PoliceDetails</title>

<script type="text/javascript">
		var policeNameCheck = function() {
			var nameRegex = new RegExp("^[a-zA-z\s]+$");
			if (!document.form.policeName.value.match(nameRegex)) {
				if (alert("Name can't be empty or must contain only alphabets")) {
					document.form.policeName.focus();
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

		var mobileNoCheck = function() {
			var nameRegex = new RegExp("[0-9]{10}");
			if (!document.form.mobileNo.value.match(nameRegex)) {
				if (alert("Mobile number must have 10 digits")) {
					document.form.mobileNo.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
		
		var stationNameCheck = function() {
			var nameRegex = new RegExp("^[a-zA-z\s]+$");
			if (!document.form.stationName.value.match(nameRegex)) {
				if (alert("StationName can't be empty or must contain only alphabets")) {
					document.form.stationName.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}

	</script>
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
					<form:errors path="policeRank" cssClass="text-danger"></form:errors>
				</div>

				<div>
					<label for="policeName">Police Name</label>
					<div>
						<form:input path="policeName" placeholder="Enter Name" required="true"
							pattern="^[a-zA-z\s]+$" onblur="policeNameCheck();"/>
					</div>
					<form:errors path="policeName" cssClass="text-danger"></form:errors>
				</div>

				<div>
					<label for="mobileNo">Mobile Number</label>
					<div>
						<form:input path="mobileNo" placeholder="Enter Mobile Number" required="true"
						 pattern='[0-9]{10}'
							name="phoneNo" onblur="mobileNoCheck();"/>
					</div>
					<form:errors path="mobileNo" cssClass="text-danger"></form:errors>
				</div>

				<div>
					<label for="email">E-Mail</label>
					<div>
						<form:input path="email" placeholder="Enter Email" pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"
							placeholder="Enter Email" name="email" onblur="emailCheck();"/>
					</div>
					<form:errors path="email" cssClass="text-danger"></form:errors>
				</div>

				<div>
					<label for="dateOfbirth">Date Of Birth</label>
				
				<div>
					<form:input path="dateOfbirth" type="date"
						style="width: 170px;height: 22px;" />
				</div>
				<form:errors path="dateOfbirth" cssClass="text-danger"></form:errors>
				</div>

				<div>
					<label for="stationName">Station Name</label>
					<div>
						<form:input path="stationName" placeholder="Enter Station Name" required="true"
							pattern="^[a-zA-z\s]+$" onblur="stationNameCheck();"/>
					</div>
					<form:errors path="stationName" cssClass="text-danger"></form:errors>
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