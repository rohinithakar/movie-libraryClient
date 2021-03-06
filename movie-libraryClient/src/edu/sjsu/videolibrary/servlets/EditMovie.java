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
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

				
	}
	
    public void editMovie (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		Movie movie = proxy.displayMovieInformation(Integer.parseInt(id));
		
		if (movie.getMovieName() != null) {
 			session.setAttribute("currentMovie", movie);
			request.setAttribute("categoryName", request.getAttribute("categoryName"));
			response.sendRedirect("EditMovie.jsp");
		}  else { 
			error = true; 
			msg = "Invalid information";
		} 
    }
    
    public void updateMovie (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
    	String msg = "";  
    	try {
		    int movieId = Integer.parseInt(request.getParameter("movieId")); 
		    String movieName = request.getParameter("moiveName"); 
		    String movieBanner = request.getParameter("movieBanner"); 
		    int availableCopies = Integer.parseInt(request.getParameter("availableCopies")); 
		    int categoryId = Integer.parseInt(request.getParameter("categoryId")); 
		    String releaseDate = request.getParameter("releaseDate");  
		    msg = proxy.updateMovieInfo(movieId, movieName, movieBanner, releaseDate, availableCopies, categoryId);
    	} catch (Exception e) { 
    		msg = "error";
    		
    	}
		response.sendRedirect("EditMovie.jsp?msg=" + msg);

	    
    }
    
 
    public void deleteMovie (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
		String done = proxy.deleteMovie(id);
		if (!done.equals("false")) {
			msg = "true deleted"; 
		} else {
			msg = "error deleted"; 
		}
		response.sendRedirect("ViewMovies.jsp?msg="+msg);
		
    }

}