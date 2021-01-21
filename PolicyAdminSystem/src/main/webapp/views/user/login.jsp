<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>
	
	<form action="perform_login" method="POST">
		
		
	    <div class="form-outline mb-4 container col-md-5">
	        <label for="username" class="form-label">
	        	Username
	        </label>
	        <input type="text" id="username" class="form-control" placeholder="Enter your username" required name="username">
	    </div>
	    
	    <div class="form-outline mb-4 container col-md-5">
	    	<label for="password" class="form-label">
	    		Password
	    	</label>
	    	<input type="password" id="password" class="form-control" placeholder="Enter your password" required name="password">
	    </div>
	    
        <div class="form-outline mb-4 container text-center">
           	<input type="submit" value="Login" class="btn btn-success" style="background-color: darkred; color: yellow; opacity: 0.99;">
        </div>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	</form>
</body>
</html>