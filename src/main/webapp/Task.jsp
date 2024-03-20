<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
<body>
	font-family: Arial, sans-serif;
    line-height: 1.6;
    background-image: url('https://source.unsplash.com/random'); /* Background image */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    margin: 0;
    display: flex;
    justify-content: center;
}

.content {
    max-width: 800px;
    width: 100%;
    padding: 20px;
}

.topic {
    margin: 0 0 20px 0;
    padding: 10px;
    background-color: #27ae60;
    color: #fff;
    text-align: center;
    border-radius: 5px;
    box-shadow: 0 5px 5px rgba(0, 0, 0, 0.1);
}

h1 {
    font-size: 24px;
}

.separator {
    margin: 0 0 20px 0;
    border-bottom: 2px solid #ccc;
}
.card {
    margin: 0 0 20px 0;
    padding: 20px;
    background-color: rgba(240, 240, 240, 0.9); /* Slightly transparent background */
    border-radius: 15px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
    position: relative;
    transition: background-color 0.2s;
}

h2 {
    text-align: center;
    font-size: 20px;
    color: #27ae60;
}

.card p {
    margin: 10px 0;
}

.card:hover {
    transform: scale(1.02);
    transition: transform 0.3s;
}

.card label {
    font-weight: bold;
}

.card .buttons {
    position: absolute;
    bottom: 10px;
    right: 10px;
}

.card .buttons button {
    padding: 10px 20px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    margin-right: 10px;
    cursor: pointer;
    transition: transform 0.2s;
    font-weight: bold;
}

.card .buttons button:hover {
    transform: scale(1.05);
    background-color: #0056b3;
}
</style>
</head>
<body>
    <div class="content">
        <div class="topic">
            <h1>Task List</h1>
        </div>
        <div class="separator"></div>
        <c:forEach var="request" items="${reqlist}">
        
        	<c:set var="id" value="${request.taskID}" />
             <c:set var="task" value="${request.task}" />
             <c:set var="name" value="${request.name}" />
             <c:set var="email" value="${request.email}" />
             <c:set var="phone" value="${request.phone}" />
             
            <div class="card">
                <h2>Task ID: ${request.taskID}</h2>
                <p><label>Name:</label> ${request.name}</p>
                <p><label>Email:</label> ${request.email}</p>
                <p><label>Phone Number:</label> ${request.phone}</p>
                <p><label>Task:</label> ${request.task}</p>
                
                
                <c:url value="updateTask.jsp" var="uptask">
                	<c:param name="id" value="${id}" />
                	<c:param name="task" value="${task}" />
                	<c:param name="name" value="${name}" />
                	<c:param name="email" value="${email}" />
                	<c:param name="phone" value="${phone}" />
                </c:url>
                
                <c:url value="deleteTask.jsp" var="deltask">
                	<c:param name="id" value="${id}" />
                	<c:param name="task" value="${task}" />
                	<c:param name="name" value="${name}" />
                	<c:param name="email" value="${email}" />
                	<c:param name="phone" value="${phone}" />
                </c:url>
                
 
                <div class="buttons">
                    <a href="${uptask}"><button>Update</button></a>
                    <a href="${deltask}"><button>Delete</button></a>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>