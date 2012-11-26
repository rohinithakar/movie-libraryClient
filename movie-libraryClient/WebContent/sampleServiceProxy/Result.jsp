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
        sampleServiceProxyid.returnMovie();
break;
case 51:
        gotMethod = true;
        String userId_8id=  request.getParameter("userId82");
            java.lang.String userId_8idTemp = null;
        if(!userId_8id.equals("")){
         userId_8idTemp  = userId_8id;
        }
        String password_9id=  request.getParameter("password84");
            java.lang.String password_9idTemp = null;
        if(!password_9id.equals("")){
         password_9idTemp  = password_9id;
        }
        String memType_10id=  request.getParameter("memType86");
            java.lang.String memType_10idTemp = null;
        if(!memType_10id.equals("")){
         memType_10idTemp  = memType_10id;
        }
        String firstName_11id=  request.getParameter("firstName88");
            java.lang.String firstName_11idTemp = null;
        if(!firstName_11id.equals("")){
         firstName_11idTemp  = firstName_11id;
        }
        String lastName_12id=  request.getParameter("lastName90");
            java.lang.String lastName_12idTemp = null;
        if(!lastName_12id.equals("")){
         lastName_12idTemp  = lastName_12id;
        }
        String address_13id=  request.getParameter("address92");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String city_14id=  request.getParameter("city94");
            java.lang.String city_14idTemp = null;
        if(!city_14id.equals("")){
         city_14idTemp  = city_14id;
        }
        String state_15id=  request.getParameter("state96");
            java.lang.String state_15idTemp = null;
        if(!state_15id.equals("")){
         state_15idTemp  = state_15id;
        }
        String zipCode_16id=  request.getParameter("zipCode98");
            java.lang.String zipCode_16idTemp = null;
        if(!zipCode_16id.equals("")){
         zipCode_16idTemp  = zipCode_16id;
        }
        String ccNumber_17id=  request.getParameter("ccNumber100");
            java.lang.String ccNumber_17idTemp = null;
        if(!ccNumber_17id.equals("")){
         ccNumber_17idTemp  = ccNumber_17id;
        }
        edu.sjsu.videolibrary.model.User signUpUser51mtemp = sampleServiceProxyid.signUpUser(userId_8idTemp,password_9idTemp,memType_10idTemp,firstName_11idTemp,lastName_12idTemp,address_13idTemp,city_14idTemp,state_15idTemp,zipCode_16idTemp,ccNumber_17idTemp);
if(signUpUser51mtemp == null){
%>
<%=signUpUser51mtemp %>
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
if(signUpUser51mtemp != null){
java.lang.String typestate54 = signUpUser51mtemp.getState();
        String tempResultstate54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate54));
        %>
        <%= tempResultstate54 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typezip56 = signUpUser51mtemp.getZip();
        String tempResultzip56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip56));
        %>
        <%= tempResultzip56 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typestartDate58 = signUpUser51mtemp.getStartDate();
        String tempResultstartDate58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate58));
        %>
        <%= tempResultstartDate58 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typelatestPaymentDate60 = signUpUser51mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate60));
        %>
        <%= tempResultlatestPaymentDate60 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typemembershipType62 = signUpUser51mtemp.getMembershipType();
        String tempResultmembershipType62 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType62));
        %>
        <%= tempResultmembershipType62 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typecity64 = signUpUser51mtemp.getCity();
        String tempResultcity64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity64));
        %>
        <%= tempResultcity64 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
%>
<%=signUpUser51mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typeuserId68 = signUpUser51mtemp.getUserId();
        String tempResultuserId68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId68));
        %>
        <%= tempResultuserId68 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String[] typemovieList70 = signUpUser51mtemp.getMovieList();
        String tempmovieList70 = null;
        if(typemovieList70 != null){
        java.util.List listmovieList70= java.util.Arrays.asList(typemovieList70);
        tempmovieList70 = listmovieList70.toString();
        }
        %>
        <%=tempmovieList70%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typeaddress72 = signUpUser51mtemp.getAddress();
        String tempResultaddress72 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress72));
        %>
        <%= tempResultaddress72 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typepassword74 = signUpUser51mtemp.getPassword();
        String tempResultpassword74 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword74));
        %>
        <%= tempResultpassword74 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typefirstName76 = signUpUser51mtemp.getFirstName();
        String tempResultfirstName76 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName76));
        %>
        <%= tempResultfirstName76 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typelastName78 = signUpUser51mtemp.getLastName();
        String tempResultlastName78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName78));
        %>
        <%= tempResultlastName78 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(signUpUser51mtemp != null){
java.lang.String typecreditCardNumber80 = signUpUser51mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber80 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber80));
        %>
        <%= tempResultcreditCardNumber80 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 102:
        gotMethod = true;
        String userId_18id=  request.getParameter("userId105");
            java.lang.String userId_18idTemp = null;
        if(!userId_18id.equals("")){
         userId_18idTemp  = userId_18id;
        }
        String password_19id=  request.getParameter("password107");
            java.lang.String password_19idTemp = null;
        if(!password_19id.equals("")){
         password_19idTemp  = password_19id;
        }
        String firstName_20id=  request.getParameter("firstName109");
            java.lang.String firstName_20idTemp = null;
        if(!firstName_20id.equals("")){
         firstName_20idTemp  = firstName_20id;
        }
        String lastName_21id=  request.getParameter("lastName111");
            java.lang.String lastName_21idTemp = null;
        if(!lastName_21id.equals("")){
         lastName_21idTemp  = lastName_21id;
        }
        java.lang.String signUpAdmin102mtemp = sampleServiceProxyid.signUpAdmin(userId_18idTemp,password_19idTemp,firstName_20idTemp,lastName_21idTemp);
