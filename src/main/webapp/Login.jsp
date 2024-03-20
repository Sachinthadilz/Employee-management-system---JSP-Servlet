<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body >

<div class="login-form">
	<h2>Login to EMS</h2>
	
	<form action="log" method="post">
	<div class="login-group">
	<label for="username">Username</label>
		<input type="text" name="uid" placeholder="Enter username" required> <br> 
	</div>
	<div class="login-group">
	<label for="password">Password</label>	
		<input type="password" name="pwd" placeholder="Enter password" required> <br><br>
	</div>
	<div class="login-group">	 
		<input type="submit" name="submit" value="Login">
	</div>
	<br>
	
	</form>
	
</div>

</body>
</html>