package fr.bm.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import fr.bm.dao.ModeleUtilisateurDAO;
import fr.bm.modele.Utilisateur;

public class InscriptionAction extends ActionSupport implements Preparable,ModelDriven{
	
	private String pseudo;
	private String password;
	private String confirm_password;
	private String nom;
	private String prenom;
	private String email;
	private String telephone;
	private String adresse;
	private String code_postal;
	private String ville;
	
	private Utilisateur utilisateur;
	
	
	public String validerPseudo(){
		System.out.println("validerPseudo");
		if (pseudo == "struts2")return "success";else return "input";
	}
	
	public String validerInscription(){
		System.out.println("validerInscription");
		utilisateur = new Utilisateur();
		
		utilisateur.setPseudo(pseudo);
		utilisateur.setPassword(password);
		utilisateur.setNom(nom);
		utilisateur.setPrenom(prenom);
		utilisateur.setEmail(email);
		utilisateur.setTelephone(telephone);
		utilisateur.setAdresse(adresse);
		utilisateur.setCode_postal(code_postal);
		utilisateur.setVille(ville);
		
		
		
		ModeleUtilisateurDAO modeleUtilisateurDAO = new ModeleUtilisateurDAO();
		modeleUtilisateurDAO.ajouterUtilisateur(utilisateur);
		return "success";
	}




	public String getPseudo() {
		return pseudo;
	}




	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	public String getConfirm_password() {
		return confirm_password;
	}




	public void setConfirm_password(String confirm_password) {
		this.confirm_password = confirm_password;
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




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getTelephone() {
		return telephone;
	}




	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}




	public String getAdresse() {
		return adresse;
	}




	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}




	public String getCode_postal() {
		return code_postal;
	}




	public void setCode_postal(String code_postal) {
		this.code_postal = code_postal;
	}




	public String getVille() {
		return ville;
	}




	public void setVille(String ville) {
		this.ville = ville;
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
	

}
