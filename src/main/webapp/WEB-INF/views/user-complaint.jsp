<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Complaint</title>
<style>
<%@include file="/WEB-INF/views/cssfile/user-complaint.css"%></style>
</head>
<body>
	<h1>View Users Complaint</h1>
	   
	<div>
		       
		<div id="form">
			           
			<div class="box">
				               
				<form action="getlistusercomplaint">
					                   
					<div>
						                        <label for="userid">Enter
							UserId</label>                        
						<div>
							                           
							<input type="text" id="userid" name="userid" required  placeholder="Enter User Id"/>
							                       
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