if(signUpAdmin102mtemp == null){
%>
<%=signUpAdmin102mtemp %>
<%
}else{
        String tempResultreturnp103 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin102mtemp));
        %>
        <%= tempResultreturnp103 %>
        <%
}
break;
case 113:
        gotMethod = true;
        String userId_22id=  request.getParameter("userId116");
            java.lang.String userId_22idTemp = null;
        if(!userId_22id.equals("")){
         userId_22idTemp  = userId_22id;
        }
        String password_23id=  request.getParameter("password118");
            java.lang.String password_23idTemp = null;
        if(!password_23id.equals("")){
         password_23idTemp  = password_23id;
        }
        java.lang.String signInUser113mtemp = sampleServiceProxyid.signInUser(userId_22idTemp,password_23idTemp);
if(signInUser113mtemp == null){
%>
<%=signInUser113mtemp %>
<%
}else{
        String tempResultreturnp114 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInUser113mtemp));
        %>
        <%= tempResultreturnp114 %>
        <%
}
break;
case 120:
        gotMethod = true;
        String userId_24id=  request.getParameter("userId123");
            java.lang.String userId_24idTemp = null;
        if(!userId_24id.equals("")){
         userId_24idTemp  = userId_24id;
        }
        String password_25id=  request.getParameter("password125");
            java.lang.String password_25idTemp = null;
        if(!password_25id.equals("")){
         password_25idTemp  = password_25id;
        }
        java.lang.String signInAdmin120mtemp = sampleServiceProxyid.signInAdmin(userId_24idTemp,password_25idTemp);
if(signInAdmin120mtemp == null){
%>
<%=signInAdmin120mtemp %>
<%
}else{
        String tempResultreturnp121 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInAdmin120mtemp));
        %>
        <%= tempResultreturnp121 %>
        <%
}
break;
case 127:
        gotMethod = true;
        String type_26id=  request.getParameter("type130");
            java.lang.String type_26idTemp = null;
        if(!type_26id.equals("")){
         type_26idTemp  = type_26id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers127mtemp = sampleServiceProxyid.viewMembers(type_26idTemp);
if(viewMembers127mtemp == null){
%>
<%=viewMembers127mtemp %>
<%
}else{
        String tempreturnp128 = null;
        if(viewMembers127mtemp != null){
        java.util.List listreturnp128= java.util.Arrays.asList(viewMembers127mtemp);
        tempreturnp128 = listreturnp128.toString();
        }
        %>
        <%=tempreturnp128%>
        <%
}
break;
case 132:
        gotMethod = true;
        String userId_27id=  request.getParameter("userId135");
            java.lang.String userId_27idTemp = null;
        if(!userId_27id.equals("")){
         userId_27idTemp  = userId_27id;
        }
        java.lang.String deleteUserAccount132mtemp = sampleServiceProxyid.deleteUserAccount(userId_27idTemp);
if(deleteUserAccount132mtemp == null){
%>
<%=deleteUserAccount132mtemp %>
<%
}else{
        String tempResultreturnp133 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount132mtemp));
        %>
        <%= tempResultreturnp133 %>
        <%
}
break;
case 137:
        gotMethod = true;
        String userId_28id=  request.getParameter("userId140");
            java.lang.String userId_28idTemp = null;
        if(!userId_28id.equals("")){
         userId_28idTemp  = userId_28id;
        }
        java.lang.String deleteAdminAccount137mtemp = sampleServiceProxyid.deleteAdminAccount(userId_28idTemp);
if(deleteAdminAccount137mtemp == null){
%>
<%=deleteAdminAccount137mtemp %>
<%
}else{
        String tempResultreturnp138 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount137mtemp));
        %>
        <%= tempResultreturnp138 %>
        <%
}
break;
case 142:
        gotMethod = true;
        String movieName_29id=  request.getParameter("movieName145");
            java.lang.String movieName_29idTemp = null;
        if(!movieName_29id.equals("")){
         movieName_29idTemp  = movieName_29id;
        }
        String movieBanner_30id=  request.getParameter("movieBanner147");
            java.lang.String movieBanner_30idTemp = null;
        if(!movieBanner_30id.equals("")){
         movieBanner_30idTemp  = movieBanner_30id;
        }
        String releaseDate_31id=  request.getParameter("releaseDate149");
            java.lang.String releaseDate_31idTemp = null;
        if(!releaseDate_31id.equals("")){
         releaseDate_31idTemp  = releaseDate_31id;
        }
        String availableCopies_32id=  request.getParameter("availableCopies151");
        int availableCopies_32idTemp  = Integer.parseInt(availableCopies_32id);
        String categoryId_33id=  request.getParameter("categoryId153");
        int categoryId_33idTemp  = Integer.parseInt(categoryId_33id);
        java.lang.String createNewMovie142mtemp = sampleServiceProxyid.createNewMovie(movieName_29idTemp,movieBanner_30idTemp,releaseDate_31idTemp,availableCopies_32idTemp,categoryId_33idTemp);
