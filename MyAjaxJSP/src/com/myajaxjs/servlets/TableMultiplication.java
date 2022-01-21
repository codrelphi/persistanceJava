package com.myajaxjs.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TableMultiplication
 */
@WebServlet("/TableMultiplication")
public class TableMultiplication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TableMultiplication() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(request.getParameter("nbr") != null) {
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			
			int nombre = Integer.parseInt(request.getParameter("nbr"));
			String resultat = "<br>Table de multiplication de " + nombre + "<br>";
			for (int i = 1; i <= 10; i++) {
				resultat += nombre + " x " + i + " = " + (nombre * i) + "<br>";
			}
			out.println(resultat);
		}
		else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/tableMultiplication.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
