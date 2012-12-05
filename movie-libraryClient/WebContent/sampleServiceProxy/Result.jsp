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
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 19:
        gotMethod = true;
        java.lang.String[] getStates19mtemp = sampleServiceProxyid.getStates();
if(getStates19mtemp == null){
%>
<%=getStates19mtemp %>
<%
}else{
        String tempreturnp20 = null;
        if(getStates19mtemp != null){
        java.util.List listreturnp20= java.util.Arrays.asList(getStates19mtemp);
        tempreturnp20 = listreturnp20.toString();
        }
        %>
        <%=tempreturnp20%>
        <%
}
break;
case 22:
        gotMethod = true;
        String membershipId_1id=  request.getParameter("membershipId25");
        int membershipId_1idTemp  = Integer.parseInt(membershipId_1id);
        String movieId_2id=  request.getParameter("movieId27");
        int movieId_2idTemp  = Integer.parseInt(movieId_2id);
        boolean addItemsToCart22mtemp = sampleServiceProxyid.addItemsToCart(membershipId_1idTemp,movieId_2idTemp);
        String tempResultreturnp23 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addItemsToCart22mtemp));
        %>
        <%= tempResultreturnp23 %>
        <%
break;
case 29:
        gotMethod = true;
        String membershipId_3id=  request.getParameter("membershipId32");
        int membershipId_3idTemp  = Integer.parseInt(membershipId_3id);
        edu.sjsu.videolibrary.model.ItemOnCart[] viewCart29mtemp = sampleServiceProxyid.viewCart(membershipId_3idTemp);
if(viewCart29mtemp == null){
%>
<%=viewCart29mtemp %>
<%
}else{
        String tempreturnp30 = null;
        if(viewCart29mtemp != null){
        java.util.List listreturnp30= java.util.Arrays.asList(viewCart29mtemp);
        tempreturnp30 = listreturnp30.toString();
        }
        %>
        <%=tempreturnp30%>
        <%
}
break;
case 34:
        gotMethod = true;
        String movieId_4id=  request.getParameter("movieId37");
        int movieId_4idTemp  = Integer.parseInt(movieId_4id);
        String membershipId_5id=  request.getParameter("membershipId39");
        int membershipId_5idTemp  = Integer.parseInt(membershipId_5id);
        boolean deleteMovieFromCart34mtemp = sampleServiceProxyid.deleteMovieFromCart(movieId_4idTemp,membershipId_5idTemp);
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovieFromCart34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
break;
case 41:
        gotMethod = true;
        String membershipId_6id=  request.getParameter("membershipId44");
        int membershipId_6idTemp  = Integer.parseInt(membershipId_6id);
        String creditCardNumber_7id=  request.getParameter("creditCardNumber46");
            java.lang.String creditCardNumber_7idTemp = null;
        if(!creditCardNumber_7id.equals("")){
         creditCardNumber_7idTemp  = creditCardNumber_7id;
        }
        boolean checkOutMovieCart41mtemp = sampleServiceProxyid.checkOutMovieCart(membershipId_6idTemp,creditCardNumber_7idTemp);
        String tempResultreturnp42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(checkOutMovieCart41mtemp));
        %>
        <%= tempResultreturnp42 %>
        <%
break;
case 48:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies48mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies48mtemp == null){
%>
<%=listAllMovies48mtemp %>
<%
}else{
        String tempreturnp49 = null;
        if(listAllMovies48mtemp != null){
        java.util.List listreturnp49= java.util.Arrays.asList(listAllMovies48mtemp);
        tempreturnp49 = listreturnp49.toString();
        }
        %>
        <%=tempreturnp49%>
        <%
}
break;
case 51:
        gotMethod = true;
        String movieName_8id=  request.getParameter("movieName54");
            java.lang.String movieName_8idTemp = null;
        if(!movieName_8id.equals("")){
         movieName_8idTemp  = movieName_8id;
        }
        String movieBanner_9id=  request.getParameter("movieBanner56");
            java.lang.String movieBanner_9idTemp = null;
        if(!movieBanner_9id.equals("")){
         movieBanner_9idTemp  = movieBanner_9id;
        }
        String releaseDate_10id=  request.getParameter("releaseDate58");
            java.lang.String releaseDate_10idTemp = null;
        if(!releaseDate_10id.equals("")){
         releaseDate_10idTemp  = releaseDate_10id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchMovie51mtemp = sampleServiceProxyid.searchMovie(movieName_8idTemp,movieBanner_9idTemp,releaseDate_10idTemp);
if(searchMovie51mtemp == null){
%>
<%=searchMovie51mtemp %>
<%
}else{
        String tempreturnp52 = null;
        if(searchMovie51mtemp != null){
        java.util.List listreturnp52= java.util.Arrays.asList(searchMovie51mtemp);
        tempreturnp52 = listreturnp52.toString();
        }
        %>
        <%=tempreturnp52%>
        <%
}
break;
case 60:
        gotMethod = true;
        String categoryName_11id=  request.getParameter("categoryName63");
            java.lang.String categoryName_11idTemp = null;
        if(!categoryName_11id.equals("")){
         categoryName_11idTemp  = categoryName_11id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory60mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_11idTemp);
if(listMoviesByCategory60mtemp == null){
%>
<%=listMoviesByCategory60mtemp %>
<%
}else{
        String tempreturnp61 = null;
        if(listMoviesByCategory60mtemp != null){
        java.util.List listreturnp61= java.util.Arrays.asList(listMoviesByCategory60mtemp);
        tempreturnp61 = listreturnp61.toString();
        }
        %>
        <%=tempreturnp61%>
        <%
}
break;
case 65:
        gotMethod = true;
        String membershipId_12id=  request.getParameter("membershipId68");
        int membershipId_12idTemp  = Integer.parseInt(membershipId_12id);
        String movieId_13id=  request.getParameter("movieId70");
        int movieId_13idTemp  = Integer.parseInt(movieId_13id);
        boolean returnMovie65mtemp = sampleServiceProxyid.returnMovie(membershipId_12idTemp,movieId_13idTemp);
        String tempResultreturnp66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(returnMovie65mtemp));
        %>
        <%= tempResultreturnp66 %>
        <%
