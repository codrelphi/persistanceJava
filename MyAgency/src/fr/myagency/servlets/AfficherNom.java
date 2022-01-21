package fr.myagency.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AfficherNom
 */
@WebServlet("/AfficherNom")
public class AfficherNom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AfficherNom() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/afficherNom.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		String nomV = request.getParameter("nomIn");
		//System.out.println("\nNom: " + nomV + "\n");
		//request.setAttribute("nom", nomV);
		//request.getRequestDispatcher("/WEB-INF/resultatAfficherNom.jsp").forward(request, response);
		
		PrintWriter out = response.getWriter();
		String message = "<p>Votre nom est: <span style=\"color:blue\">" + nomV + "</span></p>";
		out.println(message);
		

	}

}
