package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Test4")
public class Test4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Test4() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String prenom = (String)session.getAttribute("prenom");
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/session.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		
		HttpSession session = request.getSession();
		session.setAttribute("nom", nom);
		session.setAttribute("prenom", prenom);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/session.jsp").forward(request, response);
	}

}
