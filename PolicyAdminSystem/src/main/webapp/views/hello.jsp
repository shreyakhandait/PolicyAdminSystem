<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body{
background-color:white;
}
.btn {
	background-color: #1877f2;
	color: white;
	padding-right: 62px;
	padding-left: 45px;
	padding-top: 20px;
	padding-bottom: 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	margin-left: 31%;
	margin-right: 15%;
	border-radius: 7px;
}

.btn1 {
	background-color: #1877f2;
	color: white;
	padding-right: 45px;
	padding-left: 45px;
	padding-top: 20px;
	padding-bottom: 20px;
	border: none;
	cursor: pointer;
	border-radius: 7px;
}

h1 {
	text-align: center;
	margin-top: 14%;
	font-size: 40px;
	margin-bottom: 5%;
}
</style>
</head>
<body>
	<h1>Welcome to Policy Admin System!</h1>

	<div class="form-outline mb-4 container text-center">
		<a href="home/user/addPolicy"><input type="button"
			value="Add Policy" class="btn btn-success" color:yellow; opacity: 0.99;"></a>
		<a href="home/user/searchPolicy"><input type="button"
			value="Search Policy" class="btn1 btn-success" color:yellow; opacity: 0.99;"></a>
	</div>
</body>
</html>