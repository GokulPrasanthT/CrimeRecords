<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Suspect</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="updatesuspect" method="post"
				modelAttribute="updatsuspectDetails">
				<div>
					<label for="suspectId">Suspect_Id</label>
					<div>
						<form:input path="suspectId" />
					</div>
				</div>
				<div>
					<label for="suspectName">Suspect_Name</label>
					<div>
						<form:input path="suspectName" />
					</div>
				</div>
				<div>
					<label for="suspectIdentity">Suspect_Identity</label>
					<div>
						<form:input path="suspectIdentity" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="dateofbirth">DOB</label>
					<div>
						<form:input path="dateofbirth" />
					</div>
				</div>
				<div>
				<label for="address">Address</label>
				</div>
				<div>
					<form:input path="address" />
				</div>
					<div>
					<div>
						<form:button>Update Suspect</form:button>
					</div>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>