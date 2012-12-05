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

public class CreateMovie extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();  
	
    public CreateMovie() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String done = "";
				
		try {
			String action = request.getParameter("act");						

			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			if (action.equals("Create")) {	

			    String movieName = request.getParameter("moiveName"); 
			    String movieBanner = request.getParameter("movieBanner"); 
			    int availableCopies = Integer.parseInt(request.getParameter("availableCopies")); 
			    int categoryId = Integer.parseInt(request.getParameter("categoryId")); 
			    String releaseDate = request.getParameter("year") + "/" + request.getParameter("month") + "/" + request.getParameter("day");  
			    
			    done = proxy.createNewMovie(movieName, movieBanner, releaseDate, availableCopies, categoryId);
 			    System.out.println("done: " + done);		    
			}  
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("CreateMovie.jsp?msg="+ done);
	}
}