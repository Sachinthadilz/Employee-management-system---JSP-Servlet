package com.task;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deleteTaskservlet")
public class deleteTaskservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		
		boolean isTrue;
		
		isTrue = taskDBUtil.Deletetask(id);
		if(isTrue == true)
		{
			taskDBUtil db = new taskDBUtil();
			
			List <taskDetails> reqlist = db.gettaskDetails();

			request.setAttribute("reqlist", reqlist);
			
			request.getRequestDispatcher("Task.jsp").forward(request, response);
		}else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("umsuccess.jsp");
			dis2.forward(request, response);
		}
		
	
	}

}
