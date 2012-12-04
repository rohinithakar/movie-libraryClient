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
	

	public static Movie[] getSearchedMovies(HttpServletRequest req, HttpServletResponse resp) throws RemoteException {
		String movieName = (String) req.getParameter(Parameters.pMovieName);
		String movieBanner = (String) req.getParameter(Parameters.pMovieBanner);
		String movieReleaseDate = (String) req.getParameter(Parameters.pMovieReleaseDate);
		
		int page = 0;
		String pageNum = (String) req.getParameter(Parameters.pPage);
		if(pageNum != null) {
			page = Integer.parseInt(pageNum);
		}
		
		ServiceProxy proxy = UtilsClient.getServiceProxy();
		Movie[] movieList = null;
		movieList = proxy.searchMovieByPage(movieName, movieBanner, movieReleaseDate, page * ClientConfig.DEFAULT_PAGE_SIZE, ClientConfig.DEFAULT_PAGE_SIZE);
		return movieList;
	}
	
	
	@SuppressWarnings("unchecked")
	public static String[] getPageLinks(String moviePage, HttpServletRequest req, HttpServletResponse resp) {
		int page = 0;
		String pageNum = (String) req.getParameter(Parameters.pPage);
		if(pageNum != null) {
			page = Integer.parseInt(pageNum);
		}
		
		Map<String,String[]> paramMap = new HashMap<String, String[]>();
		paramMap.putAll(req.getParameterMap());
		
		String[] pageLinks = new String[2];
		if(page!=0) {
			paramMap.put(Parameters.pPage, new String[] { Integer.valueOf(page-1).toString() } );
			pageLinks[0] = UtilsClient.generateQueryString(moviePage, paramMap );
		} else {
			pageLinks[0] = null;
		}
		paramMap.put(Parameters.pPage, new String[] { Integer.valueOf(page+1).toString() });
		pageLinks[1] = UtilsClient.generateQueryString(moviePage, paramMap );
		return pageLinks;
	}

}
