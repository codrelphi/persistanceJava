package fr.produitappv2.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import fr.produitappv2.models.Produit;

public class ProduitService {

	private String DRIVER = "com.mysql.cj.jdbc.Driver";
	private String URL = "jdbc:mysql://localhost:3306/produitsdb";
	private final String USERNAME = "root";
	private final String PASSWORD = "rootpwd";
	private Connection connexion = null;
	private String query;
	
	public ProduitService() {}
	
	public List<Produit> lectureProduit() {
		
		List<Produit> produits = new ArrayList<Produit>();
		
		try {
			// chargement du driver
			Class.forName(DRIVER);
			
			// ouverture de la connection
			connexion = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
			Statement st = connexion.createStatement();
			query = "SELECT * FROM produits"; // code, description, prix
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				Produit p = new Produit();
				p.setCode(rs.getString("CODE"));
				p.setDescription(rs.getString("DESCRIPTION"));
				p.setPrix(rs.getDouble("PRIX"));
				produits.add(p);
			}
			st.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (connexion != null)
				try {
					connexion.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
			
		return produits;
	}
	
	public void ajoutProduit(String code, String description, double prix) {
		//String msg = "Produit non enregistré !";
		
		try {
			// chargement du driver
			Class.forName(DRIVER);
			
			// ouverture de la connection
			connexion = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
			query = "INSERT INTO produits VALUES(?, ?, ?)";
			PreparedStatement pst = connexion.prepareStatement(query);
			pst.setString(1, code);
			pst.setString(2, description);
			pst.setDouble(3, prix);
			pst.executeUpdate();
			pst.close();
			
			//msg = "Produit bien enregistré !";

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (connexion != null)
				try {
					connexion.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
			
		
	}
	
	public void suppressionDeProduitParCode(String code) {
		//int retourEU = 0;
		try {
			// chargement du driver
			Class.forName(DRIVER);
			
			// ouverture de la connection
			connexion = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			
			query = "DELETE FROM produits WHERE CODE = ?";
			PreparedStatement pst = connexion.prepareStatement(query);
			pst.setString(1, code);
			//retourEU = pst.executeUpdate();
			pst.executeUpdate();
			pst.close();
			
			//System.out.println("Retour code : " + retourEU + "\n");
			//msg = "Produit bien enregistré !";

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			if (connexion != null)
				try {
					connexion.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		//return retourEU;
	}
}
