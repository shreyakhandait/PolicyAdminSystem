<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Policy</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<style type="text/css">
form {
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, .1), 0 8px 16px rgba(0, 0, 0, .1);
    background-color: white;
    margin-left:28%;
    margin-right:28%;
    margin-top: 10%;
    padding-top:10px;
    padding-bottom:10px;
 }
</style>


</head>
<body>

	<form action="/user/afterSearchPolicy" method="POST">
		<div class="form-outline mb-4 container col-md-5">
	        <label for="policyNumber" class="form-label">
	        	Policy Number
	        </label>
	        <input type="text" id="policyNumber" class="form-control" placeholder="Enter Policy Number" name="policyNumber" />
	    </div>
	    <div class="form-outline mb-4 container col-md-5">
	    	<label for="product" class="form-label">
	    		Product
	    	</label>
	    	<select name="product" id="tutorType">
			    <option value=""></option>
			    <c:forEach items="${product}" var="value">
			       <option>${value}</option>
			    </c:forEach>
			</select>
	    </div>
   	 	<div class="form-outline mb-4 container text-center">
           	<button class="btn btn-lg btn-primary btn-block" type="submit">Search Policy</button>
        </div>
	</form>
</body>
</html>