if(createNewMovie142mtemp == null){
%>
<%=createNewMovie142mtemp %>
<%
}else{
        String tempResultreturnp143 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie142mtemp));
        %>
        <%= tempResultreturnp143 %>
        <%
}
break;
case 155:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies155mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies155mtemp == null){
%>
<%=listAllMovies155mtemp %>
<%
}else{
        String tempreturnp156 = null;
        if(listAllMovies155mtemp != null){
        java.util.List listreturnp156= java.util.Arrays.asList(listAllMovies155mtemp);
        tempreturnp156 = listreturnp156.toString();
        }
        %>
        <%=tempreturnp156%>
        <%
}
break;
case 158:
        gotMethod = true;
        String movieName_34id=  request.getParameter("movieName161");
            java.lang.String movieName_34idTemp = null;
        if(!movieName_34id.equals("")){
         movieName_34idTemp  = movieName_34id;
        }
        String movieBanner_35id=  request.getParameter("movieBanner163");
            java.lang.String movieBanner_35idTemp = null;
        if(!movieBanner_35id.equals("")){
         movieBanner_35idTemp  = movieBanner_35id;
        }
        String releaseDate_36id=  request.getParameter("releaseDate165");
            java.lang.String releaseDate_36idTemp = null;
        if(!releaseDate_36id.equals("")){
         releaseDate_36idTemp  = releaseDate_36id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchMovie158mtemp = sampleServiceProxyid.searchMovie(movieName_34idTemp,movieBanner_35idTemp,releaseDate_36idTemp);
if(searchMovie158mtemp == null){
%>
<%=searchMovie158mtemp %>
<%
}else{
        String tempreturnp159 = null;
        if(searchMovie158mtemp != null){
        java.util.List listreturnp159= java.util.Arrays.asList(searchMovie158mtemp);
        tempreturnp159 = listreturnp159.toString();
        }
        %>
        <%=tempreturnp159%>
        <%
}
break;
case 167:
        gotMethod = true;
        String categoryName_37id=  request.getParameter("categoryName170");
            java.lang.String categoryName_37idTemp = null;
        if(!categoryName_37id.equals("")){
         categoryName_37idTemp  = categoryName_37id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory167mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_37idTemp);
if(listMoviesByCategory167mtemp == null){
%>
<%=listMoviesByCategory167mtemp %>
<%
}else{
        String tempreturnp168 = null;
        if(listMoviesByCategory167mtemp != null){
        java.util.List listreturnp168= java.util.Arrays.asList(listMoviesByCategory167mtemp);
        tempreturnp168 = listreturnp168.toString();
        }
        %>
        <%=tempreturnp168%>
        <%
}
break;
case 172:
        gotMethod = true;
        String movieId_38id=  request.getParameter("movieId175");
            java.lang.String movieId_38idTemp = null;
        if(!movieId_38id.equals("")){
         movieId_38idTemp  = movieId_38id;
        }
        java.lang.String deleteMovie172mtemp = sampleServiceProxyid.deleteMovie(movieId_38idTemp);
if(deleteMovie172mtemp == null){
%>
<%=deleteMovie172mtemp %>
<%
}else{
        String tempResultreturnp173 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie172mtemp));
        %>
        <%= tempResultreturnp173 %>
        <%
}
break;
case 177:
        gotMethod = true;
        String membershipId_39id=  request.getParameter("membershipId208");
        int membershipId_39idTemp  = Integer.parseInt(membershipId_39id);
        edu.sjsu.videolibrary.model.User displayUserInformation177mtemp = sampleServiceProxyid.displayUserInformation(membershipId_39idTemp);
if(displayUserInformation177mtemp == null){
%>
<%=displayUserInformation177mtemp %>
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
if(displayUserInformation177mtemp != null){
java.lang.String typestate180 = displayUserInformation177mtemp.getState();
        String tempResultstate180 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate180));
        %>
        <%= tempResultstate180 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typezip182 = displayUserInformation177mtemp.getZip();
        String tempResultzip182 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip182));
        %>
        <%= tempResultzip182 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typestartDate184 = displayUserInformation177mtemp.getStartDate();
        String tempResultstartDate184 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate184));
        %>
        <%= tempResultstartDate184 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typelatestPaymentDate186 = displayUserInformation177mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate186 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate186));
        %>
        <%= tempResultlatestPaymentDate186 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typemembershipType188 = displayUserInformation177mtemp.getMembershipType();
        String tempResultmembershipType188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType188));
        %>
        <%= tempResultmembershipType188 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typecity190 = displayUserInformation177mtemp.getCity();
        String tempResultcity190 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity190));
        %>
        <%= tempResultcity190 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
