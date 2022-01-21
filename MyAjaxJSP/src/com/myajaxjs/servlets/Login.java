package com.myajaxjs.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myajaxjs.models.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User();
		user.userConnection(request);
		
		/*String login = request.getParameter("login");
		String password = request.getParameter("password");
		String info = "";
		
		// logique ==> bon utilisateur doit avoir password = login + "2022"

			if (password.equals(login + "2022")) {
				// l'utilisateur s'est bien authentifié...
				info = "Vous êtes connecté !";
				HttpSession session = request.getSession();
				session.setAttribute("login", login);
				session.setAttribute("password", password);
			}
			else {
				info = "Erreur de connexion. Veuillez vérifier vos informations !";
			}
			request.setAttribute("info", info);
			*/
			request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
		}

}
