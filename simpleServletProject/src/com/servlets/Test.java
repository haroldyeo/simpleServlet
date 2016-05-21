package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Auteur;

@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Test() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("heure", "jour");
		request.setAttribute("name", "Harold");
		String[] noms = {"estelle", "ruben", "narcisse"};
		request.setAttribute("noms", noms);
		Auteur auteur =  new Auteur();
		auteur.setNom("Hugo");
		auteur.setPrenom("Victor");
		auteur.setActif(false);
		request.setAttribute("auteur", auteur);
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonjour.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
