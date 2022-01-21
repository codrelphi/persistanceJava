package fr.produitappv2.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitappv2.services.ProduitService;

/**
 * Servlet implementation class SuppressionProduit
 */
@WebServlet("/SuppressionProduit")
public class SuppressionProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SuppressionProduit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProduitService produitService = new ProduitService();
		
		String code = request.getParameter("code");
		//String code = "C1";
		
		//int retourEU = produitService.suppressionDeProduitParCode(code);
		//String msg = "Retour EU : " + retourEU;
		
		request.setAttribute("code", code);
		
		produitService.suppressionDeProduitParCode(code);
		request.getRequestDispatcher("/WEB-INF/listeProduits.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