break;
case 72:
        gotMethod = true;
        String userId_14id=  request.getParameter("userId75");
            java.lang.String userId_14idTemp = null;
        if(!userId_14id.equals("")){
         userId_14idTemp  = userId_14id;
        }
        String password_15id=  request.getParameter("password77");
            java.lang.String password_15idTemp = null;
        if(!password_15id.equals("")){
         password_15idTemp  = password_15id;
        }
        String memType_16id=  request.getParameter("memType79");
            java.lang.String memType_16idTemp = null;
        if(!memType_16id.equals("")){
         memType_16idTemp  = memType_16id;
        }
        String firstName_17id=  request.getParameter("firstName81");
            java.lang.String firstName_17idTemp = null;
        if(!firstName_17id.equals("")){
         firstName_17idTemp  = firstName_17id;
        }
        String lastName_18id=  request.getParameter("lastName83");
            java.lang.String lastName_18idTemp = null;
        if(!lastName_18id.equals("")){
         lastName_18idTemp  = lastName_18id;
        }
        String address_19id=  request.getParameter("address85");
            java.lang.String address_19idTemp = null;
        if(!address_19id.equals("")){
         address_19idTemp  = address_19id;
        }
        String city_20id=  request.getParameter("city87");
            java.lang.String city_20idTemp = null;
        if(!city_20id.equals("")){
         city_20idTemp  = city_20id;
        }
        String state_21id=  request.getParameter("state89");
            java.lang.String state_21idTemp = null;
        if(!state_21id.equals("")){
         state_21idTemp  = state_21id;
        }
        String zipCode_22id=  request.getParameter("zipCode91");
            java.lang.String zipCode_22idTemp = null;
        if(!zipCode_22id.equals("")){
         zipCode_22idTemp  = zipCode_22id;
        }
        String ccNumber_23id=  request.getParameter("ccNumber93");
            java.lang.String ccNumber_23idTemp = null;
        if(!ccNumber_23id.equals("")){
         ccNumber_23idTemp  = ccNumber_23id;
        }
        java.lang.String signUpUser72mtemp = sampleServiceProxyid.signUpUser(userId_14idTemp,password_15idTemp,memType_16idTemp,firstName_17idTemp,lastName_18idTemp,address_19idTemp,city_20idTemp,state_21idTemp,zipCode_22idTemp,ccNumber_23idTemp);
if(signUpUser72mtemp == null){
%>
<%=signUpUser72mtemp %>
<%
}else{
        String tempResultreturnp73 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpUser72mtemp));
        %>
        <%= tempResultreturnp73 %>
        <%
}
break;
case 95:
        gotMethod = true;
        String userId_24id=  request.getParameter("userId98");
            java.lang.String userId_24idTemp = null;
        if(!userId_24id.equals("")){
         userId_24idTemp  = userId_24id;
        }
        String password_25id=  request.getParameter("password100");
            java.lang.String password_25idTemp = null;
        if(!password_25id.equals("")){
         password_25idTemp  = password_25id;
        }
        String firstName_26id=  request.getParameter("firstName102");
            java.lang.String firstName_26idTemp = null;
        if(!firstName_26id.equals("")){
         firstName_26idTemp  = firstName_26id;
        }
        String lastName_27id=  request.getParameter("lastName104");
            java.lang.String lastName_27idTemp = null;
        if(!lastName_27id.equals("")){
         lastName_27idTemp  = lastName_27id;
        }
        java.lang.String signUpAdmin95mtemp = sampleServiceProxyid.signUpAdmin(userId_24idTemp,password_25idTemp,firstName_26idTemp,lastName_27idTemp);
if(signUpAdmin95mtemp == null){
%>
<%=signUpAdmin95mtemp %>
<%
}else{
        String tempResultreturnp96 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin95mtemp));
        %>
        <%= tempResultreturnp96 %>
        <%
}
break;
case 106:
        gotMethod = true;
        String userId_28id=  request.getParameter("userId139");
            java.lang.String userId_28idTemp = null;
        if(!userId_28id.equals("")){
         userId_28idTemp  = userId_28id;
        }
        String password_29id=  request.getParameter("password141");
            java.lang.String password_29idTemp = null;
        if(!password_29id.equals("")){
         password_29idTemp  = password_29id;
        }
        edu.sjsu.videolibrary.model.User signInUser106mtemp = sampleServiceProxyid.signInUser(userId_28idTemp,password_29idTemp);
if(signInUser106mtemp == null){
%>
<%=signInUser106mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">state:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typestate109 = signInUser106mtemp.getState();
        String tempResultstate109 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate109));
        %>
        <%= tempResultstate109 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typezip111 = signInUser106mtemp.getZip();
        String tempResultzip111 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip111));
        %>
        <%= tempResultzip111 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typestartDate113 = signInUser106mtemp.getStartDate();
        String tempResultstartDate113 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate113));
        %>
        <%= tempResultstartDate113 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typelatestPaymentDate115 = signInUser106mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate115 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate115));
        %>
        <%= tempResultlatestPaymentDate115 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typemembershipType117 = signInUser106mtemp.getMembershipType();
        String tempResultmembershipType117 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType117));
        %>
        <%= tempResultmembershipType117 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typecity119 = signInUser106mtemp.getCity();
        String tempResultcity119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity119));
        %>
        <%= tempResultcity119 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(signInUser106mtemp != null){
%>
<%=signInUser106mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typeuserId123 = signInUser106mtemp.getUserId();
        String tempResultuserId123 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId123));
        %>
        <%= tempResultuserId123 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String[] typemovieList125 = signInUser106mtemp.getMovieList();
        String tempmovieList125 = null;
        if(typemovieList125 != null){
        java.util.List listmovieList125= java.util.Arrays.asList(typemovieList125);
        tempmovieList125 = listmovieList125.toString();
        }
        %>
        <%=tempmovieList125%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typeaddress127 = signInUser106mtemp.getAddress();
        String tempResultaddress127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress127));
        %>
        <%= tempResultaddress127 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typepassword129 = signInUser106mtemp.getPassword();
        String tempResultpassword129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword129));
        %>
        <%= tempResultpassword129 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typefirstName131 = signInUser106mtemp.getFirstName();
        String tempResultfirstName131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName131));
        %>
        <%= tempResultfirstName131 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typelastName133 = signInUser106mtemp.getLastName();
        String tempResultlastName133 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName133));
        %>
        <%= tempResultlastName133 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentedMovies:</TD>
