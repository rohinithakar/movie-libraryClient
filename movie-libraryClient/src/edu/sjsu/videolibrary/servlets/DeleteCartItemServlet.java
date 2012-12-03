package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.ClientConfig;
import edu.sjsu.videolibrary.util.Parameters;
import edu.sjsu.videolibrary.util.UtilsClient;




/**
 * Servlet implementation class DeleteCartItemServlet
 */
public class DeleteCartItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteCartItemServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		if(!UtilsClient.validateLogin(request, response)) {
			return;
		}

		String StrMovieId = request.getParameter(Parameters.pMovieId);
		if( StrMovieId == null){
			response.sendRedirect(ClientConfig.VIEW_CART);
			return;
		}
		int movieId = Integer.parseInt(StrMovieId);
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		User user = UtilsClient.getUserSession(request);
		int membershipId = user.getMembershipId();
		
		boolean result = proxy.deleteMovieFromCart(movieId, membershipId);
		if(result) {
			response.sendRedirect(ClientConfig.VIEW_CART);
		} else {
			response.sendRedirect(ClientConfig.VIEW_CART);
			return;
		}
	}
}
