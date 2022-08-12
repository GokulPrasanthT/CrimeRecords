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
<title>Update Suspect</title>
</head>
<body>
	<h1 align="center">Update Suspect Form</h1>
	<div id="root">
		<div id="form" align="center">
			<form:form action="updatesuspect" method="post"
				modelAttribute="updatsuspectDetails">
				<tr>
					<div>
						<td><label for="suspectId">Suspect_Id</label></td>
						<div>
							<td><form:input path="suspectId" /></td>
						</div>
					</div>
				</tr>
				<tr>
					<div>
						<td><label for="suspectName">Suspect_Name</label></td>
						<div>
							<td><form:input path="suspectName" /></td>
						</div>
					</div>
				</tr>
				<tr>
					<div>
						<td><label for="suspectIdentity">Suspect_Identity</label></td>
						<div>
							<td><form:input path="suspectIdentity" /></td>
						</div>
					</div>
				</tr>
				<tr>
					<div>
						<td><label for="gender">Gender</label></td>
						<div>
							<td><form:input path="gender" /></td>
						</div>
					</div>
				</tr>
				<tr>
					<div>
						<td><label for="dateofbirth">DOB</label></td>
						<div>
							<td><form:input path="dateofbirth" type="date" /></td>
						</div>
					</div>
				</tr>
				<tr>
					<div>
						<td><label for="address">Address</label></td>
					</div>
					<div>
						<td><form:input path="address" /></td>
					</div>
				</tr>
				<div>
					<div>
						<td colspan="5" align="center"><br> <form:button>Update Suspect</form:button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>