%>
<%=displayUserInformation177mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typeuserId194 = displayUserInformation177mtemp.getUserId();
        String tempResultuserId194 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId194));
        %>
        <%= tempResultuserId194 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String[] typemovieList196 = displayUserInformation177mtemp.getMovieList();
        String tempmovieList196 = null;
        if(typemovieList196 != null){
        java.util.List listmovieList196= java.util.Arrays.asList(typemovieList196);
        tempmovieList196 = listmovieList196.toString();
        }
        %>
        <%=tempmovieList196%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typeaddress198 = displayUserInformation177mtemp.getAddress();
        String tempResultaddress198 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress198));
        %>
        <%= tempResultaddress198 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typepassword200 = displayUserInformation177mtemp.getPassword();
        String tempResultpassword200 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword200));
        %>
        <%= tempResultpassword200 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typefirstName202 = displayUserInformation177mtemp.getFirstName();
        String tempResultfirstName202 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName202));
        %>
        <%= tempResultfirstName202 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typelastName204 = displayUserInformation177mtemp.getLastName();
        String tempResultlastName204 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName204));
        %>
        <%= tempResultlastName204 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation177mtemp != null){
java.lang.String typecreditCardNumber206 = displayUserInformation177mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber206 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber206));
        %>
        <%= tempResultcreditCardNumber206 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 210:
        gotMethod = true;
        String movieId_40id=  request.getParameter("movieId233");
        int movieId_40idTemp  = Integer.parseInt(movieId_40id);
        edu.sjsu.videolibrary.model.Movie displayMovieInformation210mtemp = sampleServiceProxyid.displayMovieInformation(movieId_40idTemp);
if(displayMovieInformation210mtemp == null){
%>
<%=displayMovieInformation210mtemp %>
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
if(displayMovieInformation210mtemp != null){
java.lang.String typemovieBanner213 = displayMovieInformation210mtemp.getMovieBanner();
        String tempResultmovieBanner213 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner213));
        %>
        <%= tempResultmovieBanner213 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
java.lang.String typereleaseDate215 = displayMovieInformation210mtemp.getReleaseDate();
        String tempResultreleaseDate215 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate215));
        %>
        <%= tempResultreleaseDate215 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
java.lang.String typemovieName217 = displayMovieInformation210mtemp.getMovieName();
        String tempResultmovieName217 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName217));
        %>
        <%= tempResultmovieName217 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
%>
<%=displayMovieInformation210mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
%>
<%=displayMovieInformation210mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryName:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
java.lang.String typecategoryName223 = displayMovieInformation210mtemp.getCategoryName();
        String tempResultcategoryName223 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategoryName223));
        %>
        <%= tempResultcategoryName223 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
%>
<%=displayMovieInformation210mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
java.lang.String typecatagory227 = displayMovieInformation210mtemp.getCatagory();
        String tempResultcatagory227 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory227));
        %>
        <%= tempResultcatagory227 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
%>
<%=displayMovieInformation210mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation210mtemp != null){
java.lang.String[] typebuyerList231 = displayMovieInformation210mtemp.getBuyerList();
        String tempbuyerList231 = null;
        if(typebuyerList231 != null){
        java.util.List listbuyerList231= java.util.Arrays.asList(typebuyerList231);
        tempbuyerList231 = listbuyerList231.toString();
        }
        %>
        <%=tempbuyerList231%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 235:
        gotMethod = true;
        String membershipId_41id=  request.getParameter("membershipId238");
        int membershipId_41idTemp  = Integer.parseInt(membershipId_41id);
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions235mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_41idTemp);
if(viewAccountTransactions235mtemp == null){
%>
<%=viewAccountTransactions235mtemp %>
<%
}else{
        String tempreturnp236 = null;
        if(viewAccountTransactions235mtemp != null){
        java.util.List listreturnp236= java.util.Arrays.asList(viewAccountTransactions235mtemp);
        tempreturnp236 = listreturnp236.toString();
        }
        %>
        <%=tempreturnp236%>
        <%
}
break;
case 240:
        gotMethod = true;
        String membershipId_42id=  request.getParameter("membershipId243");
        int membershipId_42idTemp  = Integer.parseInt(membershipId_42id);
        java.lang.String makeMonthlyPayment240mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_42idTemp);
if(makeMonthlyPayment240mtemp == null){
%>
<%=makeMonthlyPayment240mtemp %>
<%
}else{
        String tempResultreturnp241 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment240mtemp));
        %>
        <%= tempResultreturnp241 %>
        <%
}
break;
case 245:
        gotMethod = true;
        String membershipId_43id=  request.getParameter("membershipId248");
        int membershipId_43idTemp  = Integer.parseInt(membershipId_43id);
        String userId_44id=  request.getParameter("userId250");
            java.lang.String userId_44idTemp = null;
        if(!userId_44id.equals("")){
         userId_44idTemp  = userId_44id;
        }
        String firstName_45id=  request.getParameter("firstName252");
            java.lang.String firstName_45idTemp = null;
        if(!firstName_45id.equals("")){
         firstName_45idTemp  = firstName_45id;
        }
        String lastName_46id=  request.getParameter("lastName254");
            java.lang.String lastName_46idTemp = null;
        if(!lastName_46id.equals("")){
         lastName_46idTemp  = lastName_46id;
        }
        String address_47id=  request.getParameter("address256");
            java.lang.String address_47idTemp = null;
        if(!address_47id.equals("")){
         address_47idTemp  = address_47id;
        }
        String city_48id=  request.getParameter("city258");
            java.lang.String city_48idTemp = null;
        if(!city_48id.equals("")){
         city_48idTemp  = city_48id;
        }
        String state_49id=  request.getParameter("state260");
            java.lang.String state_49idTemp = null;
        if(!state_49id.equals("")){
         state_49idTemp  = state_49id;
        }
        String zipCode_50id=  request.getParameter("zipCode262");
            java.lang.String zipCode_50idTemp = null;
        if(!zipCode_50id.equals("")){
         zipCode_50idTemp  = zipCode_50id;
        }
        String membershipType_51id=  request.getParameter("membershipType264");
            java.lang.String membershipType_51idTemp = null;
        if(!membershipType_51id.equals("")){
         membershipType_51idTemp  = membershipType_51id;
        }
        String creditCardNumber_52id=  request.getParameter("creditCardNumber266");
            java.lang.String creditCardNumber_52idTemp = null;
        if(!creditCardNumber_52id.equals("")){
         creditCardNumber_52idTemp  = creditCardNumber_52id;
        }
        java.lang.String updateUserInfo245mtemp = sampleServiceProxyid.updateUserInfo(membershipId_43idTemp,userId_44idTemp,firstName_45idTemp,lastName_46idTemp,address_47idTemp,city_48idTemp,state_49idTemp,zipCode_50idTemp,membershipType_51idTemp,creditCardNumber_52idTemp);
