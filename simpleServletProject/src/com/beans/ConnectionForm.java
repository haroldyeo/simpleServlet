package com.beans;

import javax.servlet.http.HttpServletRequest;

public class ConnectionForm {
	
	private String resultat;

	public void verifierId(HttpServletRequest request){
		String login = request.getParameter("login");
		String pass = request.getParameter("pass");
		
//		if (pass.equals(login+123)){
//			resultat = "OK!";
//		} else{
//			resultat = "KO!";
//		}
		resultat = pass.equals(login+123) ? "OK!" : "KO!";
	}
	
	public String getResultat() {
		return resultat;
	}

	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
	
	

}
