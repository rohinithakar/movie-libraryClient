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
        String membershipId_8id=  request.getParameter("membershipId51");
        int membershipId_8idTemp  = Integer.parseInt(membershipId_8id);
        String movieId_9id=  request.getParameter("movieId53");
        int movieId_9idTemp  = Integer.parseInt(movieId_9id);
        boolean returnMovie48mtemp = sampleServiceProxyid.returnMovie(membershipId_8idTemp,movieId_9idTemp);
        String tempResultreturnp49 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(returnMovie48mtemp));
        %>
        <%= tempResultreturnp49 %>
        <%
break;
case 55:
        gotMethod = true;
        String userId_10id=  request.getParameter("userId58");
            java.lang.String userId_10idTemp = null;
        if(!userId_10id.equals("")){
         userId_10idTemp  = userId_10id;
        }
        String password_11id=  request.getParameter("password60");
            java.lang.String password_11idTemp = null;
        if(!password_11id.equals("")){
         password_11idTemp  = password_11id;
        }
        String memType_12id=  request.getParameter("memType62");
            java.lang.String memType_12idTemp = null;
        if(!memType_12id.equals("")){
         memType_12idTemp  = memType_12id;
        }
        String firstName_13id=  request.getParameter("firstName64");
            java.lang.String firstName_13idTemp = null;
        if(!firstName_13id.equals("")){
         firstName_13idTemp  = firstName_13id;
        }
        String lastName_14id=  request.getParameter("lastName66");
            java.lang.String lastName_14idTemp = null;
        if(!lastName_14id.equals("")){
         lastName_14idTemp  = lastName_14id;
        }
        String address_15id=  request.getParameter("address68");
            java.lang.String address_15idTemp = null;
        if(!address_15id.equals("")){
         address_15idTemp  = address_15id;
        }
        String city_16id=  request.getParameter("city70");
            java.lang.String city_16idTemp = null;
        if(!city_16id.equals("")){
         city_16idTemp  = city_16id;
        }
        String state_17id=  request.getParameter("state72");
            java.lang.String state_17idTemp = null;
        if(!state_17id.equals("")){
         state_17idTemp  = state_17id;
        }
        String zipCode_18id=  request.getParameter("zipCode74");
            java.lang.String zipCode_18idTemp = null;
        if(!zipCode_18id.equals("")){
         zipCode_18idTemp  = zipCode_18id;
        }
        String ccNumber_19id=  request.getParameter("ccNumber76");
            java.lang.String ccNumber_19idTemp = null;
        if(!ccNumber_19id.equals("")){
         ccNumber_19idTemp  = ccNumber_19id;
        }
        java.lang.String signUpUser55mtemp = sampleServiceProxyid.signUpUser(userId_10idTemp,password_11idTemp,memType_12idTemp,firstName_13idTemp,lastName_14idTemp,address_15idTemp,city_16idTemp,state_17idTemp,zipCode_18idTemp,ccNumber_19idTemp);
if(signUpUser55mtemp == null){
%>
<%=signUpUser55mtemp %>
<%
}else{
        String tempResultreturnp56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpUser55mtemp));
        %>
        <%= tempResultreturnp56 %>
        <%
}
break;
case 78:
        gotMethod = true;
        String userId_20id=  request.getParameter("userId81");
            java.lang.String userId_20idTemp = null;
        if(!userId_20id.equals("")){
         userId_20idTemp  = userId_20id;
        }
        String password_21id=  request.getParameter("password83");
            java.lang.String password_21idTemp = null;
        if(!password_21id.equals("")){
         password_21idTemp  = password_21id;
        }
        String firstName_22id=  request.getParameter("firstName85");
            java.lang.String firstName_22idTemp = null;
        if(!firstName_22id.equals("")){
         firstName_22idTemp  = firstName_22id;
        }
        String lastName_23id=  request.getParameter("lastName87");
            java.lang.String lastName_23idTemp = null;
        if(!lastName_23id.equals("")){
         lastName_23idTemp  = lastName_23id;
        }
        java.lang.String signUpAdmin78mtemp = sampleServiceProxyid.signUpAdmin(userId_20idTemp,password_21idTemp,firstName_22idTemp,lastName_23idTemp);
