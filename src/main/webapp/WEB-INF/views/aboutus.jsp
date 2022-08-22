<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
<style>
<
style>* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	margin: 0;
}

.header {
	padding: 290px;
	text-align: center;
	background: #1abc9c;
	color: white;
	background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20220704/pngtree-crime-scene-background-with-cordon-police-car-light-handcuff-shooting-image_1417069.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.header h1 {
	text-align: center;
	font-size: 40px;
}

.navbar {
	overflow: hidden;
	background-color: #333;
}

.navbar a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
}

.navbar a.right {
	float: right;
}
.navbar a:hover {
	background-color: #ddd;
	color: black;
}
.row {
	display: -ms-flexbox;
	display: flex;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
}

.fa-home {
	position: absolute;
	top: 20px;
	right: 16px;
	font-size: 4em;
}

.side {
	-ms-flex: 30%;
	flex: 30%;
	background-color:  #FF7A96;
	padding: 20px;
	background-color:  #7AD9FF;
	text-align: center;
	border: 6px solid gray;
}

.bac {
	position: absolute;
	top: 8px;
	left: 16px;
	font-size: 18px;
}

p {
	text-indent: 90px;
	text-align: justify;
	letter-spacing: 3px;
	font-size: 20px;
}

.main {
	-ms-flex: 70%;
	flex: 70%;
	background-color: #00FF7F;
	padding: 20px;
}

.img {
	background-color: #aaa;
	width: 100%;
	padding: 20px;
	background-image:
		url('https://media.istockphoto.com/photos/police-crime-scene-picture-id839004180?b=1&k=20&m=839004180&s=170667a&w=0&h=eGS8vrNTFPAfRKCpWOzO8FklaThEbG1CQnbk0uGkx3Y=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

.header h4 {
	color: blue;
	font-size: 30px;
	text-align: center;
}

@media screen and (max-width: 700px) {
	.row {
		flex-direction: column;
	}
}

@media screen and (max-width: 400px) {
	.navbar a {
		float: none;
		width: 100%;
	}
}
</style>
<meta charset="ISO-8859-1">
<title>About Us</title>
</head>
<body>
	<h1>Welcome To CRIME SYSTEM</h1>
	<div class="header">
		<h1></h1>

	</div>


	<div class="row">
		<div class="side">
			<h1>ABOUT GO DIGITAL</h1>

			<h5 style="color: white; font-size: 20pt;">"You Post Complaint
				Anytime Anywhere"</h5>

			<p>The crime record management system project is a web based
				application that provides facility for reporting online crimes. The
				proposed system specifically looks into the subject of Crime Records
				Management. User can register their complaints online. The system at
				any point of time can provide the details of existing charge sheets
				and their statuses. People can check missing persons details online
				using this system. The system at any point of time can provide the
				details of the police station and the employees. This system is also
				show most wanted person details online on the police website. The
				system at any point of time can provide the details of victims and
				the registered FIR’s. Using this system any Number of clients can
				connect to the server. The system at any point of time can provide
				the details of evidence and their sequence. This system also allow
				user to view all most wanted persons which can be given by the
				administrator.</p>
		</div>

		<div class="main">
			<h2>Proposed crime records management system:</h2>
			<div class="img" style="height: 200px;"></div>
			<p>1.The proposed crime records management system can overcome
				all the limitations of the existing system. The system provides
				proper security and reduces the manual work. The efficiency of the
				police function and the effectiveness with which it tackles crime
				depend on what quality of information it can derive from its
				existing records and how fast it can have access to it. The existing
				system has several disadvantages and many more difficulties to work
				well.</p>
			<br>
			<p>2. The proposed system tries to eliminate or reduce these
				difficulties up to some extent. It is proposed to centralize
				Information Management in Crime for the purposes of fast and
				efficient sharing of critical information across all Police Stations
				across the territory. The proposed system helps the user to work
				user friendly and he can easily do his jobs without time lagging.</p>
			<br>
			<div class="img" style="height: 200px;"></div>
		</div>
	</div>
	<a href="/users/index"> <em class="fa fa-home"
		style="font-size: 48px; color: black"></em>
	</a>
</body>
</html>