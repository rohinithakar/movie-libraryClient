package edu.sjsu.videolibrary.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.axis.session.Session;
import org.apache.catalina.connector.Request;

import edu.sjsu.videolibrary.model.User;
import edu.sjsu.videolibrary.service.ServiceProxy;

public class UtilsClient {
	static public boolean isValidInput(String in){
		return in != null && !in.isEmpty() && !in.trim().isEmpty();
	}

	static public boolean isValidCardNum(String ccNum){
		if(isValidInput(ccNum) && ccNum.length()==16){
			for(char temp :ccNum.toCharArray()){
				if(temp < '0'|| temp>'9'){
					return false;
				}
			}
			return true;
		}
		else{
			return false;
		}
	}

	static public boolean validateLogin( HttpServletRequest request, HttpServletResponse response ) throws IOException {
		User user = getUserSession(request);
		if( user == null ) {
			response.sendRedirect(ClientConfig.USER_LOGIN);
			return false;
		}
		return true;
	}

	static public ServiceProxy getServiceProxy() {
		ServiceProxy proxy = new ServiceProxy();
		proxy.setEndpoint(ClientConfig.PROXY_ADDRESS);
		return proxy;
	}

	static public User getUserSession(HttpServletRequest req) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute(Parameters.pUserBean);
		return user;
	}

	/**
	 * A field with multiple values is represented as field1=value1&field1=value2&field1=value3
	 * @param startUrl
	 * @param queryParams
	 * @return
	 */
	static public String generateQueryString(String startUrl, Map<String,String[]> queryParams) {
		StringBuilder queryString = new StringBuilder();
		queryString.append(startUrl);
		boolean firstParam = true;
		for(Map.Entry<String, String[]> kvPair : queryParams.entrySet()) {
			if(kvPair.getValue() != null && kvPair.getValue().length > 0) {
				if(firstParam) {
					String[] values = kvPair.getValue();
					for( int i = 0; i < values.length; i++ ) {
						if( i == 0 ) {
							queryString.append("?" + kvPair.getKey() + "=" + values[i] );
						} else {
							queryString.append("&" + kvPair.getKey() + "=" + values[i] );
						}
						
					}
					firstParam = false;
				} else {
					for( String paramValue : kvPair.getValue() ) {
						queryString.append("&" + kvPair.getKey() + "=" + paramValue );
					}
				}
			}
		}
		return queryString.toString();
	}
	
	public static String[] getStates() { 
		 return new String[] { "AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "DC", "FM", "FL", "GA", "HI", "ID", "IL", "IN",
				 "IA", "KS", "KY", "LA","ME", "MH", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", 
				 "NJ", "NM", "NY","NC", "ND", "OK", "OR", "PA", "PR", "RI", "SC", "SD", "TN", "TX", "UT", "VT","VI", 
				 "VA", "WA", "WV", "WI", "WY" }; 
	}

}
