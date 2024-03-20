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
    background-color: #f5f5f5;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

form {
    background-color: #ffffff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    padding: 20px;
    border-radius: 5px;
    text-align: center;
}

form input[type="text"] {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

form input[type="submit"] {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

form input[type="submit"]:hover {
    background-color: #0056b3;
}

</style>
</head>
<body>

  <%
    int salId = Integer.parseInt(request.getParameter("salId"));
    String salAmount = request.getParameter("salAmount");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
  %>
  
  <form action="updatesal" method="get">
     Name     :<input type="text" name="ename" value="<%=name%>" readonly> <br> 
    Email     :<input type="text" name="email" value="<%=email%>" readonly> <br> 
    salary ID     :<input type="text" name="salId" value="<%=salId%>" readonly> <br> 
    Salary amount :<input type="text" name="salAmount" value="<%=salAmount%>"><br>
    
    <input type="submit" name="submit" value="Update Salary" onclick="return validateForm()"><br>
  </form>
<script>
    function validateForm() {
        const salary = document.getElementsByName("salAmount")[0].value;

        if (!validateSalary(salary)) {
            alert("Salary should contain only numbers.");
            return false;
        }

        return true;
    }

    function validateSalary(salary) {
        // Salary validation: only numeric digits allowed
        const salaryPattern = /^\d+$/;
        return salaryPattern.test(salary);
    }
</script>

</body>
</html>