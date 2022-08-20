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
<body>
	<h1>Complaint Register Form</h1>
	<div id="root">
		<div id="form" class="box">
				<form:form action="addcomplaints" method="post"
					modelAttribute="addcomplaintdetail">
						<div>
							<label for="complaintId">Complaint ID</label>
							<div>
								<form:input path="complaintId"
										placeholder="Enter Complaint Id" />
							</div>
							<form:errors path="complaintId" cssClass="text-danger"></form:errors>
						</div>
						<div>
							<label for="typeofcomplaint">Type_Of_Complaint</label>
							<div>

								<form:input path="typeofcomplaint"
										placeholder="Enter Complaint Type" />
							</div>
					</div>
						<div>
						<label for="complaintdescription">Complaint_Description</label>
							<div>
								<form:input path="complaintdescription"
										placeholder="Enter Complaint Description" />
							</div>
						</div>
					
						<div>
							<label for="registeredstation">Registered_Station</label>
							<div>
								<form:input path="registeredstation"
										placeholder="Enter Registered Station" readonly="true" />
							</div>
						</div>
						<div>
							<label for="complaintstatus">complaint_Status</label>
							<div>
								<form:input path="complaintstatus"
										placeholder="Enter Status" readonly="true" />
							</div>
						</div>
					
						<div>
						<label for="date">Issue_Date</label>
							<div>
							<form:input path="date" type="date" />
							</div>
						</div>
					
						<div>
							<label for="time">Issue_Time</label>
							<div>
								<form:input path="time" type="time" />
							</div>
						</div>
					
						<div>
							<label for="policeId">Police_ID</label>
						</div>
						<div>
							<form:input path="policeId"
									placeholder="Enter Police Id" readonly="true" />
					
						<div>
							<label for="userid">User_ID</label>
						</div>
						</div>
						<div>
							<form:input path="userid" placeholder="Enter User Id" />
						</div>
					
					<br>
					
						<div>
							 <form:button id="log">Submit</form:button>
					</div>
				</form:form>
		</div>
	</div>

</body>
</html>