if(signUpAdmin78mtemp == null){
%>
<%=signUpAdmin78mtemp %>
<%
}else{
        String tempResultreturnp79 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin78mtemp));
        %>
        <%= tempResultreturnp79 %>
        <%
}
break;
case 89:
        gotMethod = true;
        String userId_24id=  request.getParameter("userId122");
            java.lang.String userId_24idTemp = null;
        if(!userId_24id.equals("")){
         userId_24idTemp  = userId_24id;
        }
        String password_25id=  request.getParameter("password124");
            java.lang.String password_25idTemp = null;
        if(!password_25id.equals("")){
         password_25idTemp  = password_25id;
        }
        edu.sjsu.videolibrary.model.User signInUser89mtemp = sampleServiceProxyid.signInUser(userId_24idTemp,password_25idTemp);
if(signInUser89mtemp == null){
%>
<%=signInUser89mtemp %>
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
if(signInUser89mtemp != null){
java.lang.String typestate92 = signInUser89mtemp.getState();
        String tempResultstate92 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate92));
        %>
        <%= tempResultstate92 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typezip94 = signInUser89mtemp.getZip();
        String tempResultzip94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip94));
        %>
        <%= tempResultzip94 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typestartDate96 = signInUser89mtemp.getStartDate();
        String tempResultstartDate96 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate96));
        %>
        <%= tempResultstartDate96 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typelatestPaymentDate98 = signInUser89mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate98));
        %>
        <%= tempResultlatestPaymentDate98 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typemembershipType100 = signInUser89mtemp.getMembershipType();
        String tempResultmembershipType100 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType100));
        %>
        <%= tempResultmembershipType100 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typecity102 = signInUser89mtemp.getCity();
        String tempResultcity102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity102));
        %>
        <%= tempResultcity102 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(signInUser89mtemp != null){
%>
<%=signInUser89mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typeuserId106 = signInUser89mtemp.getUserId();
        String tempResultuserId106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId106));
        %>
        <%= tempResultuserId106 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String[] typemovieList108 = signInUser89mtemp.getMovieList();
        String tempmovieList108 = null;
        if(typemovieList108 != null){
        java.util.List listmovieList108= java.util.Arrays.asList(typemovieList108);
        tempmovieList108 = listmovieList108.toString();
        }
        %>
        <%=tempmovieList108%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typeaddress110 = signInUser89mtemp.getAddress();
        String tempResultaddress110 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress110));
        %>
        <%= tempResultaddress110 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typepassword112 = signInUser89mtemp.getPassword();
        String tempResultpassword112 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword112));
        %>
        <%= tempResultpassword112 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typefirstName114 = signInUser89mtemp.getFirstName();
        String tempResultfirstName114 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName114));
        %>
        <%= tempResultfirstName114 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typelastName116 = signInUser89mtemp.getLastName();
        String tempResultlastName116 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName116));
        %>
        <%= tempResultlastName116 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentedMovies:</TD>
<TD>
<%
if(signInUser89mtemp != null){
%>
<%=signInUser89mtemp.getRentedMovies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(signInUser89mtemp != null){
java.lang.String typecreditCardNumber120 = signInUser89mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber120));
        %>
        <%= tempResultcreditCardNumber120 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 126:
        gotMethod = true;
        String userId_26id=  request.getParameter("userId139");
            java.lang.String userId_26idTemp = null;
        if(!userId_26id.equals("")){
         userId_26idTemp  = userId_26id;
        }
        String password_27id=  request.getParameter("password141");
            java.lang.String password_27idTemp = null;
        if(!password_27id.equals("")){
         password_27idTemp  = password_27id;
        }
        edu.sjsu.videolibrary.model.Admin signInAdmin126mtemp = sampleServiceProxyid.signInAdmin(userId_26idTemp,password_27idTemp);
