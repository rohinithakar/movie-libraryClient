package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.RemoteException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.Movie;
import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;


public class EditMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();  
	
	private String msg = "";
	private boolean error = false; 

    public EditMovie() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();  

		try {
			String id = request.getParameter("id");
			String action = request.getParameter("act");
			
			HttpSession session = request.getSession();	   			
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			
			if (action.equals("Edit")) {					
				editMovie(session, request, response, id);
			} else if (action.equals("Update")) {
				updateMovie(session, request, response, id);
			}  else if (action.equals("Delete")) {
				deleteMovie(session, request, response, id);
			} else {
				response.sendRedirect("ViewMovies.jsp");
			}
			
		} catch (Exception e) {}
		
		out.print(msg);
				
	}
	
    public void editMovie (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		Movie movie = proxy.displayMovieInformation(Integer.parseInt(id));
		
		if (movie.getMovieName() != null) {
			//Include categories 
			session.setAttribute("currentMovie", movie);
			response.sendRedirect("EditMovie.jsp");
		}  else { 
			error = true; 
			msg = "Invalid information";
		} 
    }
    
    public void updateMovie (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
    	
	    int movieId = Integer.parseInt(request.getParameter("movieId")); 
	    String movieName = request.getParameter("moiveName"); 
	    String movieBanner = request.getParameter("movieBanner"); 
	    int availableCopies = Integer.parseInt(request.getParameter("availableCopies")); 
	    int categoryId = Integer.parseInt(request.getParameter("categoryId")); 
	    String releaseDate = request.getParameter("releaseDate");  
	    
	    System.out.println(movieId + " " + movieName + " " + movieBanner + releaseDate + "  " + availableCopies + " " + categoryId);
	   
	    String done =  proxy.updateMovieInfo(movieId, movieName, movieBanner, releaseDate, availableCopies, categoryId);
	    
	    if (!done.equals("true")) {
	    	msg = "Error with database connection"; 
	    	error = true; 
		} else {
			msg = ("Movie updated <a href=\"ViewMovies.jsp\">go Back to View Movies</a> "); 
		}
    }
    
 
    public void deleteMovie (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		String done = proxy.deleteMovie(id);
		if (!done.equals("false")) {
			msg = ("Movie deleted <a href=\"ViewMovies.jsp\">go Back to View Movies</a> "); 
		} else {
			error = true; 
		}
    }

}