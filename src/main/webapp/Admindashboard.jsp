<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Management</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Employees</h3>
			<hr>
			<div class="container text-left">

				<a href="Signup.jsp" class="btn btn-success">Add New Employee</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Username</th>
						<th>Password</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					
					<c:forEach var="emp" items="${empdetails}">
					<c:set var="id" value = "${emp.id }"/>
					<c:set var="name" value = "${emp.name }"/>
					<c:set var="email" value = "${emp.email }"/>
					<c:set var="phone" value = "${emp.phone }"/>
					<c:set var="username" value = "${emp.username }"/>
					<c:set var="password" value = "${emp.password }"/>
						<tr>
							<td>${emp.id }</td>
							<td>${emp.name }</td>
							<td>${emp.email }</td>
							<td>${emp.phone }</td>
							<td >${emp.username }</td>
							<td>${emp.password }</td>
					
					<c:url value="AUpdateemployee.jsp" var="empupdate">
						<c:param name="id" value = "${id}"/>
						<c:param name = "name" value = "${name}"/>
						<c:param name = "email" value = "${email}"/>
						<c:param name = "phone" value = "${phone}"/>
						<c:param name = "uname" value = "${username}"/>
						<c:param name = "pwd" value = "${password}"/>
					</c:url>
					
					<c:url value="ADeleteemployee.jsp" var="empdelete">
						<c:param name="id" value = "${id}"/>
						<c:param name = "name" value = "${name}"/>
						<c:param name = "email" value = "${email}"/>
						<c:param name = "phone" value = "${phone}"/>
						<c:param name = "uname" value = "${username}"/>
						<c:param name = "pwd" value = "${password}"/>
					</c:url>
						
							
			<td> 
      			<a href="${empupdate}">    
                <button class="btn btn-success">Edit</button>
                </a>
                <a href="${empdelete}">
                <button class="btn btn-danger">Delete</button>
                </a>
             	</td>
				</tr>
			</c:forEach>
		</tbody>

			</table>
		</div>
	</div>
	 <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>