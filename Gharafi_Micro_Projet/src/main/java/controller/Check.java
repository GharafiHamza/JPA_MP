package controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.clients;

import tools.JpaConnection;

/**
 * Servlet implementation class Check
 */
@WebServlet("/Check")
public class Check extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Check() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "connect.jsp";
		String check = JpaConnection.testLogin(request.getParameter("email"), request.getParameter("pwd"));
		if (check.equals("checked")) {
			clients client = JpaConnection.getClient(request.getParameter("email"));
			request.setAttribute("client", client);
			url = "welpage.jsp";
		}else {
			request.setAttribute("para",check);
		}
		RequestDispatcher view = request.getRequestDispatcher(url);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msg = "nothing happened !!!";
		int id = 0;
		String url = "signup.jsp";
		try {
			clients client = new clients(id,request.getParameter("email"),request.getParameter("nom"),request.getParameter("prenom"),request.getParameter("adresse"),Integer.parseInt(request.getParameter("codepostal")),request.getParameter("ville"),request.getParameter("tel"),request.getParameter("pwd"));
			msg = JpaConnection.insertClientData(client);
			request.setAttribute("client", client);
			url = "welpage.jsp";
		} catch (Exception e) {
			
			// TODO: handle exception
		}
		
		System.out.println(msg);
		RequestDispatcher view = request.getRequestDispatcher(url);
		view.forward(request, response);
	}

}
