<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleServiceProxyid" scope="session" class="edu.sjsu.videolibrary.service.ServiceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleServiceProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleServiceProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleServiceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        edu.sjsu.videolibrary.service.Service getService10mtemp = sampleServiceProxyid.getService();
if(getService10mtemp == null){
%>
<%=getService10mtemp %>
<%
}else{
        if(getService10mtemp!= null){
        String tempreturnp11 = getService10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String membershipId_1id=  request.getParameter("membershipId16");
        int membershipId_1idTemp  = Integer.parseInt(membershipId_1id);
        String movieId_2id=  request.getParameter("movieId18");
        int movieId_2idTemp  = Integer.parseInt(movieId_2id);
        boolean addItemsToCart13mtemp = sampleServiceProxyid.addItemsToCart(membershipId_1idTemp,movieId_2idTemp);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addItemsToCart13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
case 20:
        gotMethod = true;
        String movieId_3id=  request.getParameter("movieId23");
        int movieId_3idTemp  = Integer.parseInt(movieId_3id);
        String membershipId_4id=  request.getParameter("membershipId25");
        int membershipId_4idTemp  = Integer.parseInt(membershipId_4id);
        boolean deleteMovieFromCart20mtemp = sampleServiceProxyid.deleteMovieFromCart(movieId_3idTemp,membershipId_4idTemp);
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovieFromCart20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
break;
case 27:
        gotMethod = true;
        String membershipId_5id=  request.getParameter("membershipId30");
        int membershipId_5idTemp  = Integer.parseInt(membershipId_5id);
        edu.sjsu.videolibrary.model.ItemOnCart[] viewCart27mtemp = sampleServiceProxyid.viewCart(membershipId_5idTemp);
if(viewCart27mtemp == null){
%>
<%=viewCart27mtemp %>
<%
}else{
        String tempreturnp28 = null;
        if(viewCart27mtemp != null){
        java.util.List listreturnp28= java.util.Arrays.asList(viewCart27mtemp);
        tempreturnp28 = listreturnp28.toString();
        }
        %>
        <%=tempreturnp28%>
        <%
}
break;
case 32:
        gotMethod = true;
        String userId_6id=  request.getParameter("userId35");
            java.lang.String userId_6idTemp = null;
        if(!userId_6id.equals("")){
         userId_6idTemp  = userId_6id;
        }
        String password_7id=  request.getParameter("password37");
            java.lang.String password_7idTemp = null;
        if(!password_7id.equals("")){
         password_7idTemp  = password_7id;
        }
        String firstName_8id=  request.getParameter("firstName39");
            java.lang.String firstName_8idTemp = null;
        if(!firstName_8id.equals("")){
         firstName_8idTemp  = firstName_8id;
        }
        String lastName_9id=  request.getParameter("lastName41");
            java.lang.String lastName_9idTemp = null;
        if(!lastName_9id.equals("")){
         lastName_9idTemp  = lastName_9id;
        }
        java.lang.String signUpAdmin32mtemp = sampleServiceProxyid.signUpAdmin(userId_6idTemp,password_7idTemp,firstName_8idTemp,lastName_9idTemp);
if(signUpAdmin32mtemp == null){
%>
<%=signUpAdmin32mtemp %>
<%
}else{
        String tempResultreturnp33 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin32mtemp));
        %>
        <%= tempResultreturnp33 %>
        <%
}
break;
case 43:
        gotMethod = true;
        String userId_10id=  request.getParameter("userId46");
            java.lang.String userId_10idTemp = null;
        if(!userId_10id.equals("")){
         userId_10idTemp  = userId_10id;
        }
        String password_11id=  request.getParameter("password48");
            java.lang.String password_11idTemp = null;
        if(!password_11id.equals("")){
         password_11idTemp  = password_11id;
        }
        java.lang.String signInUser43mtemp = sampleServiceProxyid.signInUser(userId_10idTemp,password_11idTemp);
if(signInUser43mtemp == null){
%>
<%=signInUser43mtemp %>
<%
}else{
        String tempResultreturnp44 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInUser43mtemp));
        %>
        <%= tempResultreturnp44 %>
        <%
}
break;
case 50:
        gotMethod = true;
        String userId_12id=  request.getParameter("userId53");
            java.lang.String userId_12idTemp = null;
        if(!userId_12id.equals("")){
         userId_12idTemp  = userId_12id;
        }
        String password_13id=  request.getParameter("password55");
            java.lang.String password_13idTemp = null;
        if(!password_13id.equals("")){
         password_13idTemp  = password_13id;
        }
        java.lang.String signInAdmin50mtemp = sampleServiceProxyid.signInAdmin(userId_12idTemp,password_13idTemp);
if(signInAdmin50mtemp == null){
%>
<%=signInAdmin50mtemp %>
<%
}else{
        String tempResultreturnp51 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInAdmin50mtemp));
        %>
        <%= tempResultreturnp51 %>
        <%
}
break;
case 57:
        gotMethod = true;
        String type_14id=  request.getParameter("type60");
            java.lang.String type_14idTemp = null;
        if(!type_14id.equals("")){
         type_14idTemp  = type_14id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers57mtemp = sampleServiceProxyid.viewMembers(type_14idTemp);
if(viewMembers57mtemp == null){
%>
<%=viewMembers57mtemp %>
<%
}else{
        String tempreturnp58 = null;
        if(viewMembers57mtemp != null){
        java.util.List listreturnp58= java.util.Arrays.asList(viewMembers57mtemp);
        tempreturnp58 = listreturnp58.toString();
        }
        %>
        <%=tempreturnp58%>
        <%
}
break;
case 62:
        gotMethod = true;
        String userId_15id=  request.getParameter("userId65");
            java.lang.String userId_15idTemp = null;
        if(!userId_15id.equals("")){
         userId_15idTemp  = userId_15id;
        }
        java.lang.String deleteUserAccount62mtemp = sampleServiceProxyid.deleteUserAccount(userId_15idTemp);
if(deleteUserAccount62mtemp == null){
%>
<%=deleteUserAccount62mtemp %>
<%
}else{
        String tempResultreturnp63 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount62mtemp));
        %>
        <%= tempResultreturnp63 %>
        <%
}
break;
case 67:
        gotMethod = true;
        String userId_16id=  request.getParameter("userId70");
            java.lang.String userId_16idTemp = null;
        if(!userId_16id.equals("")){
         userId_16idTemp  = userId_16id;
        }
        java.lang.String deleteAdminAccount67mtemp = sampleServiceProxyid.deleteAdminAccount(userId_16idTemp);
if(deleteAdminAccount67mtemp == null){
%>
<%=deleteAdminAccount67mtemp %>
<%
}else{
        String tempResultreturnp68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount67mtemp));
        %>
        <%= tempResultreturnp68 %>
        <%
}
break;
case 72:
        gotMethod = true;
        String movieId_17id=  request.getParameter("movieId75");
            java.lang.String movieId_17idTemp = null;
        if(!movieId_17id.equals("")){
         movieId_17idTemp  = movieId_17id;
        }
        java.lang.String deleteMovie72mtemp = sampleServiceProxyid.deleteMovie(movieId_17idTemp);
if(deleteMovie72mtemp == null){
%>
<%=deleteMovie72mtemp %>
<%
}else{
        String tempResultreturnp73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie72mtemp));
        %>
        <%= tempResultreturnp73 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>