if(signInAdmin126mtemp == null){
%>
<%=signInAdmin126mtemp %>
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
if(signInAdmin126mtemp != null){
java.lang.String typepassword129 = signInAdmin126mtemp.getPassword();
        String tempResultpassword129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword129));
        %>
        <%= tempResultpassword129 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signInAdmin126mtemp != null){
java.lang.String typelastName131 = signInAdmin126mtemp.getLastName();
        String tempResultlastName131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName131));
        %>
        <%= tempResultlastName131 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signInAdmin126mtemp != null){
java.lang.String typefirstName133 = signInAdmin126mtemp.getFirstName();
        String tempResultfirstName133 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName133));
        %>
        <%= tempResultfirstName133 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(signInAdmin126mtemp != null){
%>
<%=signInAdmin126mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(signInAdmin126mtemp != null){
java.lang.String typeadminId137 = signInAdmin126mtemp.getAdminId();
        String tempResultadminId137 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId137));
        %>
        <%= tempResultadminId137 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 143:
        gotMethod = true;
        String type_28id=  request.getParameter("type146");
            java.lang.String type_28idTemp = null;
        if(!type_28id.equals("")){
         type_28idTemp  = type_28id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers143mtemp = sampleServiceProxyid.viewMembers(type_28idTemp);
if(viewMembers143mtemp == null){
%>
<%=viewMembers143mtemp %>
<%
}else{
        String tempreturnp144 = null;
        if(viewMembers143mtemp != null){
        java.util.List listreturnp144= java.util.Arrays.asList(viewMembers143mtemp);
        tempreturnp144 = listreturnp144.toString();
        }
        %>
        <%=tempreturnp144%>
        <%
}
break;
case 148:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Admin[] viewAdmins148mtemp = sampleServiceProxyid.viewAdmins();
if(viewAdmins148mtemp == null){
%>
<%=viewAdmins148mtemp %>
<%
}else{
        String tempreturnp149 = null;
        if(viewAdmins148mtemp != null){
        java.util.List listreturnp149= java.util.Arrays.asList(viewAdmins148mtemp);
        tempreturnp149 = listreturnp149.toString();
        }
        %>
        <%=tempreturnp149%>
        <%
}
break;
case 151:
        gotMethod = true;
        String userId_29id=  request.getParameter("userId154");
            java.lang.String userId_29idTemp = null;
        if(!userId_29id.equals("")){
         userId_29idTemp  = userId_29id;
        }
        java.lang.String deleteUserAccount151mtemp = sampleServiceProxyid.deleteUserAccount(userId_29idTemp);
if(deleteUserAccount151mtemp == null){
%>
<%=deleteUserAccount151mtemp %>
<%
}else{
        String tempResultreturnp152 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount151mtemp));
        %>
        <%= tempResultreturnp152 %>
        <%
}
break;
case 156:
        gotMethod = true;
        String userId_30id=  request.getParameter("userId159");
            java.lang.String userId_30idTemp = null;
        if(!userId_30id.equals("")){
         userId_30idTemp  = userId_30id;
        }
        java.lang.String deleteAdminAccount156mtemp = sampleServiceProxyid.deleteAdminAccount(userId_30idTemp);
if(deleteAdminAccount156mtemp == null){
%>
<%=deleteAdminAccount156mtemp %>
<%
}else{
        String tempResultreturnp157 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount156mtemp));
        %>
        <%= tempResultreturnp157 %>
        <%
}
break;
case 161:
        gotMethod = true;
        String movieName_31id=  request.getParameter("movieName164");
            java.lang.String movieName_31idTemp = null;
        if(!movieName_31id.equals("")){
         movieName_31idTemp  = movieName_31id;
        }
        String movieBanner_32id=  request.getParameter("movieBanner166");
            java.lang.String movieBanner_32idTemp = null;
        if(!movieBanner_32id.equals("")){
         movieBanner_32idTemp  = movieBanner_32id;
        }
        String releaseDate_33id=  request.getParameter("releaseDate168");
            java.lang.String releaseDate_33idTemp = null;
        if(!releaseDate_33id.equals("")){
         releaseDate_33idTemp  = releaseDate_33id;
        }
        String availableCopies_34id=  request.getParameter("availableCopies170");
        int availableCopies_34idTemp  = Integer.parseInt(availableCopies_34id);
        String categoryId_35id=  request.getParameter("categoryId172");
        int categoryId_35idTemp  = Integer.parseInt(categoryId_35id);
        java.lang.String createNewMovie161mtemp = sampleServiceProxyid.createNewMovie(movieName_31idTemp,movieBanner_32idTemp,releaseDate_33idTemp,availableCopies_34idTemp,categoryId_35idTemp);
