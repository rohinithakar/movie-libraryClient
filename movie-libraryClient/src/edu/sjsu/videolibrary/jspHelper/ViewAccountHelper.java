package edu.sjsu.videolibrary.jspHelper;

import java.rmi.RemoteException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.model.Transaction;
import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.UtilsClient;

public class ViewAccountHelper {
	public static Transaction[] getUserTransactions(HttpServletRequest req, HttpServletResponse resp) throws RemoteException {
		User user = UtilsClient.getUserSession(req);
		int membershipId = user.getMembershipId();
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		Transaction[] trans = proxy.viewAccountTransactions(membershipId);
		return trans;
	}
}
