package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.sjsu.videolibrary.service.ServiceProxy;

 

public class SignUpAdmin extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	ServiceProxy proxy = new ServiceProxy();
       
 
    public SignUpAdmin() {
        super();
     }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String msg = "";
		response.setContentType("text/html");
		
	    String uid = request.getParameter("uid");
		String pwd = request.getParameter("pwd");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String confirm = request.getParameter("confirmation");
		
		System.out.println(uid + " " + pwd + " " + fname + " " + lname + " " + confirm); 
		
		if (!pwd.equals(confirm)) {
			msg = "Not matching password";
		} else {
			try {
				proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
				msg = proxy.signUpAdmin(uid, pwd,fname,lname);
			}
			catch(Exception e) { 
				e.printStackTrace();
				msg = "error"; 
			}
		}
		response.sendRedirect("SignUpAdmin.jsp?msg=" + msg);

	}

}