if(createNewMovie161mtemp == null){
%>
<%=createNewMovie161mtemp %>
<%
}else{
        String tempResultreturnp162 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie161mtemp));
        %>
        <%= tempResultreturnp162 %>
        <%
}
break;
case 174:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies174mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies174mtemp == null){
%>
<%=listAllMovies174mtemp %>
<%
}else{
        String tempreturnp175 = null;
        if(listAllMovies174mtemp != null){
        java.util.List listreturnp175= java.util.Arrays.asList(listAllMovies174mtemp);
        tempreturnp175 = listreturnp175.toString();
        }
        %>
        <%=tempreturnp175%>
        <%
}
break;
case 177:
        gotMethod = true;
        String movieName_36id=  request.getParameter("movieName180");
            java.lang.String movieName_36idTemp = null;
        if(!movieName_36id.equals("")){
         movieName_36idTemp  = movieName_36id;
        }
        String movieBanner_37id=  request.getParameter("movieBanner182");
            java.lang.String movieBanner_37idTemp = null;
        if(!movieBanner_37id.equals("")){
         movieBanner_37idTemp  = movieBanner_37id;
        }
        String releaseDate_38id=  request.getParameter("releaseDate184");
            java.lang.String releaseDate_38idTemp = null;
        if(!releaseDate_38id.equals("")){
         releaseDate_38idTemp  = releaseDate_38id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchMovie177mtemp = sampleServiceProxyid.searchMovie(movieName_36idTemp,movieBanner_37idTemp,releaseDate_38idTemp);
if(searchMovie177mtemp == null){
%>
<%=searchMovie177mtemp %>
<%
}else{
        String tempreturnp178 = null;
        if(searchMovie177mtemp != null){
        java.util.List listreturnp178= java.util.Arrays.asList(searchMovie177mtemp);
        tempreturnp178 = listreturnp178.toString();
        }
        %>
        <%=tempreturnp178%>
        <%
}
break;
case 186:
        gotMethod = true;
        String categoryName_39id=  request.getParameter("categoryName189");
            java.lang.String categoryName_39idTemp = null;
        if(!categoryName_39id.equals("")){
         categoryName_39idTemp  = categoryName_39id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory186mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_39idTemp);
if(listMoviesByCategory186mtemp == null){
%>
<%=listMoviesByCategory186mtemp %>
<%
}else{
        String tempreturnp187 = null;
        if(listMoviesByCategory186mtemp != null){
        java.util.List listreturnp187= java.util.Arrays.asList(listMoviesByCategory186mtemp);
        tempreturnp187 = listreturnp187.toString();
        }
        %>
        <%=tempreturnp187%>
        <%
}
break;
case 191:
        gotMethod = true;
        String movieId_40id=  request.getParameter("movieId194");
            java.lang.String movieId_40idTemp = null;
        if(!movieId_40id.equals("")){
         movieId_40idTemp  = movieId_40id;
        }
        java.lang.String deleteMovie191mtemp = sampleServiceProxyid.deleteMovie(movieId_40idTemp);
if(deleteMovie191mtemp == null){
%>
<%=deleteMovie191mtemp %>
<%
}else{
        String tempResultreturnp192 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie191mtemp));
        %>
        <%= tempResultreturnp192 %>
        <%
}
break;
case 196:
        gotMethod = true;
        String membershipId_41id=  request.getParameter("membershipId229");
        int membershipId_41idTemp  = Integer.parseInt(membershipId_41id);
        edu.sjsu.videolibrary.model.User displayUserInformation196mtemp = sampleServiceProxyid.displayUserInformation(membershipId_41idTemp);
if(displayUserInformation196mtemp == null){
%>
<%=displayUserInformation196mtemp %>
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
if(displayUserInformation196mtemp != null){
java.lang.String typestate199 = displayUserInformation196mtemp.getState();
        String tempResultstate199 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate199));
        %>
        <%= tempResultstate199 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typezip201 = displayUserInformation196mtemp.getZip();
        String tempResultzip201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip201));
        %>
        <%= tempResultzip201 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typestartDate203 = displayUserInformation196mtemp.getStartDate();
        String tempResultstartDate203 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate203));
        %>
        <%= tempResultstartDate203 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typelatestPaymentDate205 = displayUserInformation196mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate205 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate205));
        %>
        <%= tempResultlatestPaymentDate205 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typemembershipType207 = displayUserInformation196mtemp.getMembershipType();
        String tempResultmembershipType207 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType207));
        %>
        <%= tempResultmembershipType207 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typecity209 = displayUserInformation196mtemp.getCity();
        String tempResultcity209 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity209));
        %>
        <%= tempResultcity209 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
