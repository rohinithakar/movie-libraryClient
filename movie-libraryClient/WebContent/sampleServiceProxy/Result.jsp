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
        java.lang.String makeMonthlyPayment261mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_44idTemp);
if(makeMonthlyPayment261mtemp == null){
%>
<%=makeMonthlyPayment261mtemp %>
<%
}else{
        String tempResultreturnp262 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment261mtemp));
        %>
        <%= tempResultreturnp262 %>
        <%
}
break;
case 266:
        gotMethod = true;
        String membershipId_45id=  request.getParameter("membershipId269");
        int membershipId_45idTemp  = Integer.parseInt(membershipId_45id);
        String userId_46id=  request.getParameter("userId271");
            java.lang.String userId_46idTemp = null;
        if(!userId_46id.equals("")){
         userId_46idTemp  = userId_46id;
        }
        String firstName_47id=  request.getParameter("firstName273");
            java.lang.String firstName_47idTemp = null;
        if(!firstName_47id.equals("")){
         firstName_47idTemp  = firstName_47id;
        }
        String lastName_48id=  request.getParameter("lastName275");
            java.lang.String lastName_48idTemp = null;
        if(!lastName_48id.equals("")){
         lastName_48idTemp  = lastName_48id;
        }
        String address_49id=  request.getParameter("address277");
            java.lang.String address_49idTemp = null;
        if(!address_49id.equals("")){
         address_49idTemp  = address_49id;
        }
        String city_50id=  request.getParameter("city279");
            java.lang.String city_50idTemp = null;
        if(!city_50id.equals("")){
         city_50idTemp  = city_50id;
        }
        String state_51id=  request.getParameter("state281");
            java.lang.String state_51idTemp = null;
        if(!state_51id.equals("")){
         state_51idTemp  = state_51id;
        }
        String zipCode_52id=  request.getParameter("zipCode283");
            java.lang.String zipCode_52idTemp = null;
        if(!zipCode_52id.equals("")){
         zipCode_52idTemp  = zipCode_52id;
        }
        String membershipType_53id=  request.getParameter("membershipType285");
            java.lang.String membershipType_53idTemp = null;
        if(!membershipType_53id.equals("")){
         membershipType_53idTemp  = membershipType_53id;
        }
        String creditCardNumber_54id=  request.getParameter("creditCardNumber287");
            java.lang.String creditCardNumber_54idTemp = null;
        if(!creditCardNumber_54id.equals("")){
         creditCardNumber_54idTemp  = creditCardNumber_54id;
        }
        java.lang.String updateUserInfo266mtemp = sampleServiceProxyid.updateUserInfo(membershipId_45idTemp,userId_46idTemp,firstName_47idTemp,lastName_48idTemp,address_49idTemp,city_50idTemp,state_51idTemp,zipCode_52idTemp,membershipType_53idTemp,creditCardNumber_54idTemp);
