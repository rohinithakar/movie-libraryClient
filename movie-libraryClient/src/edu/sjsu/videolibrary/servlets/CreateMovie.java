package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.service.ServiceProxy;


//@WebServlet("/Admin/CreateMovie")
public class CreateMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();  
	
	private String msg = "";
	private boolean error = false; 

    public CreateMovie() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();  

		try {
			String id = request.getParameter("id");
			String action = request.getParameter("act");
			
			HttpSession session = request.getSession();	   			
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			if (action.equals("Create")) {					
				createMovie(session, request, response, id);
 			} else {
				response.sendRedirect("ViewMovies.jsp");
			}
			
		} catch (Exception e) {}
		
		out.print(msg);
				
	}
	
    public void createMovie (HttpSession session, HttpServletRequest request, HttpServletResponse response, String id) throws Exception { 
    	
	    String movieName = request.getParameter("moiveName"); 
	    String movieBanner = request.getParameter("movieBanner"); 
	    int availableCopies = Integer.parseInt(request.getParameter("availableCopies")); 
	    int categoryId = Integer.parseInt(request.getParameter("categoryId")); 
	    String releaseDate = request.getParameter("releaseDate");  
	    	   
	    //Need to add Validation 
	    
	    String done = proxy.createNewMovie(movieName, movieBanner, releaseDate, availableCopies, categoryId);
	    
	    if (!done.equals("true")) {
	    	msg = "Error with database connection"; 
	    	error = true; 
		} else {
			msg = ("Movie created <a href=\"ViewMovies.jsp\">go Back to View Movies</a> "); 
		}
    }
}