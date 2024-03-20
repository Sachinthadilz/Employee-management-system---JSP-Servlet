<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Account</title>
 <style>
        /* CSS Reset */
html, body, table, td, tr, input, a {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}

/* Basic Styles */
body {
  font-family: sans-serif;
  background-color: #f2f2f2;
}

h1 {
  text-align: center;
  font-size: 2rem;
  margin-bottom: 20px;
}

table {
  width: 375px;
  border-collapse: collapse;
  margin-bottom: 20px;
}

td, th {
font-weight:bold;
  padding: 10px;
  border: 1px solid #ccc;
  text-align: left;
}

table {
  margin: 0 auto;
}


td:nth-child(even) {
	font-weight:normal;
	background-color: rgb(128, 128, 255);
	text-align: center;
	
	}
	
	tr:hover {
  background-color: #e3f2fd;
}
	

/* Button Styles */
.btt {
  text-align: center;
}

input[type="button"] {
  background-color: #007bff;
  color: #fff;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  border-radius: 20px;
}

input[type="button"]:hover {
  background-color: #0069d9;
}

.button{

background-color: #007bff;
  color: #fff;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  border-radius: 20px;

}

.button:hover {
            background-color: #0069d9; /* Darker green on hover */
        }
  </style>
  
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
    <h1>User Account</h1>
    <table>
        <c:forEach var="emp" items="${empdetails}">
            <c:set var="id" value="${emp.id}" />
            <c:set var="name" value="${emp.name}" />
            <c:set var="email" value="${emp.email}" />
            <c:set var="phone" value="${emp.phone}" />
            <c:set var="username" value="${emp.username}" />
            <c:set var="password" value="${emp.password}" />

            <tr>
                <td>Employee ID</td>
                <td>${emp.id}</td>
            </tr>
            <tr>
                <td>Employee Name</td>
                <td>${emp.name}</td>
            </tr>
            <tr>
                <td>Employee Email</td>
                <td>${emp.email}</td>
            </tr>
            <tr>
                <td>Employee Phone</td>
                <td>${emp.phone}</td>
            </tr>
            <tr>
                <td>Employee User Name</td>
                <td>${emp.username}</td>
            </tr>
            <tr>
                <td>Employee password</td>
                <td>${emp.password}</td>
            </tr>
        </c:forEach>
    </table>

    <c:url value="Updateemployee.jsp" var="empupdate">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="uname" value="${username}" />
        <c:param name="pwd" value="${password}" />
    </c:url>

    <br>
    <div class="btt">
        <a href="${empupdate}">
            <input type="button" name="Update" value="Update Profile">
        </a>
    </div>
    <br>

    <c:url value="Deleteemployee.jsp" var="empdelete">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="uname" value="${username}" />
        <c:param name="pwd" value="${password}" />
    </c:url>

    <div class="btt">
        <a href="${empdelete}">
            <input type="button" name="Delete" value="Delete Account">
        </a>
        <br>
        <br>
        <button class="button">View Tasks</button>
        <br><br>
    	<button class="button">View Salary</button>
    </div>
    
    
     <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>
