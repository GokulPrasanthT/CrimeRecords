<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style><%@include file="/WEB-INF/views/cssfile/suspect-crime.css"%></style>
<meta charset="ISO-8859-1">
<title>Suspect Crime Details</title>
</head>
<body>
<h1>View Suspect_Crime</h1>
	   
	<div>
		       
		<div id="form">
			           
			<div class="box">
				               
				<form action="getlistsuspectcrime">
					               
					<div>
						                        <label for="suspectId">Enter UserId</label>
						                     
						<div>
							                          <input type="text" id="suspectId"
								name="suspectId" required  placeholder="Enter Suspect Id" />                        
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