if(updateUserInfo266mtemp == null){
%>
<%=updateUserInfo266mtemp %>
<%
}else{
        String tempResultreturnp267 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo266mtemp));
        %>
        <%= tempResultreturnp267 %>
        <%
}
break;
case 289:
        gotMethod = true;
        String membershipId_55id=  request.getParameter("membershipId292");
            java.lang.String membershipId_55idTemp = null;
        if(!membershipId_55id.equals("")){
         membershipId_55idTemp  = membershipId_55id;
        }
        String userId_56id=  request.getParameter("userId294");
            java.lang.String userId_56idTemp = null;
        if(!userId_56id.equals("")){
         userId_56idTemp  = userId_56id;
        }
        String membershipType_57id=  request.getParameter("membershipType296");
            java.lang.String membershipType_57idTemp = null;
        if(!membershipType_57id.equals("")){
         membershipType_57idTemp  = membershipType_57id;
        }
        String startDate_58id=  request.getParameter("startDate298");
            java.lang.String startDate_58idTemp = null;
        if(!startDate_58id.equals("")){
         startDate_58idTemp  = startDate_58id;
        }
        String firstName_59id=  request.getParameter("firstName300");
            java.lang.String firstName_59idTemp = null;
        if(!firstName_59id.equals("")){
         firstName_59idTemp  = firstName_59id;
        }
        String lastName_60id=  request.getParameter("lastName302");
            java.lang.String lastName_60idTemp = null;
        if(!lastName_60id.equals("")){
         lastName_60idTemp  = lastName_60id;
        }
        String address_61id=  request.getParameter("address304");
            java.lang.String address_61idTemp = null;
        if(!address_61id.equals("")){
         address_61idTemp  = address_61id;
        }
        String city_62id=  request.getParameter("city306");
            java.lang.String city_62idTemp = null;
        if(!city_62id.equals("")){
         city_62idTemp  = city_62id;
        }
        String state_63id=  request.getParameter("state308");
            java.lang.String state_63idTemp = null;
        if(!state_63id.equals("")){
         state_63idTemp  = state_63id;
        }
        String zipCode_64id=  request.getParameter("zipCode310");
            java.lang.String zipCode_64idTemp = null;
        if(!zipCode_64id.equals("")){
         zipCode_64idTemp  = zipCode_64id;
        }
        edu.sjsu.videolibrary.model.User[] searchUser289mtemp = sampleServiceProxyid.searchUser(membershipId_55idTemp,userId_56idTemp,membershipType_57idTemp,startDate_58idTemp,firstName_59idTemp,lastName_60idTemp,address_61idTemp,city_62idTemp,state_63idTemp,zipCode_64idTemp);
if(searchUser289mtemp == null){
%>
<%=searchUser289mtemp %>
<%
}else{
        String tempreturnp290 = null;
        if(searchUser289mtemp != null){
        java.util.List listreturnp290= java.util.Arrays.asList(searchUser289mtemp);
        tempreturnp290 = listreturnp290.toString();
        }
        %>
        <%=tempreturnp290%>
        <%
}
break;
case 312:
        gotMethod = true;
        String membershipId_65id=  request.getParameter("membershipId315");
        int membershipId_65idTemp  = Integer.parseInt(membershipId_65id);
        String oldPassword_66id=  request.getParameter("oldPassword317");
            java.lang.String oldPassword_66idTemp = null;
        if(!oldPassword_66id.equals("")){
         oldPassword_66idTemp  = oldPassword_66id;
        }
        String newPassword_67id=  request.getParameter("newPassword319");
            java.lang.String newPassword_67idTemp = null;
        if(!newPassword_67id.equals("")){
         newPassword_67idTemp  = newPassword_67id;
        }
        java.lang.String updatePassword312mtemp = sampleServiceProxyid.updatePassword(membershipId_65idTemp,oldPassword_66idTemp,newPassword_67idTemp);
if(updatePassword312mtemp == null){
%>
<%=updatePassword312mtemp %>
<%
}else{
        String tempResultreturnp313 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword312mtemp));
        %>
        <%= tempResultreturnp313 %>
        <%
}
break;
case 321:
        gotMethod = true;
        String movieId_68id=  request.getParameter("movieId324");
        int movieId_68idTemp  = Integer.parseInt(movieId_68id);
        String movieName_69id=  request.getParameter("movieName326");
            java.lang.String movieName_69idTemp = null;
        if(!movieName_69id.equals("")){
         movieName_69idTemp  = movieName_69id;
        }
        String movieBanner_70id=  request.getParameter("movieBanner328");
            java.lang.String movieBanner_70idTemp = null;
        if(!movieBanner_70id.equals("")){
         movieBanner_70idTemp  = movieBanner_70id;
        }
        String releaseDate_71id=  request.getParameter("releaseDate330");
            java.lang.String releaseDate_71idTemp = null;
        if(!releaseDate_71id.equals("")){
         releaseDate_71idTemp  = releaseDate_71id;
        }
        String availableCopies_72id=  request.getParameter("availableCopies332");
        int availableCopies_72idTemp  = Integer.parseInt(availableCopies_72id);
        String categoryId_73id=  request.getParameter("categoryId334");
        int categoryId_73idTemp  = Integer.parseInt(categoryId_73id);
        java.lang.String updateMovieInfo321mtemp = sampleServiceProxyid.updateMovieInfo(movieId_68idTemp,movieName_69idTemp,movieBanner_70idTemp,releaseDate_71idTemp,availableCopies_72idTemp,categoryId_73idTemp);
