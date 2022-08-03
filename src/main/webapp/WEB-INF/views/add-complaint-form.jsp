<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Complaint</title>
</head>
<body>
	<h1 align="center">Add Complaint</h1>
	<div id="root">
		<div id="form" align="center">
			<table>
				<form:form action="addcomplaints" method="post"
					modelAttribute="addcomplaintdetail">
					<tr>
						<div>
							<td><label for="complaintId">Complaint ID</label></td>
							<div>
								<td><form:input path="complaintId" /></td>
							</div>
						</div>
					</tr>

					<tr>
						<div>
							<td><label for="typeofcomplaint">Type_Of_Complaint</label></td>
							<div>

								<td><form:input path="typeofcomplaint" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="registeredstation">Registered_Station</label></td>
							<div>
								<td><form:input path="registeredstation" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="complaintstatus">complaint_Status</label></td>
							<div>
								<td><form:input path="complaintstatus" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="datetime">Date_Time</label></td>
							<div>
								<td><form:input path="datetime" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="policeId">Police_ID</label></td>
						</div>
						<div>
							<td><form:input path="policeId" /></td>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="userid">User_ID</label></td>
						</div>
						<div>
							<td><form:input path="userid" /></td>
						</div>
					</tr>
					<br>
					<tr>
						<div>
							<div>
					</tr>
					<tr>
						<div>
						<td colspan="5"><form:button>Add Complaint</form:button></td>
					</tr>
					</div>
					</div>
					</div>
				</form:form>
			</table>
		</div>

	</div>
</body>
</html>