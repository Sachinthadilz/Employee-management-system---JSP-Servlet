package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Employeeinsert")
public class Employeeinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue = EmployeeDBUtil.insertemployee(name, email, phone, username, password);
		
		if(isTrue == true) {
			
			List<Employee> empdetails = EmployeeDBUtil.getallEmployee();
			request.setAttribute("empdetails", empdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Admindashboard.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
