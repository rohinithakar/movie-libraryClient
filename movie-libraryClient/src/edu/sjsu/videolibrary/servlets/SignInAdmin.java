package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.sjsu.videolibrary.service.ServiceProxy;

/**
 * Servlet implementation class SignInAdmin
 */

public class SignInAdmin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
	    String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		try
		{
			proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
			String res = proxy.signInAdmin(uid, pwd);
			if(res != null || res != "")
			{
				response.sendRedirect("MainPage.jsp");
			}
			else
			{
				out.println("could not sign in");
			}
		}
		catch(Exception e)
		{}
	}

}
