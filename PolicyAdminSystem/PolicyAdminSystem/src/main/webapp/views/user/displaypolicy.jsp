<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<table style="width:100%">
  <tr>
    <th>Policy Number</th>
    <th>Product</th>
  
  </tr>
  <tr>
    <td>${policy.getPolicyNumber() }</td>
    <td>${policy.getProduct() }</td>

  </tr>
</table>

</body>
</html>