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

public class CheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter(Parameters.pCheckOutCheck) == null ) {
			// We came here directly via url
			response.sendRedirect(ClientConfig.USER_HOME);
			return;
		}
		String creditCardNum = request.getParameter(Parameters.pCreditCard);
		if( !UtilsClient.isValidCardNum(creditCardNum) ) {
			response.sendRedirect(ClientConfig.CHECKOUT);
			return;
		}
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		User user = UtilsClient.getUserSession(request);
		boolean result = proxy.checkOutMovieCart(user.getMembershipId(), creditCardNum);
		if( result ) {
			response.sendRedirect(ClientConfig.VIEW_ACCOUNT);
		} else {
			response.sendRedirect(ClientConfig.CHECKOUT);
			return;
		}
	}
}
