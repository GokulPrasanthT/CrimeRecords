<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	background-image:
		url('https://image.shutterstock.com/image-photo/crime-scene-tape-blurred-forensic-260nw-579245569.jpg');
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
<title>Add CrimeDetails</title>
</head>
<h1 align="center">Crime Records</h1>
<body>
	<div id="root">
		<div id="form" align="center">
			<table border="20" width="10%" cellpadding="1">
				<form:form action="addcrimedetail" method="post"
					modelAttribute="addcrimedetails">
					<tr>
						<div>
							<td><label for="suspectId">Suspect ID</label></td>
							<div>
								<td><form:input path="suspectId"
										placeholder="Enter Suspect Id" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="crimelocation">Crime Location</label></td>
							<div>
								<td><form:input path="crimelocation"
										placeholder="Enter Location" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="date">Date Of Issue</label></td>
							<div>
								<td><form:input path="date" type="date" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="offencetype"> Type Of Offence</label></td>
							<div>
								<td><form:input path="offencetype"
										placeholder="Enter Offense" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="complaintid">Complaint ID</label></td>
							<div>
								<td><form:input path="complaintid"
										placeholder="Enter Complaint Id" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="image">img</label></td>
							<div>
								<td><form:input path="image" placeholder="Enter Image" /></td>
							</div>
						</div>
					</tr>
					<br>
					<td colspan="5" align="center"><br> <form:button>Submit</form:button></td>
					</div>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>