package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.RemoteException;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.model.Admin;
import edu.sjsu.videolibrary.model.Movie;
import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;


//@WebServlet("/Admin/ViewMovies")
public class ViewMovies extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServiceProxy proxy = new ServiceProxy();  
	private PrintWriter out;
 
    public ViewMovies() {
        super();
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String category = request.getParameter("category");
			out = response.getWriter(); 
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			out.println("<h2><span>Movies</span></h2>");
			out.println("<table width=100% border=0><tbody>"); 			
 
			displayMovies(category); 
 
			out.println("</tbody></table>"); 
			
		} catch (Exception e) {}	

	}
	
	public void displayMovies (String category) throws RemoteException { 
		Movie movies [] = proxy.listMoviesByCategory(category);
		
		if (movies.length > 0) {
			for (int i = 0; i < movies.length; i++) { 
				Movie m = movies[i]; 
				out.print("<tr><td>" + m.getMovieId() + "</td><td>" + m.getMovieName() + "</td><td>" +  m.getCatagory() + "</td><td>"  + m.getMovieBanner() + "</td><td>" 
						+ m.getAvailableCopies() + "</td><td>" + m.getReleaseDate() + "</td>" );
				out.print("<td><form name=\"movieForm" + i + "\" method=\"post\" action=\"EditMovie\">"); 
				out.print("<input type=\"hidden\" name=\"id\" value="+ m.getMovieId() + ">");
				out.print("<input type=\"hidden\" name=\"categoryId\" value="+ m.getCategoryId() + ">"); 
				out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
				out.print("</form></td></tr>");
			}
		} else { 
			out.print("No members <a href=\"ViewCategories.jsp\">Try another</a>"); 
		}		
		out.close();
	}
	
 
	

}
