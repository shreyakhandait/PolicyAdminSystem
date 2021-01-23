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
table {
	margin-top: 7%;
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
	<table style="width: 100%">
		<tr>
			<th>Policy Number</th>
			<th>Product</th>
			<th>Customer Name</th>
			<th>Customer Mobile Number</th>
			<th>Customer Email Address</th>


		</tr>
		<tr>
			<td>${policy.getPolicyNumber() }</td>
			<td>${policy.getProduct() }</td>
			<td>${policy.getCustName() }</td>
			<td>${policy.getCustMobileNumber() }</td>
			<td>${policy.getCustEmailAddress() }</td>
		</tr>
	</table>

</body>
</html>