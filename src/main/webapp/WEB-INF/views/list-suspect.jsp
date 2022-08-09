<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Police Records</title>
<head>
<style>
table, tb {
	width: 50%;
	padding: 15px;
	text-align: left;
}

th, td {
	border: solid 1px #FFFF00;
	padding: 10px;
	border-color: #FFA07A;
}

th, td {
	color: white;
}

body {
	background-image:
		url('https://media.istockphoto.com/photos/wood-table-top-on-blurred-of-counter-cafe-shop-with-light-for-or-picture-id924418708?k=20&m=924418708&s=612x612&w=0&h=dtmYnoc2NN3uBisSHP4m35cY4KVFtNJJvQfqrU1n4-s=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}
}
</style>
</head>
<body>
	<h1 align="center">Suspect Records</h1>
	<div id="table root">
		<div align="center">
			<table border="1">
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
							<td><a href="updatesuspectform?susId=${suspect.suspectId}">
									<input onclick="change()" type="button" value="Update"
									id="myButton1"></input>

							</a></td>
							<td><a href="deletesuspectid?susId=${suspect.suspectId}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>