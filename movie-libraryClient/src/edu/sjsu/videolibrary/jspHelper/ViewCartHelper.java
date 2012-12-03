package edu.sjsu.videolibrary.jspHelper;

import java.rmi.RemoteException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.model.ItemOnCart;
import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.UtilsClient;

public class ViewCartHelper {

	public static ItemOnCart[] getCartItems(HttpServletRequest req, HttpServletResponse resp ) throws RemoteException {
		ItemOnCart[] cartItems = null;
		try {
			User user = UtilsClient.getUserSession(req);
			ServiceProxy proxy = UtilsClient.getServiceProxy();
			cartItems = proxy.viewCart(user.getMembershipId());
		} catch( RemoteException e ) {
			e.printStackTrace();
		}
		return cartItems;
	}
}
