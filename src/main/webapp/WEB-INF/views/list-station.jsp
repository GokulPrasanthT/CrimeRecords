<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Station List</title>
</head>
<body>
	<h1>S t a t i o n__L i s t</h1>

	<div id="table root">
		<div>
			<table border="1" class="center">
				<caption></caption>
				<thead>
					<tr>
						<th>Station Id</th>
						<th>Station Name</th>
						<th>Station Location</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="station" items="${viewstation}">
						<tr>
							<td>${station.stationid}</td>
							<td>${station.stationName}</td>
							<td>${station.stationLocation}</td>

							<td><a
								href="updatestationform?stationId=${station.stationid}"> <input
									onclick="change()" type="button" value="Update" id="myButton1"></input>
							</a></td>
							<td><a href="deletestation?stationId=${station.stationid}"><input
									onclick="change()" type="button" value="Delete" id="myButton2"></input></a>
							</td>
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