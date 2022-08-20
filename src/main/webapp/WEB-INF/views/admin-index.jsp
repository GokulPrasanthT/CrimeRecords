<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

::selection {
	color: #000;
	background: #fff;
}

nav {
	position: fixed;
	background: #1b1b1b;
	width: 100%;
	padding: 10px 0;
	z-index: 12;
}

nav .menu {
	max-width: 1250px;
	margin: auto;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 20px;
}

.menu .logo a {
	text-decoration: none;
	color: #fff;
	font-size: 25px;
	font-weight: 600;
}

.menu ul {
	display: inline-flex;
}

.menu ul li {
	list-style: none;
	margin-left: 7px;
}

.menu ul li:first-child {
	margin-left: 0px;
}

.menu ul li a {
	text-decoration: none;
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	padding: 8px 15px;
	border-radius: 5px;
	transition: all 0.3s ease;
}

.menu ul li a:hover {
	background: #fff;
	color: blue;
}

.center {
	position: absolute;
	top: 52%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 100%;
	padding: 0 10px;
	text-align: center;
}

.center .title {
	color: #1b1811;
	font-size: 55px;
	font-weight: 600;
	margin-top: 100px;
}

.center .sub_title {
	color: #778ba5;
	font-size: 45px;
	font-weight: 400;
}

.center .btns {
	margin-top: 20px;
}

.center .btns button {
	height: 55px;
	width: 170px;
	border-radius: 5px;
	border: none;
	margin: 0 10px;
	border: 2px solid black;
	font-size: 20px;
	font-weight: 500;
	padding: 0 10px;
	cursor: pointer;
	outline: none;
	transition: all 0.3s ease;
}

.center .btns button:first-child {
	color: #fff;
	background: none;
}

.btns button:first-child:hover {
	background: white;
	color: black;
}

.center .btns button:last-child {
	background: white;
	color: black;
}

.dropdown {
	float: right;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: white;
	color: black;
}

.dropdown-content {
	display: none;
	position: absolute;
	background: #00000;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: #fff;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: right;
}

.dropdown-content a:hover {
	background-color: #DA70D6;
	color: black;
}

.dropdown:hover .dropdown-content {
	display: block;
}

body {
	background-image:
		url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCacRsz76ALy6SQMRUcwIXNJDCvOs9_I_j-0xRmCkEwQituaZN2_qAyce6YvRWS1iQFZ0&usqp=CAU');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.dropdowns {
	float: center;
	overflow: hidden;
}

.dropdowns .dropbtns {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdowns:hover .dropbtns {
	background-color: white;
	color: black;
}

.dropdown-contents {
	display: none;
	position: absolute;
	background: #00000;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-contents a {
	float: none;
	color: #fff;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: right;
}

.dropdown-contents a:hover {
	background-color: #DA70D6;
	color: black;
}

.dropdowns:hover .dropdown-contents {
	display: block;
}

.dropdownss {
	float: center;
	overflow: hidden;
}

.dropdownss .dropbtnss {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdownss:hover .dropbtnss {
	background-color: white;
	color: black;
}

.dropdown-contentss {
	display: none;
	position: absolute;
	background: #00000;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-contentss a {
	float: none;
	color: #fff;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: right;
}

.dropdown-contentss a:hover {
	background-color: #DA70D6;
	color: black;
}

.dropdownss:hover .dropdown-contentss {
	display: block;
}

.dropd {
	float: center;
	overflow: hidden;
}

.dropd .dbtnss {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropd:hover .dbtnss {
	background-color: white;
	color: black;
}

.dropdown-cont {
	display: none;
	position: absolute;
	background: #00000;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-cont a {
	float: none;
	color: #fff;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: right;
}

.dropdown-cont a:hover {
	background-color: #DA70D6;
	color: black;
}

.dropd:hover .dropdown-cont {
	display: block;
}
</style>
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
						href="/police/policelist">police List</a> <a
						href="/police/findpoliceid?=userId">Police Findby ID</a>
				</div>
			</div>


			<div class="dropdownss">
				<button class="dropbtnss">
					<em class="fa fa-caret-down"></em>Crime
				</button>
				<div class="dropdown-contentss">
					<a href="/suspect/findsuspectid">FindBy Suspect Id</a> <a
						href="/crime/crimelist">Crime List</a>
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
		</div>
	</nav>
	<div class="img"></div>
	<div class="center">
		<div class="title">WELCOME TO ADMIN PAGE</div>
		<div class="sub_title">Crime Management System</div>
		<div class="btns"></div>
	</div>
</body>
</html>