<TD>
<%
if(signInUser106mtemp != null){
%>
<%=signInUser106mtemp.getRentedMovies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(signInUser106mtemp != null){
java.lang.String typecreditCardNumber137 = signInUser106mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber137 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber137));
        %>
        <%= tempResultcreditCardNumber137 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 143:
        gotMethod = true;
        String userId_30id=  request.getParameter("userId156");
            java.lang.String userId_30idTemp = null;
        if(!userId_30id.equals("")){
         userId_30idTemp  = userId_30id;
        }
        String password_31id=  request.getParameter("password158");
            java.lang.String password_31idTemp = null;
        if(!password_31id.equals("")){
         password_31idTemp  = password_31id;
        }
        edu.sjsu.videolibrary.model.Admin signInAdmin143mtemp = sampleServiceProxyid.signInAdmin(userId_30idTemp,password_31idTemp);
if(signInAdmin143mtemp == null){
%>
<%=signInAdmin143mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(signInAdmin143mtemp != null){
java.lang.String typepassword146 = signInAdmin143mtemp.getPassword();
        String tempResultpassword146 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword146));
        %>
        <%= tempResultpassword146 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signInAdmin143mtemp != null){
java.lang.String typelastName148 = signInAdmin143mtemp.getLastName();
        String tempResultlastName148 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName148));
        %>
        <%= tempResultlastName148 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signInAdmin143mtemp != null){
java.lang.String typefirstName150 = signInAdmin143mtemp.getFirstName();
        String tempResultfirstName150 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName150));
        %>
        <%= tempResultfirstName150 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(signInAdmin143mtemp != null){
%>
<%=signInAdmin143mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(signInAdmin143mtemp != null){
java.lang.String typeadminId154 = signInAdmin143mtemp.getAdminId();
        String tempResultadminId154 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId154));
        %>
        <%= tempResultadminId154 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 160:
        gotMethod = true;
        String type_32id=  request.getParameter("type163");
            java.lang.String type_32idTemp = null;
        if(!type_32id.equals("")){
         type_32idTemp  = type_32id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers160mtemp = sampleServiceProxyid.viewMembers(type_32idTemp);
if(viewMembers160mtemp == null){
%>
<%=viewMembers160mtemp %>
<%
}else{
        String tempreturnp161 = null;
        if(viewMembers160mtemp != null){
        java.util.List listreturnp161= java.util.Arrays.asList(viewMembers160mtemp);
        tempreturnp161 = listreturnp161.toString();
        }
        %>
        <%=tempreturnp161%>
        <%
}
break;
case 165:
        gotMethod = true;
        String type_33id=  request.getParameter("type168");
            java.lang.String type_33idTemp = null;
        if(!type_33id.equals("")){
         type_33idTemp  = type_33id;
        }
        String offset_34id=  request.getParameter("offset170");
        int offset_34idTemp  = Integer.parseInt(offset_34id);
        String count_35id=  request.getParameter("count172");
        int count_35idTemp  = Integer.parseInt(count_35id);
        edu.sjsu.videolibrary.model.User[] viewMembersByPage165mtemp = sampleServiceProxyid.viewMembersByPage(type_33idTemp,offset_34idTemp,count_35idTemp);
if(viewMembersByPage165mtemp == null){
%>
<%=viewMembersByPage165mtemp %>
<%
}else{
        String tempreturnp166 = null;
        if(viewMembersByPage165mtemp != null){
        java.util.List listreturnp166= java.util.Arrays.asList(viewMembersByPage165mtemp);
        tempreturnp166 = listreturnp166.toString();
        }
        %>
        <%=tempreturnp166%>
        <%
}
break;
case 174:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Admin[] viewAdmins174mtemp = sampleServiceProxyid.viewAdmins();
if(viewAdmins174mtemp == null){
%>
<%=viewAdmins174mtemp %>
<%
}else{
        String tempreturnp175 = null;
        if(viewAdmins174mtemp != null){
        java.util.List listreturnp175= java.util.Arrays.asList(viewAdmins174mtemp);
        tempreturnp175 = listreturnp175.toString();
        }
        %>
        <%=tempreturnp175%>
        <%
}
break;
case 177:
        gotMethod = true;
        String userId_36id=  request.getParameter("userId180");
            java.lang.String userId_36idTemp = null;
        if(!userId_36id.equals("")){
         userId_36idTemp  = userId_36id;
        }
        java.lang.String deleteUserAccount177mtemp = sampleServiceProxyid.deleteUserAccount(userId_36idTemp);
if(deleteUserAccount177mtemp == null){
%>
<%=deleteUserAccount177mtemp %>
<%
}else{
        String tempResultreturnp178 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount177mtemp));
        %>
        <%= tempResultreturnp178 %>
        <%
}
break;
case 182:
        gotMethod = true;
        String userId_37id=  request.getParameter("userId185");
            java.lang.String userId_37idTemp = null;
        if(!userId_37id.equals("")){
         userId_37idTemp  = userId_37id;
        }
        java.lang.String deleteAdminAccount182mtemp = sampleServiceProxyid.deleteAdminAccount(userId_37idTemp);
