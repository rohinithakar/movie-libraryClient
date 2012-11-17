package edu.sjsu.videolibrary.servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.Utils;

public class UpdateUserInfo extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public UpdateUserInfo(){
		super();	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//	if(!Utils.validateLogin(request, response)) {
		//		return;
		//	}

		PrintWriter out = response.getWriter();
		try{
			int membershipId = Integer.parseInt(request.getParameter("membershipId"));
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String address = request.getParameter("address");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zipCode = request.getParameter("zipCode");
			String membershipType = request.getParameter("membershipType");
			String creditCardNumber = request.getParameter("creditCardNumber");
			String userId = request.getParameter("userId");

			ServiceProxy proxy  = new ServiceProxy();
			proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
			String result = proxy.updateUserInfo(membershipId, userId, firstName, lastName, address, city, state, zipCode, membershipType, creditCardNumber);

			if(result == null){
				response.sendRedirect("UpdateUserInfo?msg=serverError");
				return;
			}
			if(result.equalsIgnoreCase("true")){
				response.sendRedirect("UpdateUserInfo?msg=successful");
				return;
			}

		}
		catch(Exception e){
			e.getMessage();
		}		
	}
}






