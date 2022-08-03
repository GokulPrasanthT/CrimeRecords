<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FindBy UserID</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="finduserById">
				<div>
					<label for="complaintId">Complaint ID</label>
					<div>
						<form:input path="complaintId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="typeofcomplaint">Type_Of_Complaint</label>
					<div>
						<form:input path="typeofcomplaint" readonly="true" />
					</div>
				</div>
				<div>
					<label for="registeredstation">Registered_Station</label>
					<div>
						<form:input path="registeredstation" readonly="true" />
					</div>
				</div>
				<div>
					<label for="complaintstatus">complaint_Status</label>
					<div>
						<form:input path="complaintstatus" readonly="true" />
					</div>
				</div>
				<div>
					<label for="datetime">Date_Time</label>
					<div>
						<form:input path="datetime" readonly="true" />
					</div>
				</div>
				<div>
					<label for="policeId">Police_ID</label>
					<div>
						<form:input path="policeId" readonly="true" />
					</div>
				</div>
				<div>
					<form:button>Find Crime ID</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>