package edu.sjsu.videolibrary.jspHelper;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.Utils;

public class HomePageHelper {
	static public String[] getCategories() throws Exception {
		ServiceProxy proxy = Utils.getServiceProxy();
		return proxy.listCategories();
	}
}
