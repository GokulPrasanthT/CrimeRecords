<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>FindBy UserID</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findpoliceById">
				<div>
					<label for="policeId">Police Id</label>
					<div>
						<form:input path="policeId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="policeRank">Police Rank</label>
					<div>
						<form:input path="policeRank" readonly="true" />
					</div>
				</div>
				<div>
					<label for="policeName">Police Name</label>
					<div>
						<form:input path="policeName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="mobileNo">Mobile No</label>
					<div>
						<form:input path="mobileNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateOfbirth">Date Of Birth</label>
					<div>
						<form:input path="dateOfbirth" readonly="true" />
					</div>
				</div>
				<div>
					<label for="stationName">Station Name</label>
					<div>
						<form:input path="stationName" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>