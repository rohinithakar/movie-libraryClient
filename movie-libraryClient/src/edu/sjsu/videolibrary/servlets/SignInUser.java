package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.ClientConfig;
import edu.sjsu.videolibrary.util.Parameters;
import edu.sjsu.videolibrary.util.Utils;

/**
 * Servlet implementation class SignInUser
 */

public class SignInUser extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignInUser() {
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
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		
	    String uid = request.getParameter(Parameters.pUserId);
		String pwd = request.getParameter(Parameters.pPassword);
		try
		{
			ServiceProxy proxy = Utils.getServiceProxy();
			User res = proxy.signInUser(uid, pwd);
			if(res != null)
			{
				session.setAttribute(Parameters.pUserBean, res);
				response.sendRedirect(ClientConfig.USER_HOME);
			} else
			{
				session.setAttribute(Parameters.pLoginError,"Incorrect Username or Password");
				response.sendRedirect(ClientConfig.USER_LOGIN);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			session.setAttribute(Parameters.pLoginError,"Server Error Occured");
			response.sendRedirect(ClientConfig.USER_LOGIN);
		}
	}

}
