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
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-font-smoothing: antialiased;
  -o-font-smoothing: antialiased;
  font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
}

body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  color: #777;
  background: white;
}

.container {
  max-width: 400px;
  width: 100%;
  margin: 0 auto;
  position: relative;
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="tel"],
#contact input[type="date"],
#contact input[type="url"],
#contact textarea,
#contact button[type="submit"] {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
}

#contact {
  background: #F9F9F9;
  padding: 25px;
  margin-top: 8%;
  margin-left: 30%;
  margin-right: 30%;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

#contact h3 {
  display: block;
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
}

#contact h4 {
  margin: 5px 0 15px;
  display: block;
  font-size: 13px;
  font-weight: 400;
}

fieldset {
  border: medium none !important;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="tel"],
#contact input[type="date"],
#contact textarea {
  width: 100%;
  border: 1px solid #ccc;
  background: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  border-radius: 7px;
}

#contact input[type="text"]:hover,
#contact input[type="email"]:hover,
#contact input[type="tel"]:hover,
#contact input[type="date"]:hover,
#contact textarea:hover {
  -webkit-transition: border-color 0.3s ease-in-out;
  -moz-transition: border-color 0.3s ease-in-out;
  transition: border-color 0.3s ease-in-out;
  border: 1px solid #aaa;
}

#contact textarea {
  height: 100px;
  max-width: 100%;
  resize: none;
}

#contact button[type="submit"] {
  cursor: pointer;
  width: 100%;
  border: none;
  background: #1877f2;
  color: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  font-size: 15px;
    border-radius: 7px;
}

#contact button[type="submit"]:hover {
  background: #0b5fcc;
    border-radius: 7px;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
.cancelbtn {
     cursor: pointer;
  width: 100%;
  border: none;
  background: #F55A4E;
  color: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  font-size: 15px;
    border-radius: 7px;
}

.cancelbtn:hover {
  background: #f44336;
    border-radius: 7px;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}
#contact button[type="submit"]:active {
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}


#contact input:focus,
#contact textarea:focus {
  outline: 0;
  border: 1px solid #aaa;
}

::-webkit-input-placeholder {
  color: #888;
}

:-moz-placeholder {
  color: #888;
}

::-moz-placeholder {
  color: #888;
}

:-ms-input-placeholder {
  color: #888;
}
</style>
</head>
<body>
	<form action="/user/addedPolicy" id="contact" method="POST">
	<h3>Add Policy</h3>
	<h4></h4>
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
				name="product"  class="row-sm-6">
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