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
<title>Add Complaint</title>
</head>
<body style='background-color: beige;'>
	<h1 align="center">Add Complaint</h1>
	<div id="root">
		<div id="form" align="center">
			<table border="30" width="10%" cellpadding="1">
				<form:form action="addcomplaints" method="post"
					modelAttribute="addcomplaintdetail">
					<tr>
						<div>
							<td><label for="typeofcomplaint">Type_Of_Complaint</label></td>
							<div>

								<td><form:input path="typeofcomplaint" /></td>
							</div>
							<form:errors path="typeofcomplaint" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="complaintdescription">Complaint_Description</label></td>
							<div>
								<td><form:input path="complaintdescription" /></td>
							</div>
							<form:errors path="complaintdescription" cssClass="text-danger"></form:errors>
						</div>
					</tr>


					<tr>
						<div>
							<td><label for="date">Issue_Date</label></td>
							<div>
								<td><form:input path="date" type="date" /></td>
							</div>
							<form:errors path="date" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="time">Issue_Time</label></td>
							<div>
								<td><form:input path="time" type="time" /></td>
							</div>
							<form:errors path="time" cssClass="text-danger"></form:errors>
						</div>
					</tr>

					<tr>
						<div>
							<td><label for="userid">User_ID</label></td>
						</div>
						<div>
							<td><form:input path="userid" /></td>
						</div>
						<form:errors path="userid" cssClass="text-danger"></form:errors>
					</tr>
					<tr>
						<div>
							<td><label for="registeredstation">Registered_Station</label></td>
							<div>
								<td><form:input path="registeredstation"
										placeholder="Enter Registered Station" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="policeId">Police ID</label></td>
							<div>
								<td><form:input path="policeId" value="0" /></td>
							</div>
							<form:errors path="policeId" cssClass="text-danger"></form:errors>
						</div>
					</tr>
					<tr>
						<td><label for="complaintId">Complaint ID</label></td>
						<div>
							<td><form:input path="complaintId"
									placeholder="Enter Complaint Id" /></td>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="complaintstatus">complaint_Status</label></td>
							<div>
								<td><form:input path="complaintstatus"
										placeholder="Enter Status" value="pending" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td colspan="5" align="center"><br> <form:button>Submit</form:button></td>
					</tr>
					</div>

				</form:form>
			</table>
		</div>
	</div>
</body>
</html>