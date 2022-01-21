package fr.produitappv2.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitappv2.services.ProduitService;

/**
 * Servlet implementation class AjoutProduit
 */
@WebServlet("/AjoutProduit")
public class AjoutProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjoutProduit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/ajoutProduit.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProduitService produitService = new ProduitService();
		
		String code = request.getParameter("code");
		String description = request.getParameter("description");
		double prix = Double.parseDouble(request.getParameter("prix"));
		
		String msg = "code : " + code + " " + "description : " + description + " " + "prix : " + prix;
		
		produitService.ajoutProduit(code, description, prix);
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("/WEB-INF/ajoutProduit.jsp").forward(request, response);
	}

}
