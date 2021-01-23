<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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
 .btn{
  background-color: #1877f2;
  color: white;
  padding-right:45px;
  padding-left:45px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
    margin-left:28%;
    margin-right:28%;
  border-radius: 7px;  
 }
</style>

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
           	<input type="submit" value="Login" class="btn btn-success" color: yellow; opacity: 0.99;"  onclick="validate()">
        </div>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
	</form>
<script language="javascript">
<!--//
/*This Script allows people to enter by using a form that asks for a
UserID and Password*/
function pasuser(form) {
if (form.id.value=="admin") { 
if (form.pass.value=="admin") {              
location="addPolicy.jsp" 
} else {
alert("Invalid Password")
}
} else {  alert("Invalid UserID")
</body>
</html>