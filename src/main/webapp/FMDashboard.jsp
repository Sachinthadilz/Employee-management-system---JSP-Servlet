<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Employee Management System - Finance Manager Dashboard</title>
    <style>
       /* style.css */

.profile {
  text-align:left;
}

.profile img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  margin-bottom: 10px;
}

.profile input[type="file"] {
  display: none;
}

.profile label {
  display: inline-block;
  background-color: #333;
  color: #fff;
  padding: 5px 10px;
  cursor: pointer;
}

.container {
  display: flex;
}

aside {
  width: 20%;
  background: #f1f1f1;
  padding: 20px;
}

aside ul {
  list-style: none;
  padding: 0;
}

aside li {
  margin-bottom: 10px;
}

aside a {
  text-decoration: none;
  color: #333;
}

main {
  width: 80%;
  padding: 20px;
}

/* Additional styles for the profile form and password change form */
form {
  margin-bottom: 20px;
}

label {
  display: block;
  margin-bottom: 5px;
}

input[type="text"],
input[type="password"],
input[type="tel"] {
  width: 100%;
  padding: 5px;
  margin-bottom: 10px;
}

/* Update button styles */
button[type="submit"],#submitc,
label[for="profileImage"]{
  display: inline-block;
  background-color: #115983;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  margin-bottom: 10px;
}

label[for="profileImage"]:hover{
  background-color: #54b1c2;
}

#submitc:hover{
  background-color: #54b1c2;
}

    </style>
</head>
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
	 <div class="container">
      <aside>
          <h1>Finance Manager Dashboard</h1>
 	<h3>Welcome</h3>
        <ul>
          <li><a href="salview">Salary view</a></li>
          <li><a href="insertsalary.jsp">Insert Salary</a></li>
          <li><a href="#">Notices</a></li>
          
        </ul>
      </aside>
  
    </div>
  
  
  <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>