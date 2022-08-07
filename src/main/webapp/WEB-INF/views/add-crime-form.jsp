<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add CrimeDetails</title>
</head>
<h1 align="center">Crime Records</h1>
<body>
	<div id="root">
		<div id="form" align="center">
			<form:form action="addcrimedetail" method="post"
				modelAttribute="addcrimedetails">
				<div>
					<label for="suspectId">Suspect ID</label>
					<div>
						<form:input path="suspectId" />
					</div>
				</div>
				<div>
					<label for="crimelocation">Crime Location</label>
					<div>
						<form:input path="crimelocation" />
					</div>
				</div>
				<div>
					<label for="date">Date Of Issue</label>
					<div>
						<form:input path="date" />
					</div>
				</div>
				<div>
					<label for="offencetype"> Type Of Offence</label>
					<div>
						<form:input path="offencetype" />
					</div>
				</div>
				<div>
					<label for="complaintid">Complaint ID</label>
					<div>
						<form:input path="complaintid" />
					</div>
				</div>
				<div>
					<label for="image">img</label>
					<div>
						<form:input path="image" />
					</div>
				</div>
				<br>
				<form:button align="center">Submit</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>