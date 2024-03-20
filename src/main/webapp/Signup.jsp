<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<link rel="stylesheet" href="css/styles.css">

</head>
<body>
	<div class="login-form">
	<h2>Add Employee to EMS</h2>
	
	<form action="insert" method="post">
	<div class="login-group">
	<label for="name">Name</label>
		<input type="text" name="uname" placeholder="Enter Name" required> <br> 
	</div>
	<div class="login-group">
	<label for="email">Email</label>
		<input type="text" name="email" placeholder="Enter Email" required> <br> 
	</div>
	<div class="login-group">
	<label for="phone">Phone</label>
		<input type="text" name="phone" placeholder="Enter Phone" required> <br> 
	</div>
	<div class="login-group">
	<label for="username">Username</label>
		<input type="text" name="uid" placeholder="Enter Username" required> <br> 
	</div>
	<div class="login-group">
	<label for="password">Password</label>	
		<input type="password" name="pwd" placeholder="Enter password" required> <br><br>
	</div>
	<div class="login-group">	 
		<input type="submit" name="submit" value="Add Employee" onclick="return validateForm();">
	</div>
	<br>
	
	</form>
	
</div>
<script>
        function validateForm() {
            const email = document.getElementsByName("email")[0].value;
            const phone = document.getElementsByName("phone")[0].value;

            if (!validateEmail(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (!validatePhoneNumber(phone)) {
                alert("Please enter a valid phone number.");
                return false;
            }

            return true;
        }

        function validateEmail(email) {
            // Basic email validation using a regular expression
            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            return emailPattern.test(email);
        }

        function validatePhoneNumber(phone) {
            // Phone number must be exactly 10 digits and start with "0"
            const phonePattern = /^0\d{9}$/;
            return phonePattern.test(phone);
        }
</script>
</body>
</html>