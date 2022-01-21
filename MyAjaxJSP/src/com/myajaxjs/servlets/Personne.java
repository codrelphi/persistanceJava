package com.myajaxjs.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Personne
 */
@WebServlet("/Personne")
public class Personne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Personne() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/personne.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String sexe = request.getParameter("sexe");
		String dn = request.getParameter("dateNaissance");
		String pays = request.getParameter("pays");
		
		String tete = "<hr>" + "<h2>Vos informations</h2>";
		String msg = tete + "Nom: " + nom + " <br>" + 
					 "Prénom: " + prenom + "<br>" + 
					 "Sexe: " + sexe + "<br>" +
					 "Date de naissance: " + dn + "<br>" + 
					 "Pays: " + pays;
		
		out.println(msg);
	}

}
