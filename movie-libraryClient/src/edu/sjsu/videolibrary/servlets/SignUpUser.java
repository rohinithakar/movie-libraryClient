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
 * Servlet implementation class SignUpUser
 */
@WebServlet("/SignUpUser")
public class SignUpUser extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	ServicesProxy proxy = new ServicesProxy(); 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpUser() {
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
		String mem = request.getParameter("mem");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String stAddress = request.getParameter("stAddress");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String ccnum = request.getParameter("ccnum");
		try
		{
			proxy.setEndpoint("http://localhost:8080/Change this end point !!!!!!!!!!!!!!!");
			String res = proxy.signUpUser(uid,pwd,mem,fname,lname, stAddress,city,state,zip,ccnum) t
			if(res != null || res != "")
			{
				out.println("Signed in Sucessfully");
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