if(updateUserInfo245mtemp == null){
%>
<%=updateUserInfo245mtemp %>
<%
}else{
        String tempResultreturnp246 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo245mtemp));
        %>
        <%= tempResultreturnp246 %>
        <%
}
break;
case 268:
        gotMethod = true;
        String membershipId_53id=  request.getParameter("membershipId271");
        int membershipId_53idTemp  = Integer.parseInt(membershipId_53id);
        String oldPassword_54id=  request.getParameter("oldPassword273");
            java.lang.String oldPassword_54idTemp = null;
        if(!oldPassword_54id.equals("")){
         oldPassword_54idTemp  = oldPassword_54id;
        }
        String newPassword_55id=  request.getParameter("newPassword275");
            java.lang.String newPassword_55idTemp = null;
        if(!newPassword_55id.equals("")){
         newPassword_55idTemp  = newPassword_55id;
        }
        java.lang.String updatePassword268mtemp = sampleServiceProxyid.updatePassword(membershipId_53idTemp,oldPassword_54idTemp,newPassword_55idTemp);
if(updatePassword268mtemp == null){
%>
<%=updatePassword268mtemp %>
<%
}else{
        String tempResultreturnp269 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword268mtemp));
        %>
        <%= tempResultreturnp269 %>
        <%
}
break;
case 277:
        gotMethod = true;
        String movieId_56id=  request.getParameter("movieId280");
        int movieId_56idTemp  = Integer.parseInt(movieId_56id);
        String movieName_57id=  request.getParameter("movieName282");
            java.lang.String movieName_57idTemp = null;
        if(!movieName_57id.equals("")){
         movieName_57idTemp  = movieName_57id;
        }
        String movieBanner_58id=  request.getParameter("movieBanner284");
            java.lang.String movieBanner_58idTemp = null;
        if(!movieBanner_58id.equals("")){
         movieBanner_58idTemp  = movieBanner_58id;
        }
        String releaseDate_59id=  request.getParameter("releaseDate286");
            java.lang.String releaseDate_59idTemp = null;
        if(!releaseDate_59id.equals("")){
         releaseDate_59idTemp  = releaseDate_59id;
        }
        String availableCopies_60id=  request.getParameter("availableCopies288");
        int availableCopies_60idTemp  = Integer.parseInt(availableCopies_60id);
        String categoryId_61id=  request.getParameter("categoryId290");
        int categoryId_61idTemp  = Integer.parseInt(categoryId_61id);
        java.lang.String updateMovieInfo277mtemp = sampleServiceProxyid.updateMovieInfo(movieId_56idTemp,movieName_57idTemp,movieBanner_58idTemp,releaseDate_59idTemp,availableCopies_60idTemp,categoryId_61idTemp);
if(updateMovieInfo277mtemp == null){
%>
<%=updateMovieInfo277mtemp %>
<%
}else{
        String tempResultreturnp278 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo277mtemp));
        %>
        <%= tempResultreturnp278 %>
        <%
}
break;
case 292:
        gotMethod = true;
        String membershipId_62id=  request.getParameter("membershipId295");
        int membershipId_62idTemp  = Integer.parseInt(membershipId_62id);
        String month_63id=  request.getParameter("month297");
        int month_63idTemp  = Integer.parseInt(month_63id);
        String year_64id=  request.getParameter("year299");
        int year_64idTemp  = Integer.parseInt(year_64id);
        java.lang.String generateMonthlyStatement292mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_62idTemp,month_63idTemp,year_64idTemp);
