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
			<form:form action="" method="get" modelAttribute="findcrimeid">
				<div>
					<label for="suspectId">Suspect ID</label>
					<div>
						<form:input path="suspectId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="crimelocation">Crime Location</label>
					<div>
						<form:input path="crimelocation" readonly="true" />
					</div>
				</div>
				<div>
					<label for="date">Issue Date</label>
					<div>
						<form:input path="date" readonly="true" />
					</div>
				</div>
				<div>
					<label for="offencetype">Type OF Offence</label>
					<div>
						<form:input path="offencetype" readonly="true" />
					</div>
				</div>
				<div>
					<label for="complaintid">Complaint ID </label>
					<div>
						<form:input path="complaintid" readonly="true" />
					</div>
				</div>
				<div>
					<label for="image">Image</label>
					<div>
						<form:input path="image" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>