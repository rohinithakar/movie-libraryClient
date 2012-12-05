package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
 
public class SearchMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();   
       
  
    public SearchMember() {
        super();
     }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		if(request.getParameter("search")!=null){
			User[] array = new User[0];
			String membershipId = request.getParameter("membershipId");
			String userId = request.getParameter("userId");
			String membershipType = request.getParameter("membershipType");
			String startDate = ""; 
			if (Boolean.parseBoolean(request.getParameter("date")) == true) {
				startDate = request.getParameter("year") + "/" + request.getParameter("month") + "/" + request.getParameter("day");
			}  
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zipCode = request.getParameter("zipCode");
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			array = proxy.searchUser(membershipId, userId, membershipType, startDate, firstName, lastName, address, city, state, zipCode);
			session.setAttribute("userArray", array);
			response.sendRedirect("SearchResults.jsp");
			
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