%>
<%=displayUserInformation196mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typeuserId213 = displayUserInformation196mtemp.getUserId();
        String tempResultuserId213 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId213));
        %>
        <%= tempResultuserId213 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String[] typemovieList215 = displayUserInformation196mtemp.getMovieList();
        String tempmovieList215 = null;
        if(typemovieList215 != null){
        java.util.List listmovieList215= java.util.Arrays.asList(typemovieList215);
        tempmovieList215 = listmovieList215.toString();
        }
        %>
        <%=tempmovieList215%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typeaddress217 = displayUserInformation196mtemp.getAddress();
        String tempResultaddress217 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress217));
        %>
        <%= tempResultaddress217 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typepassword219 = displayUserInformation196mtemp.getPassword();
        String tempResultpassword219 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword219));
        %>
        <%= tempResultpassword219 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typefirstName221 = displayUserInformation196mtemp.getFirstName();
        String tempResultfirstName221 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName221));
        %>
        <%= tempResultfirstName221 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typelastName223 = displayUserInformation196mtemp.getLastName();
        String tempResultlastName223 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName223));
        %>
        <%= tempResultlastName223 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentedMovies:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
%>
<%=displayUserInformation196mtemp.getRentedMovies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation196mtemp != null){
java.lang.String typecreditCardNumber227 = displayUserInformation196mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber227 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber227));
        %>
        <%= tempResultcreditCardNumber227 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 231:
        gotMethod = true;
        String movieId_42id=  request.getParameter("movieId254");
        int movieId_42idTemp  = Integer.parseInt(movieId_42id);
        edu.sjsu.videolibrary.model.Movie displayMovieInformation231mtemp = sampleServiceProxyid.displayMovieInformation(movieId_42idTemp);
if(displayMovieInformation231mtemp == null){
%>
<%=displayMovieInformation231mtemp %>
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
if(displayMovieInformation231mtemp != null){
java.lang.String typemovieBanner234 = displayMovieInformation231mtemp.getMovieBanner();
        String tempResultmovieBanner234 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner234));
        %>
        <%= tempResultmovieBanner234 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
java.lang.String typereleaseDate236 = displayMovieInformation231mtemp.getReleaseDate();
        String tempResultreleaseDate236 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate236));
        %>
        <%= tempResultreleaseDate236 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
java.lang.String typemovieName238 = displayMovieInformation231mtemp.getMovieName();
        String tempResultmovieName238 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName238));
        %>
        <%= tempResultmovieName238 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
%>
<%=displayMovieInformation231mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
%>
<%=displayMovieInformation231mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryName:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
java.lang.String typecategoryName244 = displayMovieInformation231mtemp.getCategoryName();
        String tempResultcategoryName244 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategoryName244));
        %>
        <%= tempResultcategoryName244 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
%>
<%=displayMovieInformation231mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
java.lang.String typecatagory248 = displayMovieInformation231mtemp.getCatagory();
        String tempResultcatagory248 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory248));
        %>
        <%= tempResultcatagory248 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
%>
<%=displayMovieInformation231mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation231mtemp != null){
java.lang.String[] typebuyerList252 = displayMovieInformation231mtemp.getBuyerList();
        String tempbuyerList252 = null;
        if(typebuyerList252 != null){
        java.util.List listbuyerList252= java.util.Arrays.asList(typebuyerList252);
        tempbuyerList252 = listbuyerList252.toString();
        }
        %>
        <%=tempbuyerList252%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 256:
        gotMethod = true;
        String membershipId_43id=  request.getParameter("membershipId259");
        int membershipId_43idTemp  = Integer.parseInt(membershipId_43id);
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions256mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_43idTemp);
if(viewAccountTransactions256mtemp == null){
%>
<%=viewAccountTransactions256mtemp %>
<%
}else{
        String tempreturnp257 = null;
        if(viewAccountTransactions256mtemp != null){
        java.util.List listreturnp257= java.util.Arrays.asList(viewAccountTransactions256mtemp);
        tempreturnp257 = listreturnp257.toString();
        }
        %>
        <%=tempreturnp257%>
        <%
}
break;
case 261:
        gotMethod = true;
        String membershipId_44id=  request.getParameter("membershipId264");
        int membershipId_44idTemp  = Integer.parseInt(membershipId_44id);
        edu.sjsu.videolibrary.model.Transaction[] moviesToReturn261mtemp = sampleServiceProxyid.moviesToReturn(membershipId_44idTemp);