if(updateMovieInfo321mtemp == null){
%>
<%=updateMovieInfo321mtemp %>
<%
}else{
        String tempResultreturnp322 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo321mtemp));
        %>
        <%= tempResultreturnp322 %>
        <%
}
break;
case 336:
        gotMethod = true;
        String membershipId_74id=  request.getParameter("membershipId339");
        int membershipId_74idTemp  = Integer.parseInt(membershipId_74id);
        String month_75id=  request.getParameter("month341");
        int month_75idTemp  = Integer.parseInt(month_75id);
        String year_76id=  request.getParameter("year343");
        int year_76idTemp  = Integer.parseInt(year_76id);
        java.lang.String generateMonthlyStatement336mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_74idTemp,month_75idTemp,year_76idTemp);
if(generateMonthlyStatement336mtemp == null){
%>
<%=generateMonthlyStatement336mtemp %>
<%
}else{
        String tempResultreturnp337 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement336mtemp));
        %>
        <%= tempResultreturnp337 %>
        <%
}
break;
case 345:
        gotMethod = true;
        String membershipId_77id=  request.getParameter("membershipId348");
        int membershipId_77idTemp  = Integer.parseInt(membershipId_77id);
        String month_78id=  request.getParameter("month350");
        int month_78idTemp  = Integer.parseInt(month_78id);
        String year_79id=  request.getParameter("year352");
        int year_79idTemp  = Integer.parseInt(year_79id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement345mtemp = sampleServiceProxyid.viewStatement(membershipId_77idTemp,month_78idTemp,year_79idTemp);
if(viewStatement345mtemp == null){
%>
<%=viewStatement345mtemp %>
<%
}else{
        String tempreturnp346 = null;
        if(viewStatement345mtemp != null){
        java.util.List listreturnp346= java.util.Arrays.asList(viewStatement345mtemp);
        tempreturnp346 = listreturnp346.toString();
        }
        %>
        <%=tempreturnp346%>
        <%
}
break;
case 354:
        gotMethod = true;
        String membershipId_80id=  request.getParameter("membershipId363");
        int membershipId_80idTemp  = Integer.parseInt(membershipId_80id);
        String month_81id=  request.getParameter("month365");
        int month_81idTemp  = Integer.parseInt(month_81id);
        String year_82id=  request.getParameter("year367");
        int year_82idTemp  = Integer.parseInt(year_82id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember354mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_80idTemp,month_81idTemp,year_82idTemp);
if(generateMonthlyBillForPremiumMember354mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember354mtemp %>
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
if(generateMonthlyBillForPremiumMember354mtemp != null){
java.lang.String typepaymentStatus357 = generateMonthlyBillForPremiumMember354mtemp.getPaymentStatus();
        String tempResultpaymentStatus357 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus357));
        %>
        <%= tempResultpaymentStatus357 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember354mtemp != null){
java.lang.String typepaymentDate359 = generateMonthlyBillForPremiumMember354mtemp.getPaymentDate();
        String tempResultpaymentDate359 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate359));
        %>
        <%= tempResultpaymentDate359 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember354mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember354mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 369:
        gotMethod = true;
        double getRentAmountforMovie369mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp370 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie369mtemp));
        %>
        <%= tempResultreturnp370 %>
        <%
break;
case 372:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember372mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp373 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember372mtemp));
        %>
        <%= tempResultreturnp373 %>
        <%
break;
case 375:
        gotMethod = true;
        java.lang.String[] listCategories375mtemp = sampleServiceProxyid.listCategories();
