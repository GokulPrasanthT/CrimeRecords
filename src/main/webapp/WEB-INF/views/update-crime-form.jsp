<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update CrimeDetails</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatecrime" method="post"
				modelAttribute="updatecrimeDetail">
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
				<form:button>Update Police Details</form:button>
		</div>
		</form:form>
	</div>
	</div>
</body>
</html>