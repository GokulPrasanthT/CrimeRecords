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
			<form:form action="" method="get" modelAttribute="viewuser">
				<div>
					<label for="Police_Id">User Name</label>
					<div>
						<form:input path="Police_Id" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Police_Rank">User Password</label>
					<div>
						<form:input path="Police_Rank" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Police_Name">User ID</label>
					<div>
						<form:input path="Police_Name" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Mobile_No">DOB</label>
					<div>
						<form:input path="Mobile_No" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Email">Gender</label>
					<div>
						<form:input path="Email" readonly="true" />
					</div>
				</div>
				<div>
					<label for="DOB">Phone No</label>
					<div>
						<form:input path="DOB" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Station_Name">Email</label>
					<div>
						<form:input path="Station_Name" readonly="true" />
					</div>
					<div>
						<form:button>Find Police ID</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>