if(deleteAdminAccount182mtemp == null){
%>
<%=deleteAdminAccount182mtemp %>
<%
}else{
        String tempResultreturnp183 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount182mtemp));
        %>
        <%= tempResultreturnp183 %>
        <%
}
break;
case 187:
        gotMethod = true;
        String movieName_38id=  request.getParameter("movieName190");
            java.lang.String movieName_38idTemp = null;
        if(!movieName_38id.equals("")){
         movieName_38idTemp  = movieName_38id;
        }
        String movieBanner_39id=  request.getParameter("movieBanner192");
            java.lang.String movieBanner_39idTemp = null;
        if(!movieBanner_39id.equals("")){
         movieBanner_39idTemp  = movieBanner_39id;
        }
        String releaseDate_40id=  request.getParameter("releaseDate194");
            java.lang.String releaseDate_40idTemp = null;
        if(!releaseDate_40id.equals("")){
         releaseDate_40idTemp  = releaseDate_40id;
        }
        String availableCopies_41id=  request.getParameter("availableCopies196");
        int availableCopies_41idTemp  = Integer.parseInt(availableCopies_41id);
        String categoryId_42id=  request.getParameter("categoryId198");
        int categoryId_42idTemp  = Integer.parseInt(categoryId_42id);
        java.lang.String createNewMovie187mtemp = sampleServiceProxyid.createNewMovie(movieName_38idTemp,movieBanner_39idTemp,releaseDate_40idTemp,availableCopies_41idTemp,categoryId_42idTemp);
if(createNewMovie187mtemp == null){
%>
<%=createNewMovie187mtemp %>
<%
}else{
        String tempResultreturnp188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie187mtemp));
        %>
        <%= tempResultreturnp188 %>
        <%
}
break;
case 200:
        gotMethod = true;
        String movieId_43id=  request.getParameter("movieId203");
            java.lang.String movieId_43idTemp = null;
        if(!movieId_43id.equals("")){
         movieId_43idTemp  = movieId_43id;
        }
        java.lang.String deleteMovie200mtemp = sampleServiceProxyid.deleteMovie(movieId_43idTemp);
if(deleteMovie200mtemp == null){
%>
<%=deleteMovie200mtemp %>
<%
}else{
        String tempResultreturnp201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie200mtemp));
        %>
        <%= tempResultreturnp201 %>
        <%
}
break;
case 205:
        gotMethod = true;
        String membershipId_44id=  request.getParameter("membershipId238");
        int membershipId_44idTemp  = Integer.parseInt(membershipId_44id);
        edu.sjsu.videolibrary.model.User displayUserInformation205mtemp = sampleServiceProxyid.displayUserInformation(membershipId_44idTemp);
if(displayUserInformation205mtemp == null){
%>
<%=displayUserInformation205mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">state:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typestate208 = displayUserInformation205mtemp.getState();
        String tempResultstate208 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate208));
        %>
        <%= tempResultstate208 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typezip210 = displayUserInformation205mtemp.getZip();
        String tempResultzip210 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip210));
        %>
        <%= tempResultzip210 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typestartDate212 = displayUserInformation205mtemp.getStartDate();
        String tempResultstartDate212 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate212));
        %>
        <%= tempResultstartDate212 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typelatestPaymentDate214 = displayUserInformation205mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate214 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate214));
        %>
        <%= tempResultlatestPaymentDate214 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typemembershipType216 = displayUserInformation205mtemp.getMembershipType();
        String tempResultmembershipType216 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType216));
        %>
        <%= tempResultmembershipType216 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typecity218 = displayUserInformation205mtemp.getCity();
        String tempResultcity218 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity218));
        %>
        <%= tempResultcity218 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
%>
<%=displayUserInformation205mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typeuserId222 = displayUserInformation205mtemp.getUserId();
        String tempResultuserId222 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId222));
        %>
        <%= tempResultuserId222 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String[] typemovieList224 = displayUserInformation205mtemp.getMovieList();
        String tempmovieList224 = null;
        if(typemovieList224 != null){
        java.util.List listmovieList224= java.util.Arrays.asList(typemovieList224);
        tempmovieList224 = listmovieList224.toString();
        }
        %>
        <%=tempmovieList224%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typeaddress226 = displayUserInformation205mtemp.getAddress();
        String tempResultaddress226 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress226));
        %>
        <%= tempResultaddress226 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typepassword228 = displayUserInformation205mtemp.getPassword();
        String tempResultpassword228 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword228));
        %>
        <%= tempResultpassword228 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typefirstName230 = displayUserInformation205mtemp.getFirstName();
        String tempResultfirstName230 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName230));
        %>
        <%= tempResultfirstName230 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typelastName232 = displayUserInformation205mtemp.getLastName();
        String tempResultlastName232 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName232));
        %>
        <%= tempResultlastName232 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentedMovies:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
%>
<%=displayUserInformation205mtemp.getRentedMovies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation205mtemp != null){
java.lang.String typecreditCardNumber236 = displayUserInformation205mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber236 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber236));
        %>
        <%= tempResultcreditCardNumber236 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 240:
        gotMethod = true;
        String movieId_45id=  request.getParameter("movieId263");
        int movieId_45idTemp  = Integer.parseInt(movieId_45id);
        edu.sjsu.videolibrary.model.Movie displayMovieInformation240mtemp = sampleServiceProxyid.displayMovieInformation(movieId_45idTemp);
if(displayMovieInformation240mtemp == null){
%>
<%=displayMovieInformation240mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieBanner:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
java.lang.String typemovieBanner243 = displayMovieInformation240mtemp.getMovieBanner();
        String tempResultmovieBanner243 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner243));
        %>
        <%= tempResultmovieBanner243 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
java.lang.String typereleaseDate245 = displayMovieInformation240mtemp.getReleaseDate();
        String tempResultreleaseDate245 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate245));
        %>
        <%= tempResultreleaseDate245 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
java.lang.String typemovieName247 = displayMovieInformation240mtemp.getMovieName();
        String tempResultmovieName247 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName247));
        %>
        <%= tempResultmovieName247 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
%>
<%=displayMovieInformation240mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
%>
<%=displayMovieInformation240mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryName:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
java.lang.String typecategoryName253 = displayMovieInformation240mtemp.getCategoryName();
        String tempResultcategoryName253 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategoryName253));
        %>
        <%= tempResultcategoryName253 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
