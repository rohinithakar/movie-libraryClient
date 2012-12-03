package edu.sjsu.videolibrary.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.ClientConfig;
import edu.sjsu.videolibrary.util.Parameters;
import edu.sjsu.videolibrary.util.UtilsClient;

public class ReturnMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String movieIdStr = request.getParameter(Parameters.pMovieId);
		if( movieIdStr == null || movieIdStr.length() == 0 ) {
			response.sendRedirect(ClientConfig.USER_HOME);
			return;
		}
		
		int movieId = Integer.parseInt(movieIdStr);
		
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		User user = UtilsClient.getUserSession(request);
		boolean result = proxy.returnMovie(user.getMembershipId(), movieId);
		HttpSession session = request.getSession();
		if( result ) {
			session.setAttribute(Parameters.pReturnMovieMessage, "Movie Returned");
		} else {
			session.setAttribute(Parameters.pReturnMovieMessage, "Movie Returned Failed");
		}
		response.sendRedirect(ClientConfig.RETURN_MOVIE);
	}
}
