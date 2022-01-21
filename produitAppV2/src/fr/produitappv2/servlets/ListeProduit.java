package fr.produitappv2.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.produitappv2.services.ProduitService;

/**
 * Servlet implementation class ListeProduit
 */
@WebServlet("/ListeProduit")
public class ListeProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListeProduit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProduitService produitService = new ProduitService();
		request.setAttribute("produits", produitService.lectureProduit());
		request.getRequestDispatcher("/WEB-INF/listeProduits.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
