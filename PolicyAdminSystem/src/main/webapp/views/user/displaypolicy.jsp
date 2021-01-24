<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Search Table</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<style>
body{
background-color: white;
}
h3 {
  display: block;
  font-size: 30px;
  font-weight: 300;
  margin-left:45%;
  margin-top:3%;
  
}
table {
	    margin-top: 7%;
    margin-left: 5%;
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    background-color: white;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
.cancelbtn {
     cursor: pointer;
  border: none;
  background: #F55A4E;
  color: #FFF;
  padding: 10px;
  font-size: 15px;
    border-radius: 7px;
    margin-top: 3%;
}

.cancelbtn:hover {
  background: #f44336;
    border-radius: 7px;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}
</style>
</head>
<body>
   <h3>All Policies!</h3>
	<table style="width: 90%">
		<tr>
			<th>Policy Number</th>
			<th>Product</th>
			<th>Customer Name</th>
			<th>Customer Mobile Number</th>
			<th>Customer Email Address</th>
			<th>Customer Date of Birth</th>


		</tr>
		<tr>
			<td>${policy.getPolicyNumber() }</td>
			<td>${policy.getProduct() }</td>
			<td>${policy.getCustName() }</td>
			<td>${policy.getCustMobileNumber() }</td>
			<td>${policy.getCustEmailAddress() }</td>
			<td>${policy.getCustDOB() }</td>


		</tr>
	</table>
  <div class="form-outline mb-4 container text-center">
			<a href="/home"><button
					class="btn btn-lg btn-primary btn-block cancelbtn" type="button">Cancel</button></a>
		</div>
</body>
</html>