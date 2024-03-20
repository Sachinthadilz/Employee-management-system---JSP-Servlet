<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        main {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #115983;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: #333;
        }

        input[type="text"],
        input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #115983;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #54b1c2;
        }
    </style>
</head>
<body>
	<main>
        <h1>Assign Task</h1>
       

      <br>


       <form action="tinsert" method="post" onsubmit="return validateForm()">
    <label for="firstName">Employee Name:</label>
    <input type="text" id="firstName" name="name" placeholder="First Name" required>

    <label for="email">Email:</label>
    <input type="text" id="email" name="email" placeholder="Email" required>

    <label for="phoneNumber">Phone Number:</label>
    <input type="tel" id="phoneNumber" name="phone" placeholder="Phone Number" required>

    <h3>Add Task</h3>

    <label for="Task">Task:</label>
    <input type="text" name="task">

    <a href="view"></a><input type="submit" id="submit" value="Submit">
</form>

<script>
    function validateForm() {
        var firstName = document.getElementById("firstName").value;
        var email = document.getElementById("email").value;
        var phoneNumber = document.getElementById("phoneNumber").value;

        // Trim leading and trailing whitespaces
        firstName = firstName.trim();
        email = email.trim();
        phoneNumber = phoneNumber.trim();

        if (firstName === "" || email === "" || phoneNumber === "") {
            alert("Please fill out all required fields.");
            return false;
        }

        // Validate email format
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        // Validate phone number format ( 10 digits)
        var phoneNumberRegex = /^\d{10}$/;
        if (!phoneNumberRegex.test(phoneNumber)) {
            alert("Please enter a valid 10-digit phone number.");
            return false;
        }

        

        return true;
    }
</script>

      </main>
</body>
</html>