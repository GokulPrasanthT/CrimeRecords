<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/addCrime.css"%></style>
<meta charset="ISO-8859-1">
<title>Add CrimeDetails</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>

<script type="text/javascript">

var offencetypeCheck = function() {
			var offencetypeRegex = new RegExp("^[a-zA-z\s]+$");
			if (!document.form.offencetype.value.match(nameRegex)) {
				if (alert("Name can't be empty or must contain only alphabets")) {
					document.form.offencetype.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
		
		 var dateCheck = function(){
		    let date = document.getElementById('date').value;
		    let now = new Date();
		    let dt1 = Date.parse(now),
		        dt2 = Date.parse(date);
		    
		    if (dt2 > dt1) {
		        alert("Date must be in the past or present");
		    }
		}
		 </script>
</head>
<h1>Crime Records</h1>
<body>
	<div id="root">
		<div id="form" class="box">
			
				<form:form action="addcrimedetail" method="post"
					modelAttribute="addcrimedetails">
					
						<div>
							<label for="suspectId">Suspect ID</label>
							<div>
								<form:input path="suspectId"
										placeholder="Enter Suspect Id" style="width: 300px;height:25px;"/>
							</div>
							<form:errors path="suspectId" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="crimelocation">Crime Location</label>
							<div>
								<form:input path="crimelocation"
										placeholder="Enter Location" style="width: 300px;height:25px;"/>
							</div>
							<form:errors path="crimelocation" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="date">Date Of Issue</label>
							<div>
							<form:input path="date" type="date" pattern="^[a-zA-z\s]+$" name="date" onblur="dateCheck();" style="width: 300px;height:25px;"/>
							</div>
							<form:errors path="date" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="offencetype"> Type Of Offence</label>
							<div>
							<form:input path="offencetype"
										placeholder="Enter Offense" pattern="^[a-zA-z\s]+$" name="offencetype" onblur="offencetypeCheck();" style="width: 300px;height:25px;"/>
							</div>
							<form:errors path="offencetype" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="complaintid">Complaint ID</label>
							<div>
								<form:input path="complaintid"
										placeholder="Enter Complaint Id" style="width: 300px;height:25px;"/>
							</div>
							<form:errors path="complaintid" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="image"></label>
							<div>
								<form:input path="image" placeholder="Enter Image" type="hidden" style="width: 300px;height:25px;"/>
							</div>
							<form:errors path="image" cssClass="text-danger"></form:errors>
						</div>
					
					<br>
					 <form:button id="log">Submit</form:button>
				</form:form>
		</div>
	</div>
	
<div>
     <a href="/users/admin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
</div>

</body>
</html>