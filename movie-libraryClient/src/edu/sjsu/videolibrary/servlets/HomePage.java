package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.Movie;
import edu.sjsu.videolibrary.service.ServiceProxy;

/**
 * Servlet implementation class HomePage
 */
public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy=new ServiceProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		Movie[] movieArray = null;
		Movie m = new Movie();	
		proxy.setEndpoint("http://localhost:8080/MovieLibrary/services/Service");
		if(request.getParameter("ViewByCategory")!=null){
			String category=(String) request.getParameter("category");					
			movieArray = proxy.listMoviesByCategory(category);				
		}
		
		if(request.getParameter("ViewAll")!=null){
			movieArray = proxy.listAllMovies();			
		}
		
		if(request.getParameter("search")!=null){
			String userInput = (String)request.getParameter("userInput");
			String searchCriteria = (String)request.getParameter("searchCriteria");
			if(searchCriteria.equals("name")){
				movieArray= proxy.searchByName(userInput);
			}
			if(searchCriteria.equals("banner")){
				movieArray=proxy.searchByMovieBanner(userInput);
			}
			if(searchCriteria.equals("releaseDate")){
				movieArray=proxy.searchByReleaseDate(userInput);
			}
			
		}
		session.setAttribute("movieArray",movieArray);
		response.sendRedirect("ViewMovies.jsp");
	}


	 /* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
