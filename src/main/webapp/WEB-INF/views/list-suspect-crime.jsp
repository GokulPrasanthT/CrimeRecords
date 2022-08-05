<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supect Crime</title>
</head>
<body>
	<h1 align="center">Add Suspect Details</h1>
	<div id="root">
		<div id="form" align="center">
			<form:form action="addsuspects" method="post"
				modelAttribute="getsuspect">
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

	<br>
	<h1 align="center">Crime List</h1>

	<div id="table root">
		<div align="center">
			<table border="1">
				<thead>
					<tr>
						<th>Suspect_Id</th>
						<th>Crime_Location</th>
						<th>Issue_Date</th>
						<th>Type_Of_Offence</th>
						<th>Complaint_Id</th>
						<th>Image</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="crime" items="${crimelist}">
						<tr>
							<td>${crime.Suspect_Id}</td>
							<td>${crime.Crime_Location}</td>
							<td>${crime.Issue_Date}</td>
							<td>${crime.Type_Of_Offence}</td>
							<td>${crime.Complaint_Id}</td>
							<td>${crime.Image}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>