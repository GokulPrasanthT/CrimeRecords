<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Complaint</title>
</head>
<body style='background-color: beige;'>
	<h1 align="center">Complaint Register</h1>
	<div id="root">
		<div id="form" align="center">
			<table border="20" width="10%" cellpadding="1">
				<form:form action="addcomplaints" method="post"
					modelAttribute="addcomplaintdetail">
					<tr>
						<div>
							<td><label for="complaintId">Complaint ID</label></td>
							<div>
								<td><form:input path="complaintId"
										placeholder="Enter Complaint Id" /></td>
							</div>
							<form:errors path="complaintId" cssClass="text-danger"></form:errors>
						</div>
					</tr>

					<tr>
						<div>
							<td><label for="typeofcomplaint">Type_Of_Complaint</label></td>
							<div>

								<td><form:input path="typeofcomplaint"
										placeholder="Enter Complaint Type" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="complaintdescription">Complaint_Description</label></td>
							<div>
								<td><form:input path="complaintdescription"
										placeholder="Enter Complaint Description" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="registeredstation">Registered_Station</label></td>
							<div>
								<td><form:input path="registeredstation"
										placeholder="Enter Registered Station" readonly="true" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="complaintstatus">complaint_Status</label></td>
							<div>
								<td><form:input path="complaintstatus"
										placeholder="Enter Status" readonly="true" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="date">Issue_Date</label></td>
							<div>
								<td><form:input path="date" type="date" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="time">Issue_Time</label></td>
							<div>
								<td><form:input path="time" type="time" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="policeId">Police_ID</label></td>
						</div>
						<div>
							<td><form:input path="policeId"
									placeholder="Enter Police Id" readonly="true" /></td>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userid">User_ID</label></td>
						</div>
						<div>
							<td><form:input path="userid" placeholder="Enter User Id" /></td>
						</div>
					</tr>
					<br>
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