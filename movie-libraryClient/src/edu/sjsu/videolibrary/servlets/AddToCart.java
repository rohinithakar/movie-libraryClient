package edu.sjsu.videolibrary.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.ClientConfig;
import edu.sjsu.videolibrary.util.Parameters;
import edu.sjsu.videolibrary.util.UtilsClient;

public class AddToCart extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String movieIdStr = request.getParameter(Parameters.pMovieId);
		if( movieIdStr == null ) {
			response.sendRedirect(ClientConfig.VIEW_MOVIES);
		}
		int movieId = Integer.parseInt(movieIdStr);
		User user = UtilsClient.getUserSession(request);
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		boolean result = proxy.addItemsToCart(user.getMembershipId(), movieId);
		if( result ) {
		response.sendRedirect(ClientConfig.VIEW_CART_SERVLET);
		} else {
			response.sendRedirect(ClientConfig.VIEW_MOVIES);
		}
	}
}
