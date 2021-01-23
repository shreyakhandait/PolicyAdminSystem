<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Add Policy Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<style type="text/css">
.addbtn {
	margin-right: 90px;
}

.cancelbtn {
	margin-left: 30px;
}
</style>
</head>
<body>
	<form action="/user/addedPolicy" method="POST">
		<div class="form-outline mb-4 container col-md-5" style="color: red">
			${errors } ${NotFound}</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="customerName" class="form-label"> Customer Name </label>
			<input type="text" id="customerName" class="form-control"
				placeholder="Enter Customer Name" name="custName"
				value="${user.custName}" required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="custMobileNumber" class="form-label"> Customer
				Mobile Number </label> <input type="text" id="custMobileNumber"
				class="form-control" placeholder="Enter Customer Mobile Number"
				name="custMobileNumber" value="${user.custMobileNumber}" required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="dob" class="form-label"> Date Of Birth </label> <input
				type="date" id="dob" class="form-control"
				placeholder="Enter Date Of Birth" name="custDOB"
				value="${user.custDOB}" required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="email" class="form-label"> Email Address </label> <input
				type="email" id="email" class="form-control"
				placeholder="Enter Email" name="custEmailAddress"
				value="${user.custEmailAddress}" required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="address" class="form-label"> Landmark </label> <input
				type="text" id="address" class="form-control"
				placeholder="Enter House Number/Society etc"
				name="custAddress.details" value="${user.custAddress.details}"
				required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="city" class="form-label"> City </label> <input
				type="text" id="city" class="form-control" placeholder="Enter City"
				name="custAddress.city" value="${user.custAddress.city}" required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="country" class="form-label"> country </label> <input
				type="text" id="country" class="form-control"
				placeholder="Enter State" name="custAddress.country"
				value="${user.custAddress.country}" required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="pin" class="form-label"> Pin </label> <input type="text"
				id="pin" class="form-control" placeholder="Enter Pin"
				name="custAddress.pinCode" value="${user.custAddress.pinCode}"
				required />
		</div>
		<div class="form-outline mb-4 container col-md-5">
			<label for="product" class="form-label"> Product </label> <select
				name="product" id="tutorType">
				<option value="Select Option here" value=""></option>
				<c:forEach items="${product}" var="value">
					<option>${value}</option>
				</c:forEach>
			</select>
		</div>
		<div class="form-outline mb-4 container text-center">
			<button class="btn btn-lg btn-primary btn-block addbtn" type="submit">Add
				Policy</button>
			<a href="/home"><button
					class="btn btn-lg btn-primary btn-block cancelbtn" type="button">Cancel</button></a>
		</div>


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
			crossorigin="anonymous"></script>
	</form>
</body>
</html>