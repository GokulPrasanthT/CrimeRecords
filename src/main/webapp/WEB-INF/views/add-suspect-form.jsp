<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/addSuspect.css"%></style>
<meta charset="ISO-8859-1">
<title>Add Suspect</title>
</head>
<body>
	<h1>Add Suspect Records</h1>
	<div id="root">
			<div id="form" class="box">
				<form:form action="addsuspects" method="post"
					modelAttribute="addsuspectdetail">
					
						<div>
							<label for="suspectName">Suspect_Name</label>
							<div>
								<form:input path="suspectName" placeholder="Enter Name"/>
							</div>
						</div>
					
						<div>
						<label for="suspectIdentity">Suspect_Identity</label>
							<div>
								<form:input path="suspectIdentity" placeholder="Enter Identification"/>
							</div>
						</div>
					
						<div>
					<label for="gender" id="label"> Gender:</label>
					<div>
						<form:radiobutton path="gender" value="Male" />
						Male:
						<form:radiobutton path="gender" value="Female" />
						Female:
						<form:radiobutton path="gender" value="Others" />
						Others:
					</div>
						</div>
					
						<div>
							<label for="dateofbirth">DOB</label>
							<div>
								<form:input path="dateofbirth" type="date" />
							</div>
						</div>
					
						<div>
							<label for="address">Address</label>
						</div>
						<div>
							<form:input path="address" placeholder="Enter Address"/>
						</div>
						<br>
					<div>
						<div>
							 <form:button id="log"> Submit </form:button>
						</div>
					</div>
				</form:form>
	</div>
	</div>
</body>
</html>