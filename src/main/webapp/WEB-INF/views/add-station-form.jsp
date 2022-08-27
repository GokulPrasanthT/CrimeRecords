<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Station Form</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
</head>
<body>
	<h1>Station Form</h1>
	<div id="root">
		<div id="form">
			<form:form action="addstation" method="post"
				modelAttribute="addStation">

				<div>
					<label for="stationName">Station Name</label>
					<div>
						<form:input path="stationName" placeholder="Enter Rank" />
					</div>
					<form:errors path="stationName" cssClass="text-danger"></form:errors>
				</div>

				<div>
					<label for="stationLocation">Station Location</label>
					<div>
						<form:input path="stationLocation" placeholder="Enter Rank" />
					</div>
					<form:errors path="stationLocation" cssClass="text-danger"></form:errors>
				</div>
				
				<br>
				
				<div>
					<form:button>Submit</form:button>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>