<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style><%@include file="/WEB-INF/views/cssfile/listsuspectCrime.css"%></style>
<meta charset="ISO-8859-1">
<title>Supect Crime</title>
</head>
<body>
	<h1>Suspect Crime Details</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addsuspects" method="post"
				modelAttribute="getsuspect">
				

					<div>
						<label for="suspectId">Suspect_Id</label>
						<div>
							<form:input path="suspectId" readonly="true"/>
						</div>
					</div>
					<div>
						<label for="suspectName">Suspect_Name</label>
						<div>
							<form:input path="suspectName" readonly="true"/>
						</div>
					</div>
				
					<div>
						<label for="suspectIdentity">Suspect_Identity</label>
						<div>
							<form:input path="suspectIdentity" readonly="true"/>
						</div>
					</div>
				
					<div>
						<label for="gender">Gender</label>
						<div>
							<form:input path="gender" readonly="true"/>
						</div>
					</div>
				
					<div>
						<label for="dateofbirth">DOB</label>
						<div>
							<form:input path="dateofbirth" type="date" readonly="true"/>
						</div>
					</div>
				
					<div>
						<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true"/>
					</div>
					</div>
			</form:form>
		</div>
	</div>
	<br>
	
	<h1>Crime List</h1>

	<div id="table root">
		<div>
			<table border="1" class="center">
			<caption></caption>
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
							<td>${crime.suspectId}</td>
							<td>${crime.crimelocation}</td>
							<td>${crime.date}</td>
							<td>${crime.offencetype}</td>
							<td>${crime.complaintid}</td>
							<td>${crime.image}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>