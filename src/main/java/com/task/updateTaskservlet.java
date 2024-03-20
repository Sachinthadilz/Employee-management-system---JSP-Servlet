package com.task;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateTaskservlet")
public class updateTaskservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String taskID = request.getParameter("id");
		String task = request.getParameter("task");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
boolean isTrue;
		
		isTrue = taskDBUtil.UpdateRequest(taskID,task,name,email,phone);
		
		if(isTrue == true) {
			taskDBUtil db = new taskDBUtil();
			
			List <taskDetails> reqlist = db.gettaskDetails();

			request.setAttribute("reqlist", reqlist);
			
			request.getRequestDispatcher("Task.jsp").forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