%>
<%=displayMovieInformation240mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
java.lang.String typecatagory257 = displayMovieInformation240mtemp.getCatagory();
        String tempResultcatagory257 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory257));
        %>
        <%= tempResultcatagory257 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
%>
<%=displayMovieInformation240mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation240mtemp != null){
java.lang.String[] typebuyerList261 = displayMovieInformation240mtemp.getBuyerList();
        String tempbuyerList261 = null;
        if(typebuyerList261 != null){
        java.util.List listbuyerList261= java.util.Arrays.asList(typebuyerList261);
        tempbuyerList261 = listbuyerList261.toString();
        }
        %>
        <%=tempbuyerList261%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 265:
        gotMethod = true;
        String membershipId_46id=  request.getParameter("membershipId268");
        int membershipId_46idTemp  = Integer.parseInt(membershipId_46id);
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions265mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_46idTemp);
if(viewAccountTransactions265mtemp == null){
%>
<%=viewAccountTransactions265mtemp %>
<%
}else{
        String tempreturnp266 = null;
        if(viewAccountTransactions265mtemp != null){
        java.util.List listreturnp266= java.util.Arrays.asList(viewAccountTransactions265mtemp);
        tempreturnp266 = listreturnp266.toString();
        }
        %>
        <%=tempreturnp266%>
        <%
}
break;
case 270:
        gotMethod = true;
        String membershipId_47id=  request.getParameter("membershipId273");
        int membershipId_47idTemp  = Integer.parseInt(membershipId_47id);
        edu.sjsu.videolibrary.model.Transaction[] moviesToReturn270mtemp = sampleServiceProxyid.moviesToReturn(membershipId_47idTemp);
if(moviesToReturn270mtemp == null){
%>
<%=moviesToReturn270mtemp %>
<%
}else{
        String tempreturnp271 = null;
        if(moviesToReturn270mtemp != null){
        java.util.List listreturnp271= java.util.Arrays.asList(moviesToReturn270mtemp);
        tempreturnp271 = listreturnp271.toString();
        }
        %>
        <%=tempreturnp271%>
        <%
}
break;
case 275:
        gotMethod = true;
        String membershipId_48id=  request.getParameter("membershipId278");
        int membershipId_48idTemp  = Integer.parseInt(membershipId_48id);
        java.lang.String makeMonthlyPayment275mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_48idTemp);
if(makeMonthlyPayment275mtemp == null){
%>
<%=makeMonthlyPayment275mtemp %>
<%
}else{
        String tempResultreturnp276 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment275mtemp));
        %>
        <%= tempResultreturnp276 %>
        <%
}
break;
case 280:
        gotMethod = true;
        String membershipId_49id=  request.getParameter("membershipId283");
        int membershipId_49idTemp  = Integer.parseInt(membershipId_49id);
        String userId_50id=  request.getParameter("userId285");
            java.lang.String userId_50idTemp = null;
        if(!userId_50id.equals("")){
         userId_50idTemp  = userId_50id;
        }
        String firstName_51id=  request.getParameter("firstName287");
            java.lang.String firstName_51idTemp = null;
        if(!firstName_51id.equals("")){
         firstName_51idTemp  = firstName_51id;
        }
        String lastName_52id=  request.getParameter("lastName289");
            java.lang.String lastName_52idTemp = null;
        if(!lastName_52id.equals("")){
         lastName_52idTemp  = lastName_52id;
        }
        String address_53id=  request.getParameter("address291");
            java.lang.String address_53idTemp = null;
        if(!address_53id.equals("")){
         address_53idTemp  = address_53id;
        }
        String city_54id=  request.getParameter("city293");
            java.lang.String city_54idTemp = null;
        if(!city_54id.equals("")){
         city_54idTemp  = city_54id;
        }
        String state_55id=  request.getParameter("state295");
            java.lang.String state_55idTemp = null;
        if(!state_55id.equals("")){
         state_55idTemp  = state_55id;
        }
        String zipCode_56id=  request.getParameter("zipCode297");
            java.lang.String zipCode_56idTemp = null;
        if(!zipCode_56id.equals("")){
         zipCode_56idTemp  = zipCode_56id;
        }
        String membershipType_57id=  request.getParameter("membershipType299");
            java.lang.String membershipType_57idTemp = null;
        if(!membershipType_57id.equals("")){
         membershipType_57idTemp  = membershipType_57id;
        }
        String creditCardNumber_58id=  request.getParameter("creditCardNumber301");
            java.lang.String creditCardNumber_58idTemp = null;
        if(!creditCardNumber_58id.equals("")){
         creditCardNumber_58idTemp  = creditCardNumber_58id;
        }
        java.lang.String updateUserInfo280mtemp = sampleServiceProxyid.updateUserInfo(membershipId_49idTemp,userId_50idTemp,firstName_51idTemp,lastName_52idTemp,address_53idTemp,city_54idTemp,state_55idTemp,zipCode_56idTemp,membershipType_57idTemp,creditCardNumber_58idTemp);
