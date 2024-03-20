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
        background-color: #f8f8f8;
        margin: 0;
        padding: 0;
    }

    form {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #ff0000; /* Red color */
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #cc0000; /* Darker red on hover */
    }
</style>

</head>
<body>
	
	
		<%
		String id = request.getParameter("id");
		String task = request.getParameter("task");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		%>
		
		
		<form action="tdelete" method="post">
		    Name <input type="text" name="name" value="<%= name%>" readonly><br>
		    Email<input type="text" name="email" value="<%= email%>" readonly><br>
		    Phone Number <input type="text" name="phone" value="<%= phone%>" readonly><br>
			ID <input type="text" name="id" value="<%= id%>" readonly><br>
			Task <input type="text" name="task" value="<%= task%>"><br>
			
			
			<input type="submit" name="submit" value="Delete"><br>
		</form>
	

</body>
</html>