if(listCategories375mtemp == null){
%>
<%=listCategories375mtemp %>
<%
}else{
        String tempreturnp376 = null;
        if(listCategories375mtemp != null){
        java.util.List listreturnp376= java.util.Arrays.asList(listCategories375mtemp);
        tempreturnp376 = listreturnp376.toString();
        }
        %>
        <%=tempreturnp376%>
        <%
}
break;
case 378:
        gotMethod = true;
        String adminId_83id=  request.getParameter("adminId391");
            java.lang.String adminId_83idTemp = null;
        if(!adminId_83id.equals("")){
         adminId_83idTemp  = adminId_83id;
        }
        edu.sjsu.videolibrary.model.Admin displayAdminInformation378mtemp = sampleServiceProxyid.displayAdminInformation(adminId_83idTemp);
if(displayAdminInformation378mtemp == null){
%>
<%=displayAdminInformation378mtemp %>
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
if(displayAdminInformation378mtemp != null){
java.lang.String typepassword381 = displayAdminInformation378mtemp.getPassword();
        String tempResultpassword381 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword381));
        %>
        <%= tempResultpassword381 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayAdminInformation378mtemp != null){
java.lang.String typelastName383 = displayAdminInformation378mtemp.getLastName();
        String tempResultlastName383 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName383));
        %>
        <%= tempResultlastName383 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayAdminInformation378mtemp != null){
java.lang.String typefirstName385 = displayAdminInformation378mtemp.getFirstName();
        String tempResultfirstName385 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName385));
        %>
        <%= tempResultfirstName385 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(displayAdminInformation378mtemp != null){
%>
<%=displayAdminInformation378mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(displayAdminInformation378mtemp != null){
java.lang.String typeadminId389 = displayAdminInformation378mtemp.getAdminId();
        String tempResultadminId389 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId389));
        %>
        <%= tempResultadminId389 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 393:
        gotMethod = true;
        String adminId_84id=  request.getParameter("adminId396");
            java.lang.String adminId_84idTemp = null;
        if(!adminId_84id.equals("")){
         adminId_84idTemp  = adminId_84id;
        }
        String firstName_85id=  request.getParameter("firstName398");
            java.lang.String firstName_85idTemp = null;
        if(!firstName_85id.equals("")){
         firstName_85idTemp  = firstName_85id;
        }
        String lastName_86id=  request.getParameter("lastName400");
            java.lang.String lastName_86idTemp = null;
        if(!lastName_86id.equals("")){
         lastName_86idTemp  = lastName_86id;
        }
        String password_87id=  request.getParameter("password402");
            java.lang.String password_87idTemp = null;
        if(!password_87id.equals("")){
         password_87idTemp  = password_87id;
        }
        java.lang.String updateAdminInfo393mtemp = sampleServiceProxyid.updateAdminInfo(adminId_84idTemp,firstName_85idTemp,lastName_86idTemp,password_87idTemp);
if(updateAdminInfo393mtemp == null){
%>
<%=updateAdminInfo393mtemp %>
<%
}else{
        String tempResultreturnp394 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateAdminInfo393mtemp));
        %>
        <%= tempResultreturnp394 %>
        <%
}
break;
case 404:
        gotMethod = true;
        String membershipId_88id=  request.getParameter("membershipId407");
        int membershipId_88idTemp  = Integer.parseInt(membershipId_88id);
        String newPassword_89id=  request.getParameter("newPassword409");
            java.lang.String newPassword_89idTemp = null;
        if(!newPassword_89id.equals("")){
         newPassword_89idTemp  = newPassword_89id;
        }
        java.lang.String updateUserPassword404mtemp = sampleServiceProxyid.updateUserPassword(membershipId_88idTemp,newPassword_89idTemp);
if(updateUserPassword404mtemp == null){
%>
<%=updateUserPassword404mtemp %>
<%
}else{
        String tempResultreturnp405 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserPassword404mtemp));
        %>
        <%= tempResultreturnp405 %>
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