if(updateUserInfo280mtemp == null){
%>
<%=updateUserInfo280mtemp %>
<%
}else{
        String tempResultreturnp281 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo280mtemp));
        %>
        <%= tempResultreturnp281 %>
        <%
}
break;
case 303:
        gotMethod = true;
        String membershipId_59id=  request.getParameter("membershipId306");
            java.lang.String membershipId_59idTemp = null;
        if(!membershipId_59id.equals("")){
         membershipId_59idTemp  = membershipId_59id;
        }
        String userId_60id=  request.getParameter("userId308");
            java.lang.String userId_60idTemp = null;
        if(!userId_60id.equals("")){
         userId_60idTemp  = userId_60id;
        }
        String membershipType_61id=  request.getParameter("membershipType310");
            java.lang.String membershipType_61idTemp = null;
        if(!membershipType_61id.equals("")){
         membershipType_61idTemp  = membershipType_61id;
        }
        String startDate_62id=  request.getParameter("startDate312");
            java.lang.String startDate_62idTemp = null;
        if(!startDate_62id.equals("")){
         startDate_62idTemp  = startDate_62id;
        }
        String firstName_63id=  request.getParameter("firstName314");
            java.lang.String firstName_63idTemp = null;
        if(!firstName_63id.equals("")){
         firstName_63idTemp  = firstName_63id;
        }
        String lastName_64id=  request.getParameter("lastName316");
            java.lang.String lastName_64idTemp = null;
        if(!lastName_64id.equals("")){
         lastName_64idTemp  = lastName_64id;
        }
        String address_65id=  request.getParameter("address318");
            java.lang.String address_65idTemp = null;
        if(!address_65id.equals("")){
         address_65idTemp  = address_65id;
        }
        String city_66id=  request.getParameter("city320");
            java.lang.String city_66idTemp = null;
        if(!city_66id.equals("")){
         city_66idTemp  = city_66id;
        }
        String state_67id=  request.getParameter("state322");
            java.lang.String state_67idTemp = null;
        if(!state_67id.equals("")){
         state_67idTemp  = state_67id;
        }
        String zipCode_68id=  request.getParameter("zipCode324");
            java.lang.String zipCode_68idTemp = null;
        if(!zipCode_68id.equals("")){
         zipCode_68idTemp  = zipCode_68id;
        }
        edu.sjsu.videolibrary.model.User[] searchUser303mtemp = sampleServiceProxyid.searchUser(membershipId_59idTemp,userId_60idTemp,membershipType_61idTemp,startDate_62idTemp,firstName_63idTemp,lastName_64idTemp,address_65idTemp,city_66idTemp,state_67idTemp,zipCode_68idTemp);
if(searchUser303mtemp == null){
%>
<%=searchUser303mtemp %>
<%
}else{
        String tempreturnp304 = null;
        if(searchUser303mtemp != null){
        java.util.List listreturnp304= java.util.Arrays.asList(searchUser303mtemp);
        tempreturnp304 = listreturnp304.toString();
        }
        %>
        <%=tempreturnp304%>
        <%
}
break;
case 326:
        gotMethod = true;
        String membershipId_69id=  request.getParameter("membershipId329");
        int membershipId_69idTemp  = Integer.parseInt(membershipId_69id);
        String oldPassword_70id=  request.getParameter("oldPassword331");
            java.lang.String oldPassword_70idTemp = null;
        if(!oldPassword_70id.equals("")){
         oldPassword_70idTemp  = oldPassword_70id;
        }
        String newPassword_71id=  request.getParameter("newPassword333");
            java.lang.String newPassword_71idTemp = null;
        if(!newPassword_71id.equals("")){
         newPassword_71idTemp  = newPassword_71id;
        }
        java.lang.String updatePassword326mtemp = sampleServiceProxyid.updatePassword(membershipId_69idTemp,oldPassword_70idTemp,newPassword_71idTemp);
if(updatePassword326mtemp == null){
%>
<%=updatePassword326mtemp %>
<%
}else{
        String tempResultreturnp327 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword326mtemp));
        %>
        <%= tempResultreturnp327 %>
        <%
}
break;
case 335:
        gotMethod = true;
        String movieId_72id=  request.getParameter("movieId338");
        int movieId_72idTemp  = Integer.parseInt(movieId_72id);
        String movieName_73id=  request.getParameter("movieName340");
            java.lang.String movieName_73idTemp = null;
        if(!movieName_73id.equals("")){
         movieName_73idTemp  = movieName_73id;
        }
        String movieBanner_74id=  request.getParameter("movieBanner342");
            java.lang.String movieBanner_74idTemp = null;
        if(!movieBanner_74id.equals("")){
         movieBanner_74idTemp  = movieBanner_74id;
        }
        String releaseDate_75id=  request.getParameter("releaseDate344");
            java.lang.String releaseDate_75idTemp = null;
        if(!releaseDate_75id.equals("")){
         releaseDate_75idTemp  = releaseDate_75id;
        }
        String availableCopies_76id=  request.getParameter("availableCopies346");
        int availableCopies_76idTemp  = Integer.parseInt(availableCopies_76id);
        String categoryId_77id=  request.getParameter("categoryId348");
        int categoryId_77idTemp  = Integer.parseInt(categoryId_77id);
        java.lang.String updateMovieInfo335mtemp = sampleServiceProxyid.updateMovieInfo(movieId_72idTemp,movieName_73idTemp,movieBanner_74idTemp,releaseDate_75idTemp,availableCopies_76idTemp,categoryId_77idTemp);
if(updateMovieInfo335mtemp == null){
%>
<%=updateMovieInfo335mtemp %>
<%
}else{
        String tempResultreturnp336 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo335mtemp));
        %>
        <%= tempResultreturnp336 %>
        <%
}
break;
case 350:
        gotMethod = true;
        String membershipId_78id=  request.getParameter("membershipId353");
        int membershipId_78idTemp  = Integer.parseInt(membershipId_78id);
        String month_79id=  request.getParameter("month355");
        int month_79idTemp  = Integer.parseInt(month_79id);
        String year_80id=  request.getParameter("year357");
        int year_80idTemp  = Integer.parseInt(year_80id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement350mtemp = sampleServiceProxyid.viewStatement(membershipId_78idTemp,month_79idTemp,year_80idTemp);
if(viewStatement350mtemp == null){
%>
<%=viewStatement350mtemp %>
<%
}else{
        String tempreturnp351 = null;
        if(viewStatement350mtemp != null){
        java.util.List listreturnp351= java.util.Arrays.asList(viewStatement350mtemp);
        tempreturnp351 = listreturnp351.toString();
        }
        %>
        <%=tempreturnp351%>
        <%
}
break;
case 359:
        gotMethod = true;
        String membershipId_81id=  request.getParameter("membershipId368");
        int membershipId_81idTemp  = Integer.parseInt(membershipId_81id);
        String month_82id=  request.getParameter("month370");
        int month_82idTemp  = Integer.parseInt(month_82id);
        String year_83id=  request.getParameter("year372");
        int year_83idTemp  = Integer.parseInt(year_83id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember359mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_81idTemp,month_82idTemp,year_83idTemp);
if(generateMonthlyBillForPremiumMember359mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember359mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentStatus:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember359mtemp != null){
java.lang.String typepaymentStatus362 = generateMonthlyBillForPremiumMember359mtemp.getPaymentStatus();
        String tempResultpaymentStatus362 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus362));
        %>
        <%= tempResultpaymentStatus362 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember359mtemp != null){
java.lang.String typepaymentDate364 = generateMonthlyBillForPremiumMember359mtemp.getPaymentDate();
        String tempResultpaymentDate364 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate364));
        %>
        <%= tempResultpaymentDate364 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember359mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember359mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 374:
        gotMethod = true;
        double getRentAmountforMovie374mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp375 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie374mtemp));
        %>
        <%= tempResultreturnp375 %>
        <%
