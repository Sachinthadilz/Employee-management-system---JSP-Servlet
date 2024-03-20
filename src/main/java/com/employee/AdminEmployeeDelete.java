package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminEmployeeDelete
 */
@WebServlet("/AdminEmployeeDelete")
public class AdminEmployeeDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("empid");
		
		boolean isTrue;
		
		isTrue = EmployeeDBUtil.deleteEmployee(id);
		
		if (isTrue == true) {
			
			List<Employee> empdetails = EmployeeDBUtil.getallEmployee();
			request.setAttribute("empdetails", empdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Admindashboard.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Employee> empdetails = EmployeeDBUtil.getallEmployee();
			request.setAttribute("empdetails", empdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Admindashboard.jsp");
			dis.forward(request, response);
		}
	}

}
