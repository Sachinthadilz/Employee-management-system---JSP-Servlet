package com.task;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/displayServlet")
public class displayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		taskDBUtil db = new taskDBUtil();
		
		List <taskDetails> reqlist = db.gettaskDetails();

		request.setAttribute("reqlist", reqlist);
		
		request.getRequestDispatcher("Task.jsp").forward(request, response);
	}

}
