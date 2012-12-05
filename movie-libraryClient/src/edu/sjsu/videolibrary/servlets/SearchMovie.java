package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.Movie;
import edu.sjsu.videolibrary.service.ServiceProxy;
 
public class SearchMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();   
       
  
    public SearchMovie() {
        super();
     }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		if(request.getParameter("search")!=null){
			Movie [] array = new Movie[0];
			String movieBanner = request.getParameter("movieBanner");
 			String releaseDate = ""; 
			if (Boolean.parseBoolean(request.getParameter("date")) == true) {
				releaseDate = request.getParameter("year") + "/" + request.getParameter("month") + "/" + request.getParameter("day");
			}  
			String movieName = request.getParameter("movieName");
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			array = proxy.searchMovie(movieName, movieBanner, releaseDate);
			session.setAttribute("movieArray", array);
			response.sendRedirect("SearchMovieResults.jsp");
			
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("this is called");
	}

}