break;
case 377:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember377mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp378 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember377mtemp));
        %>
        <%= tempResultreturnp378 %>
        <%
break;
case 380:
        gotMethod = true;
        java.lang.String[] listCategories380mtemp = sampleServiceProxyid.listCategories();
if(listCategories380mtemp == null){
%>
<%=listCategories380mtemp %>
<%
}else{
        String tempreturnp381 = null;
        if(listCategories380mtemp != null){
        java.util.List listreturnp381= java.util.Arrays.asList(listCategories380mtemp);
        tempreturnp381 = listreturnp381.toString();
        }
        %>
        <%=tempreturnp381%>
        <%
}
break;
case 383:
        gotMethod = true;
        String categoryName_84id=  request.getParameter("categoryName386");
            java.lang.String categoryName_84idTemp = null;
        if(!categoryName_84id.equals("")){
         categoryName_84idTemp  = categoryName_84id;
        }
        String start_85id=  request.getParameter("start388");
        int start_85idTemp  = Integer.parseInt(start_85id);
        String stop_86id=  request.getParameter("stop390");
        int stop_86idTemp  = Integer.parseInt(stop_86id);
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategoryByPage383mtemp = sampleServiceProxyid.listMoviesByCategoryByPage(categoryName_84idTemp,start_85idTemp,stop_86idTemp);
if(listMoviesByCategoryByPage383mtemp == null){
%>
<%=listMoviesByCategoryByPage383mtemp %>
<%
}else{
        String tempreturnp384 = null;
        if(listMoviesByCategoryByPage383mtemp != null){
        java.util.List listreturnp384= java.util.Arrays.asList(listMoviesByCategoryByPage383mtemp);
        tempreturnp384 = listreturnp384.toString();
        }
        %>
        <%=tempreturnp384%>
        <%
}
break;
case 392:
        gotMethod = true;
        String start_87id=  request.getParameter("start395");
        int start_87idTemp  = Integer.parseInt(start_87id);
        String stop_88id=  request.getParameter("stop397");
        int stop_88idTemp  = Integer.parseInt(stop_88id);
        edu.sjsu.videolibrary.model.Movie[] listAllMoviesByPage392mtemp = sampleServiceProxyid.listAllMoviesByPage(start_87idTemp,stop_88idTemp);
if(listAllMoviesByPage392mtemp == null){
%>
<%=listAllMoviesByPage392mtemp %>
<%
}else{
        String tempreturnp393 = null;
        if(listAllMoviesByPage392mtemp != null){
        java.util.List listreturnp393= java.util.Arrays.asList(listAllMoviesByPage392mtemp);
        tempreturnp393 = listreturnp393.toString();
        }
        %>
        <%=tempreturnp393%>
        <%
}
break;
case 399:
        gotMethod = true;
        String membershipId_89id=  request.getParameter("membershipId402");
            java.lang.String membershipId_89idTemp = null;
        if(!membershipId_89id.equals("")){
         membershipId_89idTemp  = membershipId_89id;
        }
        String userId_90id=  request.getParameter("userId404");
            java.lang.String userId_90idTemp = null;
        if(!userId_90id.equals("")){
         userId_90idTemp  = userId_90id;
        }
        String membershipType_91id=  request.getParameter("membershipType406");
            java.lang.String membershipType_91idTemp = null;
        if(!membershipType_91id.equals("")){
         membershipType_91idTemp  = membershipType_91id;
        }
        String startDate_92id=  request.getParameter("startDate408");
            java.lang.String startDate_92idTemp = null;
        if(!startDate_92id.equals("")){
         startDate_92idTemp  = startDate_92id;
        }
        String firstName_93id=  request.getParameter("firstName410");
            java.lang.String firstName_93idTemp = null;
        if(!firstName_93id.equals("")){
         firstName_93idTemp  = firstName_93id;
        }
        String lastName_94id=  request.getParameter("lastName412");
            java.lang.String lastName_94idTemp = null;
        if(!lastName_94id.equals("")){
         lastName_94idTemp  = lastName_94id;
        }
        String address_95id=  request.getParameter("address414");
            java.lang.String address_95idTemp = null;
        if(!address_95id.equals("")){
         address_95idTemp  = address_95id;
        }
        String city_96id=  request.getParameter("city416");
            java.lang.String city_96idTemp = null;
        if(!city_96id.equals("")){
         city_96idTemp  = city_96id;
        }
        String state_97id=  request.getParameter("state418");
            java.lang.String state_97idTemp = null;
        if(!state_97id.equals("")){
         state_97idTemp  = state_97id;
        }
        String zipCode_98id=  request.getParameter("zipCode420");
            java.lang.String zipCode_98idTemp = null;
        if(!zipCode_98id.equals("")){
         zipCode_98idTemp  = zipCode_98id;
        }
        String offset_99id=  request.getParameter("offset422");
        int offset_99idTemp  = Integer.parseInt(offset_99id);
        String count_100id=  request.getParameter("count424");
        int count_100idTemp  = Integer.parseInt(count_100id);
        edu.sjsu.videolibrary.model.User[] searchUserByPage399mtemp = sampleServiceProxyid.searchUserByPage(membershipId_89idTemp,userId_90idTemp,membershipType_91idTemp,startDate_92idTemp,firstName_93idTemp,lastName_94idTemp,address_95idTemp,city_96idTemp,state_97idTemp,zipCode_98idTemp,offset_99idTemp,count_100idTemp);
