<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/addSuspect.css"%>
</style>
<meta charset="ISO-8859-1">
<title>Add Suspect</title>

<script type="text/javascript">

		var suspectNameCheck = function() {
			var suspectNameRegex = new RegExp("^[a-zA-z\s]+$");
			if (!document.form.suspectName.value.match(nameRegex)) {
				if (alert("Name can't be empty or must contain only alphabets")) 
				{
					document.form.suspectName.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
		
		var suspectIdentityCheck = function() {
			var suspectIdentityRegex = new RegExp("^[a-zA-z\s]+$");
			if (!document.form.suspectIdentity.value.match(nameRegex)) {
				if (alert("Name can't be empty or must contain only alphabets")) 
				{
					document.form.suspectIdentity.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
		
		 var dateofbirthCheck = function(){
			    let date = document.getElementById('dateofbirth').value;
			    let now = new Date();
			    let dt1 = Date.parse(now),
			        dt2 = Date.parse(date);
			    
			    if (dt2 > dt1) {
			        alert("Date must be in the past or present");
			    }
			}
		
		</script>
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
								<form:input path="suspectName" placeholder="Enter Name" required="true"
							pattern="^[a-zA-z\s]+$" name="suspectName" onblur="suspectNameCheck();" style="width: 300px;height:25px;"/>
							</div>
									<form:errors path="suspectName" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
						<label for="suspectIdentity">Suspect_Identity</label>
							<div>
								<form:input path="suspectIdentity" placeholder="Enter Identification" required="true"  pattern="^[a-zA-z\s]+$" name="suspectIdentity" onblur="suspectIdentityCheck();" style="width: 300px;height:25px;"/>
							</div>
									<form:errors path="suspectIdentity" cssClass="text-danger"></form:errors>
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
							<form:errors path="gender" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="dateofbirth">DOB</label>
							<div>
								<form:input path="dateofbirth" type="date" required="true" name="dateofbirth" onblur="dateofbirthCheck();" style="width: 300px;height:25px;"/>/>
							</div>
									<form:errors path="dateofbirth" cssClass="text-danger"></form:errors>
						</div>
					
						<div>
							<label for="address">Address</label>
						
						<div>
							<form:input path="address" placeholder="Enter Address" required="true" style="width: 300px;height:25px;"/>
						</div>
								<form:errors path="address" cssClass="text-danger"></form:errors>
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
<div>
     <a href="/users/admin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
</div>
</body>
</html>