package fr.bm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;





import fr.bm.modele.Utilisateur;

public class ModeleUtilisateurDAO extends ModeleDAO{
	
	Connection connection = null;
	ResultSet resultSet = null;
	private static ArrayList<Utilisateur>utilisateurs;
	
	public ArrayList<Utilisateur> getAllUtilisateurs(){
		
		PreparedStatement requete = null;
		Utilisateur utilisateur = null;
		
		String requeteString = null;
		
		utilisateurs =  new ArrayList<Utilisateur>();
		
		connection = super.getConnection();
		requeteString = "SELECT * FROM UTILISATEUR";
		
		try {
			requete =  connection.prepareStatement(requeteString);
			resultSet = requete.executeQuery();
			
			if(resultSet != null){
				System.out.println("on a gagné");
			}
			else{
				System.out.println("on est mort");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	
	public int ajouterUtilisateur(Utilisateur utilisateur){
		PreparedStatement requete = null;
		String requeteString = null;
		int codeErreur = 0;
		
		connection = super.getConnection();
		requeteString="INSERT INTO Utilisateur (pseudo,password,nom,prenom,email,telephone,adresse,code_postal,ville) VALUES (?,?,?,?,?,?,?,?,?)";
		try {
			requete = connection.prepareStatement(requeteString);
			
			requete.setString(1, utilisateur.getPseudo());
			requete.setString(2, utilisateur.getPassword());
			requete.setString(3, utilisateur.getNom());
			requete.setString(4, utilisateur.getPrenom());
			requete.setString(5, utilisateur.getEmail());
			requete.setString(6, utilisateur.getTelephone());
			requete.setString(7, utilisateur.getAdresse());
			requete.setString(8, utilisateur.getCode_postal());
			requete.setString(9, utilisateur.getVille());
			codeErreur = requete.executeUpdate();
			System.out.println("code erreur vaut "+codeErreur);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 1;
	}

}
