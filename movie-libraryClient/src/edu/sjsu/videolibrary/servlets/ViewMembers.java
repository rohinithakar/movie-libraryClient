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
import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;

 
//@WebServlet("/Admin/ViewMembers")
public class ViewMembers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServiceProxy proxy = new ServiceProxy();  
	private PrintWriter out;
 
    public ViewMembers() {
        super();
    }
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String memberType = request.getParameter("memberType");
			out = response.getWriter(); 
			proxy.setEndpoint("http://localhost:8080/movie-library/services/Service");
			out.println("<h2><span>Sample table</span></h2>");
			out.println("<table width=100% border=0><tbody>"); 			
			if (memberType.equals("Admin")) {
				displayAdmins(); 
			} else { 
				displayMembers(memberType); 
			}
			out.println("</tbody></table>"); 
			
		} catch (Exception e) {}	

	}
	
	public void displayMembers (String memberType) throws RemoteException { 
		User members [] = proxy.viewMembers(memberType);
		
		if (members.length > 0) {
			for (int i = 0; i < members.length; i++) { 
				User m = members[i]; 
				out.print("<tr><td>" + m.getMembershipId() + "</td><td>" + m.getFirstName() + " " +  m.getLastName() + "</td><td>"  + m.getUserId() + "</td><td>" + m.getStartDate() + "</td>" );
				out.print("<td><form name=\"memberForm" + i + "\" method=\"post\" action=\"EditMember\">"); 
				out.print("<input type=\"hidden\" name=\"id\" value="+ m.getMembershipId() + ">"); 
				out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
				out.print("</form></td></tr>");
			}
		} else { 
			out.print("No members <a href=\"ViewMembers.jsp\">Try another</a>"); 
		}		
		out.close();
	}
	
	public void displayAdmins () throws RemoteException { 
		Admin admins [] = proxy.viewAdmins();
		if (admins.length > 0) {
			for (int i = 0; i < admins.length; i++) { 
				Admin m = admins[i]; 
				out.print("<tr><td>" + m.getAdminId()  + "</td><td>" + m.getFirstName() + " " +  m.getLastName() + "</td>");
				out.print("<td><form name=\"adminForm" + i + "\" method=\"post\" action=\"EditAdmin\">"); 
				out.print("<input type=\"hidden\" name=\"id\" value="+ m.getAdminId() + ">"); 
				out.print("<input type=\"submit\"  name=\"act\" value=\"Edit\"  />    <input type=\"submit\"  name=\"act\" value=\"Delete\"  />");
				out.print("</form></td></tr>");
			}			
		}
		
	}
	

}
