package com.employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
	
		if("ADM001".equals(username) && "admin123".equals(password)) {
			
			boolean isTrue;
			
			isTrue = EmployeeDBUtil.validate(username,password);
			
			
			isTrue = EmployeeDBUtil.validate("ADM001","admin123");
			
			if(isTrue == true) {
				
				List<Employee> empdetails = EmployeeDBUtil.getallEmployee();
				request.setAttribute("empdetails",empdetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Admindashboard.jsp");
				dis.forward(request, response);
			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='Login.jsp'");
				out.println("</script>");
			}
			
		}
		else if("MGR001".equals(username) && "mgrs123".equals(password)) {
			
			boolean isTrue;
			
			isTrue = EmployeeDBUtil.validate(username,password);
			
			
			isTrue = EmployeeDBUtil.validate("MGR001","mgrs123");
			
			if(isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("Dashboard.jsp");
				dis.forward(request, response);
			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='Login.jsp'");
				out.println("</script>");
			}
			
		}
		
		else if("FNR001".equals(username) && "fnrm123".equals(password)) {
			
			boolean isTrue;
			
			isTrue = EmployeeDBUtil.validate(username,password);
			
			
			isTrue = EmployeeDBUtil.validate("FNR001","fnrm123");
			
			if(isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("FMDashboard.jsp");
				dis.forward(request, response);
			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='Login.jsp'");
				out.println("</script>");
			}
			
		}
		else {
			
			
			boolean isTrue;
			
			isTrue = EmployeeDBUtil.validate(username,password);
			
			if(isTrue == true) {
				
				
				List<Employee> empdetails = EmployeeDBUtil.getEmployee(username);
				request.setAttribute("empdetails",empdetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
				dis.forward(request, response);
			}
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='Login.jsp'");
				out.println("</script>");
			}
		}
			
	}

}
