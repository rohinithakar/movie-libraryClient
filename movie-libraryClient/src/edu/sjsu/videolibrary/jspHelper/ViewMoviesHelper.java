package edu.sjsu.videolibrary.jspHelper;

import java.rmi.RemoteException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.sjsu.videolibrary.model.Movie;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.ClientConfig;
import edu.sjsu.videolibrary.util.Parameters;
import edu.sjsu.videolibrary.util.UtilsClient;

public class ViewMoviesHelper {

	public static Movie[] getMovies(HttpServletRequest req, HttpServletResponse resp) throws RemoteException {
		String categoryName = (String) req.getParameter(Parameters.pCategory);
		int page = 0;
		String pageNum = (String) req.getParameter(Parameters.pPage);
		if(pageNum != null) {
			page = Integer.parseInt(pageNum);
		}
		
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		Movie[] movieList = null;
		if( categoryName == null ) {
			movieList = proxy.listAllMoviesByPage(page * ClientConfig.DEFAULT_PAGE_SIZE, ClientConfig.DEFAULT_PAGE_SIZE);
		} else {			
			movieList = proxy.listMoviesByCategoryByPage(categoryName, page * ClientConfig.DEFAULT_PAGE_SIZE, ClientConfig.DEFAULT_PAGE_SIZE);
		}
		return movieList;
	}
	
	public static String[] getPageLinks(HttpServletRequest req, HttpServletResponse resp) {
		String categoryName = (String) req.getParameter(Parameters.pCategory);
		if(categoryName == null) {
			categoryName = "";
		}
		int page = 0;
		String pageNum = (String) req.getParameter(Parameters.pPage);
		if(pageNum != null) {
			page = Integer.parseInt(pageNum);
		}
		
		String[] pageLinks = new String[2];
		if(page!=0) {
			Map<String,String> map = new HashMap<String,String>();
			map.put(Parameters.pCategory, categoryName);
			map.put(Parameters.pPage, Integer.valueOf(page-1).toString());
			pageLinks[0] = UtilsClient.generateQueryString(ClientConfig.VIEW_MOVIES, map );
		} else {
			pageLinks[0] = null;
		}
		Map<String,String> map = new HashMap<String,String>();
		map.put(Parameters.pCategory, categoryName);
		map.put(Parameters.pPage, Integer.valueOf(page+1).toString());
		pageLinks[1] = UtilsClient.generateQueryString(ClientConfig.VIEW_MOVIES, map );
		return pageLinks;
	}

}
