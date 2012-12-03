package edu.sjsu.videolibrary.jspHelper;

import java.util.HashMap;
import java.util.Map;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.ClientConfig;
import edu.sjsu.videolibrary.util.UtilsClient;

public class HomePageHelper {
	static public Map<String,String> getCategories() throws Exception {
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		Map<String,String> categoryUrls = new HashMap<String,String>();
		for( String categoryName : proxy.listCategories() ) {
			categoryUrls.put(categoryName, ClientConfig.VIEW_MOVIES + "?viewCategory=" + categoryName);
		}
		return categoryUrls;
	}
}
