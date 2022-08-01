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
					<label for="Suspect_Id">Suspect ID</label>
					<div>
						<form:input path="Suspect_Id" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Crime_Location">Crime Location</label>
					<div>
						<form:input path="Crime_Location" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Issue_Date">Issue Date</label>
					<div>
						<form:input path="Issue_Date" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Type_Of_Offence">Type OF Offence</label>
					<div>
						<form:input path="Type_Of_Offence" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Complaint_Id">Complaint ID </label>
					<div>
						<form:input path="Complaint_Id" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Image">Image</label>
					<div>
						<form:input path="Image" readonly="true" />
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