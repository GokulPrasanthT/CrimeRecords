<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
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
<title>Update CrimeDetails</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatecrime" method="post"
				modelAttribute="updatecrimeDetail">
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
				<form:button>Submit</form:button>
		</div>
		</form:form>
	</div>
</body>
</html>