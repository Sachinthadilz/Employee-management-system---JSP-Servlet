package com.employeesalary;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/EsalaryInsert")
public class EsalaryInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Salary = request.getParameter("Sallary");
		String ename = request.getParameter("name");
		String email = request.getParameter("email");
		
		boolean isTrue;
		 
		isTrue=EsalaryDBUtill.insertEsalary(Salary,ename,email);
		
		if(isTrue==true) {
			
			List<EmployeeSal> es = EsalaryDBUtill.getallSalInfo();
			request.setAttribute("es", es);
			
			RequestDispatcher dis=request.getRequestDispatcher("/sallaryinfo.jsp");
			dis.forward(request, response);
		}else {
			
			List<EmployeeSal> es = EsalaryDBUtill.getallSalInfo();
			request.setAttribute("es", es);
			
			RequestDispatcher dis=request.getRequestDispatcher("/sallaryinfo.jsp");
			dis.forward(request, response);
			
		}
		
		
		
		
		
	}

}
