<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/suspectList.css"%></style>
<meta charset="ISO-8859-1">
<title>Suspect Records</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
</head>
<body>
	<h1>S u s p e c t__R e c o r d s</h1>
	<div id="table root">
		<div>
			<table border="1" class="center">
				<caption></caption>
				<thead>
					<tr>
						<th>Suspect_Id</th>
						<th>Suspect_Name</th>
						<th>Suspect_Identity</th>
						<th>Gender</th>
						<th>DOB</th>
						<th>Address</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="suspect" items="${viewsuspectDetails}">
						<tr>
							<td>${suspect.suspectId}</td>
							<td>${suspect.suspectName}</td>
							<td>${suspect.suspectIdentity}</td>
							<td>${suspect.gender}</td>
							<td>${suspect.dateofbirth}</td>
							<td>${suspect.address}</td>
							<td><a href="updatesuspectform?suspectId=${suspect.suspectId}">
									<input onclick="change()" type="button" value="Update"
									id="myButton1"></input>
							</a></td>
							<td><a href="deletesuspectid?suspectId=${suspect.suspectId}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
<div>
     <a href="/users/admin"><button class="button3"><em class="gg-arrow-left-r"></em></button></a>
</div>
</body>
</html>