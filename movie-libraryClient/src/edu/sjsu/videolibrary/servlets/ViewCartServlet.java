package edu.sjsu.videolibrary.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.sjsu.videolibrary.service.ServiceProxy;
import edu.sjsu.videolibrary.util.ClientConfig;
import edu.sjsu.videolibrary.util.UtilsClient;
import edu.sjsu.videolibrary.model.ItemOnCart;
/**
 * Servlet implementation class ViewCartServlet
 */
public class ViewCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ServiceProxy proxy = new ServiceProxy();       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewCartServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		// Maintaining Session
		HttpSession session = request.getSession();
		Integer accessCount = (Integer)session.getAttribute("accessCount");
//		String userId = (String) request.getSession().getAttribute("user");
//		System.out.println("UserId is " + userId );
		int membershipId = UtilsClient.getUserSession(request).getMembershipId();
		if (accessCount == null) {
		//	System.out.println(" Session Id = " + session.getId());
		//	System.out.println("User Logged in at" + new Date(session.getCreationTime()));  
		//	 System.out.println("Logged in first time");
			accessCount = new Integer(0);
		} else {
		//	System.out.println("Logged in after sometime: " + accessCount);
			accessCount = new Integer(accessCount.intValue() + 1);
		}
		session.setAttribute("accessCount", accessCount);
		try {
			proxy.setEndpoint(ClientConfig.PROXY_ADDRESS);
			ItemOnCart[] cartItems = proxy.viewCart(membershipId);
			StringBuilder sb = new StringBuilder();
			sb.append("<tr>");
						
			for (int i = 0; i < cartItems.length; i++) {
				ItemOnCart item = cartItems[i];
				sb.append("<td>").append(item.getMovieName()).append("</td>");
				sb.append("<td>").append(item.getMovieBanner()).append("</td>");
				sb.append("<td>").append(item.getRentAmount()).append("</td>");
				sb.append("<td>").append("<input name=\"removeMovieId_").append(item.getMovieId()).append("\">").append("</td>");
			}
			sb.append("</tr>");
			float total = 0; // Display total = TO-DO
		//	System.out.println("In ViewCartServlet");
		//	System.out.println(sb);
			request.setAttribute("cart", sb.toString());

			String destination = "/View/ViewCart.jsp";
			RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
}
