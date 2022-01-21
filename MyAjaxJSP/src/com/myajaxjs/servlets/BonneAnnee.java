package com.myajaxjs.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BonneAnnee
 */
@WebServlet("/BonneAnnee")
public class BonneAnnee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BonneAnnee() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonneannee.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		
		String fullname = request.getParameter("nomPrenom");
		
		PrintWriter out = response.getWriter();
		out.println(fullname);

	}

}
