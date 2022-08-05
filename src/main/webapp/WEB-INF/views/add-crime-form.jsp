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
					<label for="Suspect_Id">Suspect ID</label>
					<div>
						<form:input path="Suspect_Id" />
					</div>
				</div>
				<div>
					<label for="Crime_Location">Crime Location</label>
					<div>
						<form:input path="Crime_Location" />
					</div>
				</div>
				<div>
					<label for="Issue_Date">Date Of Issue</label>
					<div>
						<form:input path="Issue_Date" />
					</div>
				</div>
				<div>
					<label for="Type_Of_Offence"> Type Of Offence</label>
					<div>
						<form:input path="Type_Of_Offence" />
					</div>
				</div>
				<div>
					<label for="Complaint_Id">Complaint ID</label>
					<div>
						<form:input path="Complaint_Id" />
					</div>
				</div>
				<div>
					<label for="Image">img</label>
					<div>
						<form:input path="Image" />
					</div>
				</div>
				<form:button>Submit</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>