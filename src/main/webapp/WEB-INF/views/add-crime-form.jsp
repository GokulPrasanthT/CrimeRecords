<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/addCrime.css"%></style>
<meta charset="ISO-8859-1">
<title>Add CrimeDetails</title>
</head>
<h1>Crime Records</h1>
<body>
	<div id="root">
		<div id="form" class="box">
			
				<form:form action="addcrimedetail" method="post"
					modelAttribute="addcrimedetails">
					
						<div>
							<label for="suspectId">Suspect ID</label>
							<div>
								<form:input path="suspectId"
										placeholder="Enter Suspect Id" />
							</div>
						</div>
					
						<div>
							<label for="crimelocation">Crime Location</label>
							<div>
								<form:input path="crimelocation"
										placeholder="Enter Location" />
							</div>
						</div>
					
						<div>
							<label for="date">Date Of Issue</label>
							<div>
							<form:input path="date" type="date" />
							</div>
						</div>
					
						<div>
							<label for="offencetype"> Type Of Offence</label>
							<div>
							<form:input path="offencetype"
										placeholder="Enter Offense" />
							</div>
						</div>
					
						<div>
							<label for="complaintid">Complaint ID</label>
							<div>
								<form:input path="complaintid"
										placeholder="Enter Complaint Id" />
							</div>
						</div>
					
						<div>
							<label for="image">img</label>
							<div>
								<form:input path="image" placeholder="Enter Image" />
							</div>
						</div>
					
					<br>
					 <form:button id="log">Submit</form:button>
				</form:form>
		</div>
	</div>
</body>
</html>