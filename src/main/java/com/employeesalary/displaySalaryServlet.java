package com.employeesalary;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/displaySalaryServlet")
public class displaySalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EsalaryDBUtill e = new EsalaryDBUtill();
		
		List<EmployeeSal> es = e.getallSalInfo();
		
		request.setAttribute("es", es);
		
		request.getRequestDispatcher("sallaryinfo.jsp").forward(request, response);
		
	}

}
