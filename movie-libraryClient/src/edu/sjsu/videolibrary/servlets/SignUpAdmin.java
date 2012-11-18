package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.ServicesProxy;

/**
 * Servlet implementation class SignUpAdmin
 */
@WebServlet("/SignUpAdmin")
public class SignUpAdmin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	ServicesProxy proxy = new ServicesProxy();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpAdmin() {
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
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		try
		{
			proxy.setEndpoint("http://localhost:8080/SimpleMarketPlace/services/Service");
			String res = proxy.signUpAdmin(uid, pwd,fname,lname);
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