if(moviesToReturn261mtemp == null){
%>
<%=moviesToReturn261mtemp %>
<%
}else{
        String tempreturnp262 = null;
        if(moviesToReturn261mtemp != null){
        java.util.List listreturnp262= java.util.Arrays.asList(moviesToReturn261mtemp);
        tempreturnp262 = listreturnp262.toString();
        }
        %>
        <%=tempreturnp262%>
        <%
}
break;
case 266:
        gotMethod = true;
        String membershipId_45id=  request.getParameter("membershipId269");
        int membershipId_45idTemp  = Integer.parseInt(membershipId_45id);
        java.lang.String makeMonthlyPayment266mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_45idTemp);
if(makeMonthlyPayment266mtemp == null){
%>
<%=makeMonthlyPayment266mtemp %>
<%
}else{
        String tempResultreturnp267 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment266mtemp));
        %>
        <%= tempResultreturnp267 %>
        <%
}
break;
case 271:
        gotMethod = true;
        String membershipId_46id=  request.getParameter("membershipId274");
        int membershipId_46idTemp  = Integer.parseInt(membershipId_46id);
        String userId_47id=  request.getParameter("userId276");
            java.lang.String userId_47idTemp = null;
        if(!userId_47id.equals("")){
         userId_47idTemp  = userId_47id;
        }
        String firstName_48id=  request.getParameter("firstName278");
            java.lang.String firstName_48idTemp = null;
        if(!firstName_48id.equals("")){
         firstName_48idTemp  = firstName_48id;
        }
        String lastName_49id=  request.getParameter("lastName280");
            java.lang.String lastName_49idTemp = null;
        if(!lastName_49id.equals("")){
         lastName_49idTemp  = lastName_49id;
        }
        String address_50id=  request.getParameter("address282");
            java.lang.String address_50idTemp = null;
        if(!address_50id.equals("")){
         address_50idTemp  = address_50id;
        }
        String city_51id=  request.getParameter("city284");
            java.lang.String city_51idTemp = null;
        if(!city_51id.equals("")){
         city_51idTemp  = city_51id;
        }
        String state_52id=  request.getParameter("state286");
            java.lang.String state_52idTemp = null;
        if(!state_52id.equals("")){
         state_52idTemp  = state_52id;
        }
        String zipCode_53id=  request.getParameter("zipCode288");
            java.lang.String zipCode_53idTemp = null;
        if(!zipCode_53id.equals("")){
         zipCode_53idTemp  = zipCode_53id;
        }
        String membershipType_54id=  request.getParameter("membershipType290");
            java.lang.String membershipType_54idTemp = null;
        if(!membershipType_54id.equals("")){
         membershipType_54idTemp  = membershipType_54id;
        }
        String creditCardNumber_55id=  request.getParameter("creditCardNumber292");
            java.lang.String creditCardNumber_55idTemp = null;
        if(!creditCardNumber_55id.equals("")){
         creditCardNumber_55idTemp  = creditCardNumber_55id;
        }
        java.lang.String updateUserInfo271mtemp = sampleServiceProxyid.updateUserInfo(membershipId_46idTemp,userId_47idTemp,firstName_48idTemp,lastName_49idTemp,address_50idTemp,city_51idTemp,state_52idTemp,zipCode_53idTemp,membershipType_54idTemp,creditCardNumber_55idTemp);
