package fr.bm.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class AllowAccessAction extends ActionSupport implements SessionAware{


	

	private String pseudo;
	private String password;

	private Map<String, Object> session ;

	
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

	public void setSession(Map<String, Object> map){
		this.session=map;
	}

	public Map<String, Object> getSession(){
		return session;
	}

	public String authentifier(){

		System.out.println("dans la methode authentifer........");
		System.out.println("Pseudo : "+this.pseudo);
		System.out.println("Password : "+this.password);

		if(this.pseudo!=null && this.password!=null) 
			if(this.pseudo.equalsIgnoreCase("struts2") && this.password.equals("struts2")){

				this.session=getSession();
				this.session.put("allowAccess", "true");
				this.session.put("role", "admin");
				return "success";
			}

		addFieldError("login", getText("developpez.message.authentechouee"));
		return "input";
	}

	public String deconnecter (){
		System.out.println("dans la m�thode deconnecter.......");
		this.session.clear();
		return "success";

	}
}