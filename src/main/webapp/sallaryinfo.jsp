<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Salary Details</title>
    <style>
        /* Style for the body */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
        }

        /* Style for the header */
        h1 {
            background-color: #007BFF;
            color: white;
            padding: 10px;
            text-align: center;
        }

        /* Style for the "Add Salary" button */
        a.button {
            display: inline-block;
            margin: 10px;
            background-color: #28A745;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border: 1px solid #28A745;
            border-radius: 5px;
        }

        /* Style for the table */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        /* Style for table headers */
        th {
            background-color: #343A40;
            color: white;
            padding: 10px;
            text-align: center;
        }

        /* Style for table data cells */
        td {
            padding: 10px;
            text-align: center;
        }

        /* Style for action buttons */
        a.button {
            display: inline-block;
            padding: 5px 10px;
            text-decoration: none;
            margin: 5px;
            border: 1px solid #007BFF;
            border-radius: 5px;
            background-color: #007BFF;
            color: white;
        }

        /* Style for the "Update" button */
        a.update-button {
            background-color: #17A2B8;
            border: 1px solid #17A2B8;
        }

        /* Style for the "Delete" button */
        a.delete-button {
            background-color: #DC3545;
            border: 1px solid #DC3545;
        }
    </style>
</head>
<body>
    <h1>Salary Details</h1>
    
    <a href="insertsalary.jsp" class="button">Add Salary</a>
    
    <table border="1">
        <tr>
            <th>Salary ID</th>
            <th>Amount</th>
            <th>Employee Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        
        <c:forEach var="EmployeeSal" items="${es}">
            <tr>
                <td>${EmployeeSal.salId}</td>
                <td>${EmployeeSal.salAmount}</td>
                <td>${EmployeeSal.ename}</td>
                <td>${EmployeeSal.email}</td>
                
                <td>
                    <c:url value="updatesalary.jsp" var="updatesalary">
                     <c:param name="name" value="${EmployeeSal.ename}" />
                      <c:param name="email" value="${EmployeeSal.email}" />
                        <c:param name="salId" value="${EmployeeSal.salId}" />
                        <c:param name="salAmount" value="${EmployeeSal.salAmount}" />
                    </c:url>
                    <a href="${updatesalary}" class="button update-button">Update</a>
                    
                    <c:url value="deletesalary.jsp" var="deletesalary">
                    <c:param name="name" value="${EmployeeSal.ename}" />
                      <c:param name="email" value="${EmployeeSal.email}" />
                        <c:param name="salId" value="${EmployeeSal.salId}" />
                        <c:param name="salAmount" value="${EmployeeSal.salAmount}" />
                    </c:url>
                    <a href="${deletesalary}" class="button delete-button">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
