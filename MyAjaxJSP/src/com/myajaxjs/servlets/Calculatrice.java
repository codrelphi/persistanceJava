package com.myajaxjs.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Calculatrice
 */
@WebServlet("/Calculatrice")
public class Calculatrice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Calculatrice() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/calculatrice.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		int val1 = Integer.parseInt(request.getParameter("v"));
		int val2 = Integer.parseInt(request.getParameter("w"));
		String op = request.getParameter("op");
		int result = 0;
		
		if(op.equals("addition")) {
			result = val1 + val2;
		}
		else if (op.equals("soustraction")) {
			result = val1 - val2;
		}
		else if (op.equals("multiplication")) {
			result = val1 * val2;
		}
		else if (op.equals("division")) {
			result = val1 / val2;
		}
		
		out.println("Résultat: " + result);
	}

}
