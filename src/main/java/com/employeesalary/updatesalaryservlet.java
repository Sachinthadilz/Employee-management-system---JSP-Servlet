package com.employeesalary;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatesalaryservlet")
public class updatesalaryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int salId = Integer.parseInt(request.getParameter("salId"));
	    String salAmount = request.getParameter("salAmount");
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    
	    boolean istrue;
	    
	    istrue = EsalaryDBUtill.updatesalary(salId, salAmount,name,email);
	    
	    if(istrue == true ) {

			List<EmployeeSal> es = EsalaryDBUtill.getallSalInfo();
			request.setAttribute("es", es);

			RequestDispatcher dis1 = request.getRequestDispatcher("sallaryinfo.jsp");
			dis1.forward(request, response);
		}
		else {

			List<EmployeeSal> es = EsalaryDBUtill.getallSalInfo();
			request.setAttribute("es", es);

			RequestDispatcher dis2 = request.getRequestDispatcher("sallaryinfo.jsp");
			dis2.forward(request, response);
		}
	    
	    
	    
	    
	}

}
