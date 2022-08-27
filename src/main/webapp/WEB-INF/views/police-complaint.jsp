<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/police-complaint.css"%></style>
<meta charset="ISO-8859-1">
<title>Police Complaint</title>
</head>
<body>
	<h1>View Police Complaint</h1>
	<div>
		<div id="form">
			<div class="box">
				<form action="getlistpolicecomplaint">
					<div>
						  <label for="policeId">Enter PoliceId</label>
						<div>
							  <input type="text" id="policeId"
								name="policeId" required placeholder="Enter Police Id"/>                        
						</div>
					</div>
					       <input id="log" type="submit" value="get" />  
				</form>
			</div>
		</div>
	</div>
	
<div>
     <a href="/users/admin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
</div>

</body>
</html>