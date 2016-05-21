package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.ConnectionForm;

@WebServlet("/Test2")
public class Test2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Test2() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String[] noms = {"estelle", "ruben", "narcisse"};
		request.setAttribute("noms", noms);
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonsoir.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ConnectionForm form = new ConnectionForm();
		form.verifierId(request);
		
		request.setAttribute("form", form);
		
//		request.setAttribute("nom", request.getParameter("nom"));
		this.getServletContext().getRequestDispatcher("/WEB-INF/bonsoir.jsp").forward(request, response);
	}

}
