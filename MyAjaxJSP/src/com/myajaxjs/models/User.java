package com.myajaxjs.models;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class User {
	
	private String nom;
	private String prenom;
	private char sex;
	private String nationality;
	private String login;
	private String password;
	
	public User() {}
	
	public User(String login, String password) {
		super();
		this.login = login;
		this.password = password;
	}

	public User(String nom, String prenom, char sex, String nationality, String login, String password) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.sex = sex;
		this.nationality = nationality;
		this.login = login;
		this.password = password;
	}
	
	public void userConnection(HttpServletRequest request) {
		
		String login = request.getParameter("login");
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
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
}
