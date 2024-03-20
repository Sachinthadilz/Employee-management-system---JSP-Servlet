<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body {
    	font-family: Arial, sans-serif;
	    background-color: #f2f2f2;
	    text-align: center;
	    background-image: url('background.png');
	    background-size: cover;
	    background-position: center;
	    background-repeat: no-repeat;
		}

	h1 {
  		color: #333;
	}

	form {
	    background-color: #fff;
	    max-width: 500px;
	    margin: 0 auto;
	    padding: 20px;
	    border-radius: 10px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    text-align: left;
	}

	label {
	    display: block;
	    font-weight: bold;
	    margin-top: 10px;
	}

	input[type="text"] {
	    width: 90%;
	    padding: 10px;
	    margin: 5px 0;
	    border: 1px solid #ccc;
	    border-radius: 5px;
	}

	input[type="submit"] {
	    background-color: #007BFF;
	    color: #fff;
	    padding: 10px 20px;
	    border: none;
	    border-radius: 5px;
	    cursor: pointer;
	}

	input[type="submit"]:hover {
	    background-color: #0056b3;
	}

	center {
	    margin-bottom: 20px;
	}
	center {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh; 
	}
	
	</style>
	
	
 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="Index.css">
    <title>Pay Sheet</title>
</head>
<body>
	<form action="sinsert" method="post">
          <label for="Name"> Name:</label>
          <input type="text"  name="name" placeholder="Name" >
  
          <label for="email">Email:</label>
          <input type="text"  name="email" placeholder="Email" >
  
         
       
  
        <h3>Add Salary</h3>
       
          <label for="Sallary"></label>
          <input type="text" name="Sallary">
          <input type="submit" id="submitc" value="Submit" onclick="return validateForm()">
          
          
        </form><br><br><br><br>
	
	<script>
    function validateForm() {
        const name = document.getElementsByName("name")[0].value;
        const email = document.getElementsByName("email")[0].value;
        const salary = document.getElementsByName("Sallary")[0].value;

        if (!validateName(name)) {
            alert("Name should contain only letters.");
            return false;
        }

        if (!validateEmail(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (!validateSalary(salary)) {
            alert("Salary should contain only numbers.");
            return false;
        }

        return true;
    }

    function validateName(name) {
        // Name validation: only letters and spaces allowed
        const namePattern = /^[a-zA-Z ]+$/;
        return namePattern.test(name);
    }

    function validateEmail(email) {
        // Basic email validation using a regular expression
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        return emailPattern.test(email);
    }

    function validateSalary(salary) {
        // Salary validation: only numeric digits allowed
        const salaryPattern = /^\d+$/;
        return salaryPattern.test(salary);
    }
</script>


</body>
</html>