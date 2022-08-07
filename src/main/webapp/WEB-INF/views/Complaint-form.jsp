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
<body style='background-color: beige;'>
	<h1 align="center">Add Complaint</h1>
	<div id="root">
		<div id="form" align="center">
			<table>
				<form:form action="addcomplaints" method="post"
					modelAttribute="addcomplaintdetail">

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
							<td><label for="complaintdescription">Complaint_Description</label></td>
							<div>
								<td><form:input path="complaintdescription" /></td>
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
								<td><form:input path="time" type="date" /></td>
							</div>
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
					<tr>
						<div>
							<td><label for="complaintId">Complaint ID</label></td>
							<div>
								<td><form:input path="complaintId" /></td>
							</div>
						</div>
						<br>
					<tr>
						<div>
							<div>
					</tr>
					<tr>
						<div>
							<td colspan="5" align="center"><br> <form:button>Submit</form:button></td>
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