if(searchUserByPage399mtemp == null){
%>
<%=searchUserByPage399mtemp %>
<%
}else{
        String tempreturnp400 = null;
        if(searchUserByPage399mtemp != null){
        java.util.List listreturnp400= java.util.Arrays.asList(searchUserByPage399mtemp);
        tempreturnp400 = listreturnp400.toString();
        }
        %>
        <%=tempreturnp400%>
        <%
}
break;
case 426:
        gotMethod = true;
        String adminId_101id=  request.getParameter("adminId439");
            java.lang.String adminId_101idTemp = null;
        if(!adminId_101id.equals("")){
         adminId_101idTemp  = adminId_101id;
        }
        edu.sjsu.videolibrary.model.Admin displayAdminInformation426mtemp = sampleServiceProxyid.displayAdminInformation(adminId_101idTemp);
if(displayAdminInformation426mtemp == null){
%>
<%=displayAdminInformation426mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayAdminInformation426mtemp != null){
java.lang.String typepassword429 = displayAdminInformation426mtemp.getPassword();
        String tempResultpassword429 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword429));
        %>
        <%= tempResultpassword429 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayAdminInformation426mtemp != null){
java.lang.String typelastName431 = displayAdminInformation426mtemp.getLastName();
        String tempResultlastName431 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName431));
        %>
        <%= tempResultlastName431 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayAdminInformation426mtemp != null){
java.lang.String typefirstName433 = displayAdminInformation426mtemp.getFirstName();
        String tempResultfirstName433 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName433));
        %>
        <%= tempResultfirstName433 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(displayAdminInformation426mtemp != null){
%>
<%=displayAdminInformation426mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(displayAdminInformation426mtemp != null){
java.lang.String typeadminId437 = displayAdminInformation426mtemp.getAdminId();
        String tempResultadminId437 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId437));
        %>
        <%= tempResultadminId437 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 441:
        gotMethod = true;
        String adminId_102id=  request.getParameter("adminId444");
            java.lang.String adminId_102idTemp = null;
        if(!adminId_102id.equals("")){
         adminId_102idTemp  = adminId_102id;
        }
        String firstName_103id=  request.getParameter("firstName446");
            java.lang.String firstName_103idTemp = null;
        if(!firstName_103id.equals("")){
         firstName_103idTemp  = firstName_103id;
        }
        String lastName_104id=  request.getParameter("lastName448");
            java.lang.String lastName_104idTemp = null;
        if(!lastName_104id.equals("")){
         lastName_104idTemp  = lastName_104id;
        }
        String password_105id=  request.getParameter("password450");
            java.lang.String password_105idTemp = null;
        if(!password_105id.equals("")){
         password_105idTemp  = password_105id;
        }
        java.lang.String updateAdminInfo441mtemp = sampleServiceProxyid.updateAdminInfo(adminId_102idTemp,firstName_103idTemp,lastName_104idTemp,password_105idTemp);
if(updateAdminInfo441mtemp == null){
%>
<%=updateAdminInfo441mtemp %>
<%
}else{
        String tempResultreturnp442 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateAdminInfo441mtemp));
        %>
        <%= tempResultreturnp442 %>
        <%
}
break;
case 452:
        gotMethod = true;
        String membershipId_106id=  request.getParameter("membershipId455");
        int membershipId_106idTemp  = Integer.parseInt(membershipId_106id);
        String newPassword_107id=  request.getParameter("newPassword457");
            java.lang.String newPassword_107idTemp = null;
        if(!newPassword_107id.equals("")){
         newPassword_107idTemp  = newPassword_107id;
        }
        java.lang.String updateUserPassword452mtemp = sampleServiceProxyid.updateUserPassword(membershipId_106idTemp,newPassword_107idTemp);
if(updateUserPassword452mtemp == null){
%>
<%=updateUserPassword452mtemp %>
<%
}else{
        String tempResultreturnp453 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserPassword452mtemp));
        %>
        <%= tempResultreturnp453 %>
        <%
}
break;
case 459:
        gotMethod = true;
        String movieName_108id=  request.getParameter("movieName462");
            java.lang.String movieName_108idTemp = null;
        if(!movieName_108id.equals("")){
         movieName_108idTemp  = movieName_108id;
        }
        String movieBanner_109id=  request.getParameter("movieBanner464");
            java.lang.String movieBanner_109idTemp = null;
        if(!movieBanner_109id.equals("")){
         movieBanner_109idTemp  = movieBanner_109id;
        }
        String releaseDate_110id=  request.getParameter("releaseDate466");
            java.lang.String releaseDate_110idTemp = null;
        if(!releaseDate_110id.equals("")){
         releaseDate_110idTemp  = releaseDate_110id;
        }
        String start_111id=  request.getParameter("start468");
        int start_111idTemp  = Integer.parseInt(start_111id);
        String stop_112id=  request.getParameter("stop470");
        int stop_112idTemp  = Integer.parseInt(stop_112id);
        edu.sjsu.videolibrary.model.Movie[] searchMovieByPage459mtemp = sampleServiceProxyid.searchMovieByPage(movieName_108idTemp,movieBanner_109idTemp,releaseDate_110idTemp,start_111idTemp,stop_112idTemp);
if(searchMovieByPage459mtemp == null){
%>
<%=searchMovieByPage459mtemp %>
<%
}else{
        String tempreturnp460 = null;
        if(searchMovieByPage459mtemp != null){
        java.util.List listreturnp460= java.util.Arrays.asList(searchMovieByPage459mtemp);
        tempreturnp460 = listreturnp460.toString();
        }
        %>
        <%=tempreturnp460%>
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