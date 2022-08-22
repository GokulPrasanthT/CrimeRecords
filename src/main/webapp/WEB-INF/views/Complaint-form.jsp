<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style><%@include file="/WEB-INF/views/cssfile/addComplaint.css"%></style>
<meta charset="ISO-8859-1">
<title>Add Complaint</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>


<script type="text/javascript">
		var typeofcomplaintCheck = function() {
			var nameRegex = new RegExp("^[a-zA-z\s]+$");
			if (!document.form.typeofcomplaint.value.match(nameRegex)) {
				if (alert("Name can't be empty or must contain only alphabets")) {
					document.form.typeofcomplaint.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
		
	</script>
</head>
<body>
	<h1>Add Complaint</h1>
	<div id="root">
		<div id="form" class="box">
			<form:form action="addcomplaints" method="post"
				modelAttribute="addcomplaintdetail">
				<div>
					<label for="typeofcomplaint">Type Of Complaint</label>
					<div>
						<form:input path="typeofcomplaint"
							placeholder="Enter Type of Complaint" class="form-control" required="true" pattern="^[a-zA-z\s]+$" onblur="typeofcomplaintCheck();" style="width:300;height:25;"/>
					</div>
					<form:errors path="typeofcomplaint" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="complaintdescription">Complaint Description</label>
					<div>
						<form:input path="complaintdescription"
							placeholder="Enter Complaint Describtion" style="width:300;height:25;"/>
					</div>
					<form:errors path="complaintdescription" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="date">Issue Date</label>
					<div>
						<form:input path="date" type="date" style="width:300;height:25;"/>
					</div>
					<form:errors path="date" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="time">Issue Time</label>
					<div>
						<form:input path="time" type="time" style="width:300;height:25;"/>
					</div>
					<form:errors path="time" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="userid">User ID</label>
				<div>
					<form:input path="userid" placeholder="Enter User Id"
						readonly="true" style="width:300;height:25;"/>
				</div>
				</div>
				<form:errors path="userid" cssClass="text-danger"></form:errors>
				<div>
					<label for="registeredstation">Register Station</label>
					<div>
						<form:input path="registeredstation"
							placeholder="Enter Registered Station" style="width:300;height:25;"/>
					</div>
				</div>
				<div>
					<label for="policeId">Police ID</label>
					<div>
						<form:input path="policeId" value="0" readonly="true" style="width:300;height:25;"/>
					</div>
					<form:errors path="policeId" cssClass="text-danger"></form:errors>
				</div>
				<div>
					<label for="complaintstatus">Complaint Status</label>
					<div>
						<form:input path="complaintstatus" value="...Pending..." readonly="true" style="width:300;height:25;"/>
					</div>
				</div>
				<br>
				<div>
					<form:button id="log">Submit</form:button>

				</div>
			</form:form>
		</div>
	</div>
	
	
	<div>
          <a href="/users/userlogin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
                </div>
</body>
</html>