if(updateUserInfo271mtemp == null){
%>
<%=updateUserInfo271mtemp %>
<%
}else{
        String tempResultreturnp272 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo271mtemp));
        %>
        <%= tempResultreturnp272 %>
        <%
}
break;
case 294:
        gotMethod = true;
        String membershipId_56id=  request.getParameter("membershipId297");
            java.lang.String membershipId_56idTemp = null;
        if(!membershipId_56id.equals("")){
         membershipId_56idTemp  = membershipId_56id;
        }
        String userId_57id=  request.getParameter("userId299");
            java.lang.String userId_57idTemp = null;
        if(!userId_57id.equals("")){
         userId_57idTemp  = userId_57id;
        }
        String membershipType_58id=  request.getParameter("membershipType301");
            java.lang.String membershipType_58idTemp = null;
        if(!membershipType_58id.equals("")){
         membershipType_58idTemp  = membershipType_58id;
        }
        String startDate_59id=  request.getParameter("startDate303");
            java.lang.String startDate_59idTemp = null;
        if(!startDate_59id.equals("")){
         startDate_59idTemp  = startDate_59id;
        }
        String firstName_60id=  request.getParameter("firstName305");
            java.lang.String firstName_60idTemp = null;
        if(!firstName_60id.equals("")){
         firstName_60idTemp  = firstName_60id;
        }
        String lastName_61id=  request.getParameter("lastName307");
            java.lang.String lastName_61idTemp = null;
        if(!lastName_61id.equals("")){
         lastName_61idTemp  = lastName_61id;
        }
        String address_62id=  request.getParameter("address309");
            java.lang.String address_62idTemp = null;
        if(!address_62id.equals("")){
         address_62idTemp  = address_62id;
        }
        String city_63id=  request.getParameter("city311");
            java.lang.String city_63idTemp = null;
        if(!city_63id.equals("")){
         city_63idTemp  = city_63id;
        }
        String state_64id=  request.getParameter("state313");
            java.lang.String state_64idTemp = null;
        if(!state_64id.equals("")){
         state_64idTemp  = state_64id;
        }
        String zipCode_65id=  request.getParameter("zipCode315");
            java.lang.String zipCode_65idTemp = null;
        if(!zipCode_65id.equals("")){
         zipCode_65idTemp  = zipCode_65id;
        }
        edu.sjsu.videolibrary.model.User[] searchUser294mtemp = sampleServiceProxyid.searchUser(membershipId_56idTemp,userId_57idTemp,membershipType_58idTemp,startDate_59idTemp,firstName_60idTemp,lastName_61idTemp,address_62idTemp,city_63idTemp,state_64idTemp,zipCode_65idTemp);
if(searchUser294mtemp == null){
%>
<%=searchUser294mtemp %>
<%
}else{
        String tempreturnp295 = null;
        if(searchUser294mtemp != null){
        java.util.List listreturnp295= java.util.Arrays.asList(searchUser294mtemp);
        tempreturnp295 = listreturnp295.toString();
        }
        %>
        <%=tempreturnp295%>
        <%
}
break;
case 317:
        gotMethod = true;
        String membershipId_66id=  request.getParameter("membershipId320");
        int membershipId_66idTemp  = Integer.parseInt(membershipId_66id);
        String oldPassword_67id=  request.getParameter("oldPassword322");
            java.lang.String oldPassword_67idTemp = null;
        if(!oldPassword_67id.equals("")){
         oldPassword_67idTemp  = oldPassword_67id;
        }
        String newPassword_68id=  request.getParameter("newPassword324");
            java.lang.String newPassword_68idTemp = null;
        if(!newPassword_68id.equals("")){
         newPassword_68idTemp  = newPassword_68id;
        }
        java.lang.String updatePassword317mtemp = sampleServiceProxyid.updatePassword(membershipId_66idTemp,oldPassword_67idTemp,newPassword_68idTemp);
if(updatePassword317mtemp == null){
%>
<%=updatePassword317mtemp %>
<%
}else{
        String tempResultreturnp318 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword317mtemp));
        %>
        <%= tempResultreturnp318 %>
        <%
}
break;
case 326:
        gotMethod = true;
        String movieId_69id=  request.getParameter("movieId329");
        int movieId_69idTemp  = Integer.parseInt(movieId_69id);
        String movieName_70id=  request.getParameter("movieName331");
            java.lang.String movieName_70idTemp = null;
        if(!movieName_70id.equals("")){
         movieName_70idTemp  = movieName_70id;
        }
        String movieBanner_71id=  request.getParameter("movieBanner333");
            java.lang.String movieBanner_71idTemp = null;
        if(!movieBanner_71id.equals("")){
         movieBanner_71idTemp  = movieBanner_71id;
        }
        String releaseDate_72id=  request.getParameter("releaseDate335");
            java.lang.String releaseDate_72idTemp = null;
        if(!releaseDate_72id.equals("")){
         releaseDate_72idTemp  = releaseDate_72id;
        }
        String availableCopies_73id=  request.getParameter("availableCopies337");
        int availableCopies_73idTemp  = Integer.parseInt(availableCopies_73id);
        String categoryId_74id=  request.getParameter("categoryId339");
        int categoryId_74idTemp  = Integer.parseInt(categoryId_74id);
        java.lang.String updateMovieInfo326mtemp = sampleServiceProxyid.updateMovieInfo(movieId_69idTemp,movieName_70idTemp,movieBanner_71idTemp,releaseDate_72idTemp,availableCopies_73idTemp,categoryId_74idTemp);
