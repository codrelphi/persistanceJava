package com.myajaxjs.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Addition
 */
@WebServlet("/Addition")
public class Addition extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Addition() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/addition.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		
		int nombre1 = Integer.parseInt(request.getParameter("v"));
		int nombre2 = Integer.parseInt(request.getParameter("w"));
		
		PrintWriter out = response.getWriter();
		out.println("Résultat: " + (nombre1 + nombre2));
	}

}
