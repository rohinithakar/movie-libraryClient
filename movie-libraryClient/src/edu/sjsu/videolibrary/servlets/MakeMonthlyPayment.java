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

public class MakeMonthlyPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
				
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		User user = UtilsClient.getUserSession(request);
		String result = proxy.makeMonthlyPayment(user.getMembershipId());
		HttpSession session = request.getSession();
		if(result.equalsIgnoreCase("true")) {
			session.setAttribute(Parameters.pMakePaymentMessage, "Payment Successful");
		} else {
			session.setAttribute(Parameters.pMakePaymentMessage, "Payment Unsuccessful");
		}
		response.sendRedirect(ClientConfig.MAKE_PAYMENT);
	}
}
