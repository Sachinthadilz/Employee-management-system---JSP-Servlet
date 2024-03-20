<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Profile</title>
    <style>
 body {
  font-family: sans-serif;
  margin: 0;
  padding: 20px;
  background-color: #f2f2f2;
}

form {
  width: 400px;
  margin: 0 auto;
  background-color: #fff;
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h1 {
  text-align: center;
  font-size: 24px;
  margin-bottom: 20px;
}

label {
  display: block;
  margin-bottom: 10px;
  font-weight: bold;
}

input[type="text"],
input[type="password"] {
  width: 375px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
  margin-bottom: 10px;
}

input[type="submit"] {
  background-color: #007bff;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #0069d9;
}

    </style>
</head>
<body>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String username = request.getParameter("uname");
    String password = request.getParameter("pwd");
%>

<form action="update" method="post">
    <h2>Update Profile</h2>
    <div>
        <label for="empid">Employee ID:</label>
        <input type="text" id="empid" name="empid" value="<%= id %>" readonly>
    </div>
    <div>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= name %>">
    </div>
    <div>
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="<%= email %>">
    </div>
    <div>
        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="<%= phone %>">
    </div>
    <div>
        <label for="uid">Username:</label>
        <input type="text" id="uid" name="uid" value="<%= username %>">
    </div>
    <div>
        <label for="pwd">Password:</label>
        <input type="text" id="pwd" name="pwd" value="<%= password %>">
    </div>

    <input type="submit" name="submit" value="Update Profile" onclick="return validateForm();">
</form>

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
