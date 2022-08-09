<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add PoliceDetails</title>
</head>
<body>
	<h1 align="center">Add Police Details</h1>
	<div id="root">
		<div id="form" align="center">
			<table>
				<form:form action="addpolicedetail" method="post"
					modelAttribute="addpolicedetails">
					<tr>
						<div>
							<td><label for="policeId">Police ID</label></td>
							<div>
								<td><form:input path="policeId" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="policeRank">Police Rank</label></td>
							<div>
								<td><form:input path="policeRank" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="policeName">Police Name</label></td>
							<div>
								<td><form:input path="policeName" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="mobileNo">Mobile Number</label></td>
							<div>
								<td><form:input path="mobileNo" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="email">E-Mail</label></td>
							<div>
								<td><form:input path="email" /></td>
							</div>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="dateOfbirth">Date_Of_Birth</label></td>
						</div>
						<div>
							<td><form:input path="dateOfbirth" /></td>
						</div>
					</tr>
					<tr>
						<div>
							<td><label for="stationName">Station Name</label></td>
							<div>
								<td><form:input path="stationName" /></td>
							</div>
						</div>
					</tr>
					<div>
						<div>
							<td colspan="5" align="center"><br> <form:button>Submit</form:button></td>
						</div>
					</div>
				</form:form>
			</table>
		</div>
	</div>
</body>
</html>