if(generateMonthlyStatement292mtemp == null){
%>
<%=generateMonthlyStatement292mtemp %>
<%
}else{
        String tempResultreturnp293 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement292mtemp));
        %>
        <%= tempResultreturnp293 %>
        <%
}
break;
case 301:
        gotMethod = true;
        String membershipId_65id=  request.getParameter("membershipId304");
        int membershipId_65idTemp  = Integer.parseInt(membershipId_65id);
        String month_66id=  request.getParameter("month306");
        int month_66idTemp  = Integer.parseInt(month_66id);
        String year_67id=  request.getParameter("year308");
        int year_67idTemp  = Integer.parseInt(year_67id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement301mtemp = sampleServiceProxyid.viewStatement(membershipId_65idTemp,month_66idTemp,year_67idTemp);
if(viewStatement301mtemp == null){
%>
<%=viewStatement301mtemp %>
<%
}else{
        String tempreturnp302 = null;
        if(viewStatement301mtemp != null){
        java.util.List listreturnp302= java.util.Arrays.asList(viewStatement301mtemp);
        tempreturnp302 = listreturnp302.toString();
        }
        %>
        <%=tempreturnp302%>
        <%
}
break;
case 310:
        gotMethod = true;
        String membershipId_68id=  request.getParameter("membershipId319");
        int membershipId_68idTemp  = Integer.parseInt(membershipId_68id);
        String month_69id=  request.getParameter("month321");
        int month_69idTemp  = Integer.parseInt(month_69id);
        String year_70id=  request.getParameter("year323");
        int year_70idTemp  = Integer.parseInt(year_70id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember310mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_68idTemp,month_69idTemp,year_70idTemp);
if(generateMonthlyBillForPremiumMember310mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember310mtemp %>
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
if(generateMonthlyBillForPremiumMember310mtemp != null){
java.lang.String typepaymentStatus313 = generateMonthlyBillForPremiumMember310mtemp.getPaymentStatus();
        String tempResultpaymentStatus313 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus313));
        %>
        <%= tempResultpaymentStatus313 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember310mtemp != null){
java.lang.String typepaymentDate315 = generateMonthlyBillForPremiumMember310mtemp.getPaymentDate();
        String tempResultpaymentDate315 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate315));
        %>
        <%= tempResultpaymentDate315 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember310mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember310mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 325:
        gotMethod = true;
        double getRentAmountforMovie325mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp326 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie325mtemp));
        %>
        <%= tempResultreturnp326 %>
        <%
break;
case 328:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember328mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp329 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember328mtemp));
        %>
        <%= tempResultreturnp329 %>
        <%
break;
case 331:
        gotMethod = true;
        java.lang.String[] listCategories331mtemp = sampleServiceProxyid.listCategories();
