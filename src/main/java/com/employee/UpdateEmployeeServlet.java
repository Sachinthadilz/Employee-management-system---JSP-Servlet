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
 * Servlet implementation class UpdateEmployeeServlet
 */
@WebServlet("/UpdateEmployeeServlet")
public class UpdateEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("empid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone  = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password= request.getParameter("pwd");
		
		
boolean isTrue;
		
		isTrue = EmployeeDBUtil.updateemployee(id, name, email, phone, username, password);
		
		if(isTrue == true) {
			
			List<Employee> empdetails = EmployeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("empdetails", empdetails);
					
			RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Employee> empdetails = EmployeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("empdetails", empdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
			dis.forward(request, response);
		}
		
	}
		
	

}
