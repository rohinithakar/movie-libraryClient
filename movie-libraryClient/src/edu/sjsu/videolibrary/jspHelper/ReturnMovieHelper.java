package edu.sjsu.videolibrary.jspHelper;

import java.rmi.RemoteException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.Transaction;
import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.Parameters;
import edu.sjsu.videolibrary.util.UtilsClient;

public class ReturnMovieHelper {
	public static Transaction[] getMovies(HttpServletRequest req, HttpServletResponse resp) throws RemoteException {
		User user = UtilsClient.getUserSession(req);
		int membershipId = user.getMembershipId();
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		Transaction[] trans = proxy.moviesToReturn(membershipId);
		return trans;
	}
	
	public static final String getReturnMovieMessage(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String messageString = (String) session.getAttribute(Parameters.pReturnMovieMessage);
		session.removeAttribute(Parameters.pReturnMovieMessage);
		if(messageString == null){
			return "";
		}
		return messageString;
	}
}