if(listCategories331mtemp == null){
%>
<%=listCategories331mtemp %>
<%
}else{
        String tempreturnp332 = null;
        if(listCategories331mtemp != null){
        java.util.List listreturnp332= java.util.Arrays.asList(listCategories331mtemp);
        tempreturnp332 = listreturnp332.toString();
        }
        %>
        <%=tempreturnp332%>
        <%
}
break;
case 334:
        gotMethod = true;
        String userInput_71id=  request.getParameter("userInput337");
            java.lang.String userInput_71idTemp = null;
        if(!userInput_71id.equals("")){
         userInput_71idTemp  = userInput_71id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByName334mtemp = sampleServiceProxyid.searchByName(userInput_71idTemp);
if(searchByName334mtemp == null){
%>
<%=searchByName334mtemp %>
<%
}else{
        String tempreturnp335 = null;
        if(searchByName334mtemp != null){
        java.util.List listreturnp335= java.util.Arrays.asList(searchByName334mtemp);
        tempreturnp335 = listreturnp335.toString();
        }
        %>
        <%=tempreturnp335%>
        <%
}
break;
case 339:
        gotMethod = true;
        String userInput_72id=  request.getParameter("userInput342");
            java.lang.String userInput_72idTemp = null;
        if(!userInput_72id.equals("")){
         userInput_72idTemp  = userInput_72id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByMovieBanner339mtemp = sampleServiceProxyid.searchByMovieBanner(userInput_72idTemp);
if(searchByMovieBanner339mtemp == null){
%>
<%=searchByMovieBanner339mtemp %>
<%
}else{
        String tempreturnp340 = null;
        if(searchByMovieBanner339mtemp != null){
        java.util.List listreturnp340= java.util.Arrays.asList(searchByMovieBanner339mtemp);
        tempreturnp340 = listreturnp340.toString();
        }
        %>
        <%=tempreturnp340%>
        <%
}
break;
case 344:
        gotMethod = true;
        String userInput_73id=  request.getParameter("userInput347");
            java.lang.String userInput_73idTemp = null;
        if(!userInput_73id.equals("")){
         userInput_73idTemp  = userInput_73id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByReleaseDate344mtemp = sampleServiceProxyid.searchByReleaseDate(userInput_73idTemp);
if(searchByReleaseDate344mtemp == null){
%>
<%=searchByReleaseDate344mtemp %>
<%
}else{
        String tempreturnp345 = null;
        if(searchByReleaseDate344mtemp != null){
        java.util.List listreturnp345= java.util.Arrays.asList(searchByReleaseDate344mtemp);
        tempreturnp345 = listreturnp345.toString();
        }
        %>
        <%=tempreturnp345%>
        <%
}
break;
case 349:
        gotMethod = true;
        String membershipId_74id=  request.getParameter("membershipId352");
            java.lang.String membershipId_74idTemp = null;
        if(!membershipId_74id.equals("")){
         membershipId_74idTemp  = membershipId_74id;
        }
        String userId_75id=  request.getParameter("userId354");
            java.lang.String userId_75idTemp = null;
        if(!userId_75id.equals("")){
         userId_75idTemp  = userId_75id;
        }
        String membershipType_76id=  request.getParameter("membershipType356");
            java.lang.String membershipType_76idTemp = null;
        if(!membershipType_76id.equals("")){
         membershipType_76idTemp  = membershipType_76id;
        }
        String startDate_77id=  request.getParameter("startDate358");
            java.lang.String startDate_77idTemp = null;
        if(!startDate_77id.equals("")){
         startDate_77idTemp  = startDate_77id;
        }
        String firstName_78id=  request.getParameter("firstName360");
            java.lang.String firstName_78idTemp = null;
        if(!firstName_78id.equals("")){
         firstName_78idTemp  = firstName_78id;
        }
        String lastName_79id=  request.getParameter("lastName362");
            java.lang.String lastName_79idTemp = null;
        if(!lastName_79id.equals("")){
         lastName_79idTemp  = lastName_79id;
        }
        String address_80id=  request.getParameter("address364");
            java.lang.String address_80idTemp = null;
        if(!address_80id.equals("")){
         address_80idTemp  = address_80id;
        }
        String city_81id=  request.getParameter("city366");
            java.lang.String city_81idTemp = null;
        if(!city_81id.equals("")){
         city_81idTemp  = city_81id;
        }
        String state_82id=  request.getParameter("state368");
            java.lang.String state_82idTemp = null;
        if(!state_82id.equals("")){
         state_82idTemp  = state_82id;
        }
        String zipCode_83id=  request.getParameter("zipCode370");
            java.lang.String zipCode_83idTemp = null;
        if(!zipCode_83id.equals("")){
         zipCode_83idTemp  = zipCode_83id;
        }
        edu.sjsu.videolibrary.model.User[] searchUser349mtemp = sampleServiceProxyid.searchUser(membershipId_74idTemp,userId_75idTemp,membershipType_76idTemp,startDate_77idTemp,firstName_78idTemp,lastName_79idTemp,address_80idTemp,city_81idTemp,state_82idTemp,zipCode_83idTemp);
if(searchUser349mtemp == null){
%>
<%=searchUser349mtemp %>
<%
}else{
        String tempreturnp350 = null;
        if(searchUser349mtemp != null){
        java.util.List listreturnp350= java.util.Arrays.asList(searchUser349mtemp);
        tempreturnp350 = listreturnp350.toString();
        }
        %>
        <%=tempreturnp350%>
        <%
}
break;
case 372:
        gotMethod = true;
        String adminInput_84id=  request.getParameter("adminInput375");
            java.lang.String adminInput_84idTemp = null;
        if(!adminInput_84id.equals("")){
         adminInput_84idTemp  = adminInput_84id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByFirstName372mtemp = sampleServiceProxyid.searchUserByFirstName(adminInput_84idTemp);
if(searchUserByFirstName372mtemp == null){
%>
<%=searchUserByFirstName372mtemp %>
<%
}else{
        String tempreturnp373 = null;
        if(searchUserByFirstName372mtemp != null){
        java.util.List listreturnp373= java.util.Arrays.asList(searchUserByFirstName372mtemp);
        tempreturnp373 = listreturnp373.toString();
        }
        %>
        <%=tempreturnp373%>
        <%
}
break;
case 377:
        gotMethod = true;
        String adminInput_85id=  request.getParameter("adminInput380");
            java.lang.String adminInput_85idTemp = null;
        if(!adminInput_85id.equals("")){
         adminInput_85idTemp  = adminInput_85id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByLastName377mtemp = sampleServiceProxyid.searchUserByLastName(adminInput_85idTemp);
if(searchUserByLastName377mtemp == null){
%>
<%=searchUserByLastName377mtemp %>
<%
}else{
        String tempreturnp378 = null;
        if(searchUserByLastName377mtemp != null){
        java.util.List listreturnp378= java.util.Arrays.asList(searchUserByLastName377mtemp);
        tempreturnp378 = listreturnp378.toString();
        }
        %>
        <%=tempreturnp378%>
        <%
}
break;
case 382:
        gotMethod = true;
        String adminInput_86id=  request.getParameter("adminInput385");
            java.lang.String adminInput_86idTemp = null;
        if(!adminInput_86id.equals("")){
         adminInput_86idTemp  = adminInput_86id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByCity382mtemp = sampleServiceProxyid.searchUserByCity(adminInput_86idTemp);
if(searchUserByCity382mtemp == null){
%>
<%=searchUserByCity382mtemp %>
<%
}else{
        String tempreturnp383 = null;
        if(searchUserByCity382mtemp != null){
        java.util.List listreturnp383= java.util.Arrays.asList(searchUserByCity382mtemp);
        tempreturnp383 = listreturnp383.toString();
        }
        %>
        <%=tempreturnp383%>
        <%
}
break;
case 387:
        gotMethod = true;
        String adminInput_87id=  request.getParameter("adminInput390");
            java.lang.String adminInput_87idTemp = null;
        if(!adminInput_87id.equals("")){
         adminInput_87idTemp  = adminInput_87id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByState387mtemp = sampleServiceProxyid.searchUserByState(adminInput_87idTemp);
if(searchUserByState387mtemp == null){
%>
<%=searchUserByState387mtemp %>
<%
}else{
        String tempreturnp388 = null;
        if(searchUserByState387mtemp != null){
        java.util.List listreturnp388= java.util.Arrays.asList(searchUserByState387mtemp);
        tempreturnp388 = listreturnp388.toString();
        }
        %>
        <%=tempreturnp388%>
        <%
}
break;
case 392:
        gotMethod = true;
        String adminInput_88id=  request.getParameter("adminInput395");
            java.lang.String adminInput_88idTemp = null;
        if(!adminInput_88id.equals("")){
         adminInput_88idTemp  = adminInput_88id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByMemberShipType392mtemp = sampleServiceProxyid.searchUserByMemberShipType(adminInput_88idTemp);
if(searchUserByMemberShipType392mtemp == null){
%>
<%=searchUserByMemberShipType392mtemp %>
<%
}else{
        String tempreturnp393 = null;
        if(searchUserByMemberShipType392mtemp != null){
        java.util.List listreturnp393= java.util.Arrays.asList(searchUserByMemberShipType392mtemp);
        tempreturnp393 = listreturnp393.toString();
        }
        %>
        <%=tempreturnp393%>
        <%
}
break;
case 397:
        gotMethod = true;
        String adminInput_89id=  request.getParameter("adminInput400");
        int adminInput_89idTemp  = Integer.parseInt(adminInput_89id);
        edu.sjsu.videolibrary.model.User[] searchUserByMembershipId397mtemp = sampleServiceProxyid.searchUserByMembershipId(adminInput_89idTemp);
if(searchUserByMembershipId397mtemp == null){
%>
<%=searchUserByMembershipId397mtemp %>
<%
}else{
        String tempreturnp398 = null;
        if(searchUserByMembershipId397mtemp != null){
        java.util.List listreturnp398= java.util.Arrays.asList(searchUserByMembershipId397mtemp);
        tempreturnp398 = listreturnp398.toString();
        }
        %>
        <%=tempreturnp398%>
        <%
}
break;
case 402:
        gotMethod = true;
        String adminId_90id=  request.getParameter("adminId415");
            java.lang.String adminId_90idTemp = null;
        if(!adminId_90id.equals("")){
         adminId_90idTemp  = adminId_90id;
        }
        edu.sjsu.videolibrary.model.Admin displayAdminInformation402mtemp = sampleServiceProxyid.displayAdminInformation(adminId_90idTemp);
if(displayAdminInformation402mtemp == null){
%>
<%=displayAdminInformation402mtemp %>
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
if(displayAdminInformation402mtemp != null){
java.lang.String typepassword405 = displayAdminInformation402mtemp.getPassword();
        String tempResultpassword405 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword405));
        %>
        <%= tempResultpassword405 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayAdminInformation402mtemp != null){
java.lang.String typelastName407 = displayAdminInformation402mtemp.getLastName();
        String tempResultlastName407 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName407));
        %>
        <%= tempResultlastName407 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayAdminInformation402mtemp != null){
java.lang.String typefirstName409 = displayAdminInformation402mtemp.getFirstName();
        String tempResultfirstName409 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName409));
        %>
        <%= tempResultfirstName409 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(displayAdminInformation402mtemp != null){
%>
<%=displayAdminInformation402mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(displayAdminInformation402mtemp != null){
java.lang.String typeadminId413 = displayAdminInformation402mtemp.getAdminId();
        String tempResultadminId413 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId413));
        %>
        <%= tempResultadminId413 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 417:
        gotMethod = true;
        String adminId_91id=  request.getParameter("adminId420");
            java.lang.String adminId_91idTemp = null;
        if(!adminId_91id.equals("")){
         adminId_91idTemp  = adminId_91id;
        }
        String firstName_92id=  request.getParameter("firstName422");
            java.lang.String firstName_92idTemp = null;
        if(!firstName_92id.equals("")){
         firstName_92idTemp  = firstName_92id;
        }
        String lastName_93id=  request.getParameter("lastName424");
            java.lang.String lastName_93idTemp = null;
        if(!lastName_93id.equals("")){
         lastName_93idTemp  = lastName_93id;
        }
        String password_94id=  request.getParameter("password426");
            java.lang.String password_94idTemp = null;
        if(!password_94id.equals("")){
         password_94idTemp  = password_94id;
        }
        java.lang.String updateAdminInfo417mtemp = sampleServiceProxyid.updateAdminInfo(adminId_91idTemp,firstName_92idTemp,lastName_93idTemp,password_94idTemp);
if(updateAdminInfo417mtemp == null){
%>
<%=updateAdminInfo417mtemp %>
<%
}else{
        String tempResultreturnp418 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateAdminInfo417mtemp));
        %>
        <%= tempResultreturnp418 %>
        <%
}
break;
case 428:
        gotMethod = true;
        String membershipId_95id=  request.getParameter("membershipId431");
        int membershipId_95idTemp  = Integer.parseInt(membershipId_95id);
        String newPassword_96id=  request.getParameter("newPassword433");
            java.lang.String newPassword_96idTemp = null;
        if(!newPassword_96id.equals("")){
         newPassword_96idTemp  = newPassword_96id;
        }
        java.lang.String updateUserPassword428mtemp = sampleServiceProxyid.updateUserPassword(membershipId_95idTemp,newPassword_96idTemp);
if(updateUserPassword428mtemp == null){
%>
<%=updateUserPassword428mtemp %>
<%
}else{
        String tempResultreturnp429 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserPassword428mtemp));
        %>
        <%= tempResultreturnp429 %>
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