if(updateMovieInfo326mtemp == null){
%>
<%=updateMovieInfo326mtemp %>
<%
}else{
        String tempResultreturnp327 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo326mtemp));
        %>
        <%= tempResultreturnp327 %>
        <%
}
break;
case 341:
        gotMethod = true;
        String membershipId_75id=  request.getParameter("membershipId344");
        int membershipId_75idTemp  = Integer.parseInt(membershipId_75id);
        String month_76id=  request.getParameter("month346");
        int month_76idTemp  = Integer.parseInt(month_76id);
        String year_77id=  request.getParameter("year348");
        int year_77idTemp  = Integer.parseInt(year_77id);
        java.lang.String generateMonthlyStatement341mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_75idTemp,month_76idTemp,year_77idTemp);
if(generateMonthlyStatement341mtemp == null){
%>
<%=generateMonthlyStatement341mtemp %>
<%
}else{
        String tempResultreturnp342 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement341mtemp));
        %>
        <%= tempResultreturnp342 %>
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
        String adminId_89id=  request.getParameter("adminId412");
            java.lang.String adminId_89idTemp = null;
        if(!adminId_89id.equals("")){
         adminId_89idTemp  = adminId_89id;
        }
        edu.sjsu.videolibrary.model.Admin displayAdminInformation399mtemp = sampleServiceProxyid.displayAdminInformation(adminId_89idTemp);
if(displayAdminInformation399mtemp == null){
%>
<%=displayAdminInformation399mtemp %>
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
if(displayAdminInformation399mtemp != null){
java.lang.String typepassword402 = displayAdminInformation399mtemp.getPassword();
        String tempResultpassword402 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword402));
        %>
        <%= tempResultpassword402 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayAdminInformation399mtemp != null){
java.lang.String typelastName404 = displayAdminInformation399mtemp.getLastName();
        String tempResultlastName404 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName404));
        %>
        <%= tempResultlastName404 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayAdminInformation399mtemp != null){
java.lang.String typefirstName406 = displayAdminInformation399mtemp.getFirstName();
        String tempResultfirstName406 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName406));
        %>
        <%= tempResultfirstName406 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(displayAdminInformation399mtemp != null){
%>
<%=displayAdminInformation399mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(displayAdminInformation399mtemp != null){
java.lang.String typeadminId410 = displayAdminInformation399mtemp.getAdminId();
        String tempResultadminId410 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId410));
        %>
        <%= tempResultadminId410 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 414:
        gotMethod = true;
        String adminId_90id=  request.getParameter("adminId417");
            java.lang.String adminId_90idTemp = null;
        if(!adminId_90id.equals("")){
         adminId_90idTemp  = adminId_90id;
        }
        String firstName_91id=  request.getParameter("firstName419");
            java.lang.String firstName_91idTemp = null;
        if(!firstName_91id.equals("")){
         firstName_91idTemp  = firstName_91id;
        }
        String lastName_92id=  request.getParameter("lastName421");
            java.lang.String lastName_92idTemp = null;
        if(!lastName_92id.equals("")){
         lastName_92idTemp  = lastName_92id;
        }
        String password_93id=  request.getParameter("password423");
            java.lang.String password_93idTemp = null;
        if(!password_93id.equals("")){
         password_93idTemp  = password_93id;
        }
        java.lang.String updateAdminInfo414mtemp = sampleServiceProxyid.updateAdminInfo(adminId_90idTemp,firstName_91idTemp,lastName_92idTemp,password_93idTemp);
if(updateAdminInfo414mtemp == null){
%>
<%=updateAdminInfo414mtemp %>
<%
}else{
        String tempResultreturnp415 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateAdminInfo414mtemp));
        %>
        <%= tempResultreturnp415 %>
        <%
}
break;
case 425:
        gotMethod = true;
        String membershipId_94id=  request.getParameter("membershipId428");
        int membershipId_94idTemp  = Integer.parseInt(membershipId_94id);
        String newPassword_95id=  request.getParameter("newPassword430");
            java.lang.String newPassword_95idTemp = null;
        if(!newPassword_95id.equals("")){
         newPassword_95idTemp  = newPassword_95id;
        }
        java.lang.String updateUserPassword425mtemp = sampleServiceProxyid.updateUserPassword(membershipId_94idTemp,newPassword_95idTemp);
if(updateUserPassword425mtemp == null){
%>
<%=updateUserPassword425mtemp %>
<%
}else{
        String tempResultreturnp426 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserPassword425mtemp));
        %>
        <%= tempResultreturnp426 %>
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