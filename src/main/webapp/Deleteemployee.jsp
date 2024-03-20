<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Employee</title>
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
	
	
	<form action="delete" method="post"
        ><h1>Employee Account Delete</h1>
        Employee ID <input type="text" name="empid" value="<%= id %>" readonly><br>
        Name <input type="text" name="name" value="<%= name %>" readonly><br>
        Email <input type="text" name="email" value="<%= email %>" readonly><br>
        Phone <input type="text" name="phone" value="<%= phone %>" readonly><br>
        Username <input type="text" name="uid" value="<%= username %>" readonly><br>
        <input type="submit" name="submit" value="Delete Account"><br>
    </form>
</body>
</html>