<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add PoliceDetails</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="addpolicedetail" method="post"
				modelAttribute="addpolicedetails">
				<div>
					<label for="policeId">Police ID</label>
					<div>
						<form:input path="policeId" />
					</div>
				</div>
				<div>
					<label for="policeRank">Police Rank</label>
					<div>
						<form:input path="policeRank" />
					</div>
				</div>
				<div>
					<label for="policeName">Police Name</label>
					<div>
						<form:input path="policeName" />
					</div>
				</div>
				<div>
					<label for="mobileNo">Mobile Number</label>
					<div>
						<form:input path="mobileNo" />
					</div>
				</div>
				<div>
					<label for="email">E-Mail</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="dateOfbirth">Date_Of_Birth</label>
				</div>
				<div>
					<form:input path="dateOfbirth" />
				</div>
				<div>
					<label for="stationName">Station Name</label>
					<div>
						<form:input path="stationName" />
					</div>
					</div>
					<div>
					<div>
						<form:button>Add Police Details</form:button>
					</div>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>