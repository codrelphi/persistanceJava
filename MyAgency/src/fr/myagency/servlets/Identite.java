package fr.myagency.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.myagency.models.Produit;

@WebServlet("/Identite")
public class Identite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Identite() {
        super();
    }

  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String nom = "Abdelkrim";
		String prenom = "Meriama";
		
		// Rappel: le contr�leur joue le r�le de chef d'orchestre/router/aiguilleur 
		// le contr�leur d�l�gue la t�che d'affichage � la vue
		// this: c'est l'objet courant (l'instance de la classe que nous sommes en train d'utiliser
		// dispatcher = distribuer (en francais) � qqn/ qch
		// forward = propager
				
		String resultat = nom + " " + prenom;
		String message = "Vous vous appelez: ";
		request.setAttribute("personne", resultat);
		request.setAttribute("message", message);
				
		//this.getServletContext().getRequestDispatcher("/index2.jsp").forward(request, response);
		
		// utilisation du beans <Produit>
		// Produit(code, description, prix)
		Produit p0 = new Produit(); 
		Produit p1 = new Produit("F1");
		Produit p2 = new Produit("M33", "Cosmétique pour jolie femme");
		Produit p3 = new Produit("N4", "C'est Nordine", 16000);
		Produit p4 = new Produit("D1", "C'est David", 10000);
		
		List<Produit> produits = new ArrayList<Produit>(); // []
		produits.add(p0);
		produits.add(p1);
		produits.add(p2);
		produits.add(p3);
		produits.add(p4);
		// liste: [p0, p1, p2, p3, p4]
		
		//int tailleProduits = produits.size();
		
		request.setAttribute("produits", produits);
		//request.setAttribute("tailleProduits", tailleProduits);
		
		// c�t� servlet (controlleur), on utilise <request.setAttribute("nom", variable)
		// c�t� jsp (vue), on utilise <request.getAttribute("nom");
		
		//request.setAttribute(name, o);
		
		
		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		
		// Construction de la page html depuis le contr�leur
		// nB: ce n'est pas une bonne mani�re. 
		/*PrintWriter out = response.getWriter();
		
		out.println("<!Doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"utf-8\">");
		out.println("<title>Welcome</title>");
		out.println("<style>"
				+ ".red-color { color: red;}" 
				+ ".green-color { color: green;}"
				+ "</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Welcome to everyone</h1>");
		out.println("<p class=\"green-color\">I am the first man on the earth. Yeaaah!!!</p>");
		out.println("<p>Vous vous appelez: <span class=\"red-color\">" + nom + " " + prenom + "</span></p>");
		out.println("</body>");
		out.println("</html>");*/
		
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
