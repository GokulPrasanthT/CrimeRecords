<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/cssfile/admin.css"%></style>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a href="#">Admin</a>

			</div>
			<div class="dropdown">
				<button class="dropbtn">
					<em class="fa fa-caret-down"></em>Suspect
				</button>
				<div class="dropdown-content">
				<a	href="/suspect/addsuspectform">Add New Suspect</a>
					<a href="/suspect/suspectcrime"> Suspect Crime Records</a> <a
						href="/suspect/suspectlist">Suspect List</a>
				</div>
			</div>


			<div class="dropdowns">
				<button class="dropbtns">
					<em class="fa fa-caret-down"></em>Police
				</button>
				<div class="dropdown-contents">
					<a href="/police/addpolicedetailform">Add Police</a> <a
						href="/police/policelist">police List</a> 
				</div>
			</div>


			<div class="dropdownss">
				<button class="dropbtnss">
					<em class="fa fa-caret-down"></em>Crime
				</button>
				<div class="dropdown-contentss">
					 <a
						href="/crime/crimelist">Crime List</a>
						<a
						href="/crime/addcrimedetailform">Add New Crime Details</a>
				</div>
			</div>


			<div class="dropd">
				<button class="dbtnss">
					<em class="fa fa-caret-down"></em>Complaint
				</button>
				<div class="dropdown-cont">
					<a href="/police/policecomplaint"> police complaint Records</a>
					<a href="/complaint/complaintlist">Complaint List</a> <a
						href="/users/usercomplaint">User Complaint Records</a>
				</div>
			</div>

			<ul>
				<li><a href="/users/userlist">Users List</a></li>
			</ul>
			<ul>
				<li><a href="/users/userlogin">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="img"></div>
	<div class="center">
		<div class="title">WELCOME TO ADMIN PAGE</div>
		<div class="sub_title">Crime Records Management System</div>
		<div class="btns"></div>
	</div>
</body>
</html>