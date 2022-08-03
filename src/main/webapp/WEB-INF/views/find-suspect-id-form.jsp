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
			<form:form action="" method="get" modelAttribute="findsuspectById">
				<div>
					<label for="suspectId">Suspect_Id</label>
					<div>
						<form:input path="suspectId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="suspectName">Suspect_Name</label>
					<div>
						<form:input path="suspectName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="suspectIdentity">Suspect_Identity</label>
					<div>
						<form:input path="suspectIdentity" readonly="true" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateofbirth">DOB</label>
					<div>
						<form:input path="dateofbirth" readonly="true" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true" />
					</div>
				</div>
				<div>
					<form:button>Find Suspect ID</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>