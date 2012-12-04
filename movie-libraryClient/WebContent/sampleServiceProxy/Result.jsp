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
        String type_29id=  request.getParameter("type151");
            java.lang.String type_29idTemp = null;
        if(!type_29id.equals("")){
         type_29idTemp  = type_29id;
        }
        String offset_30id=  request.getParameter("offset153");
        int offset_30idTemp  = Integer.parseInt(offset_30id);
        String count_31id=  request.getParameter("count155");
        int count_31idTemp  = Integer.parseInt(count_31id);
        edu.sjsu.videolibrary.model.User[] viewMembersByPage148mtemp = sampleServiceProxyid.viewMembersByPage(type_29idTemp,offset_30idTemp,count_31idTemp);
if(viewMembersByPage148mtemp == null){
%>
<%=viewMembersByPage148mtemp %>
<%
}else{
        String tempreturnp149 = null;
        if(viewMembersByPage148mtemp != null){
        java.util.List listreturnp149= java.util.Arrays.asList(viewMembersByPage148mtemp);
        tempreturnp149 = listreturnp149.toString();
        }
        %>
        <%=tempreturnp149%>
        <%
}
break;
case 157:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Admin[] viewAdmins157mtemp = sampleServiceProxyid.viewAdmins();
if(viewAdmins157mtemp == null){
%>
<%=viewAdmins157mtemp %>
<%
}else{
        String tempreturnp158 = null;
        if(viewAdmins157mtemp != null){
        java.util.List listreturnp158= java.util.Arrays.asList(viewAdmins157mtemp);
        tempreturnp158 = listreturnp158.toString();
        }
        %>
        <%=tempreturnp158%>
        <%
}
break;
case 160:
        gotMethod = true;
        String userId_32id=  request.getParameter("userId163");
            java.lang.String userId_32idTemp = null;
        if(!userId_32id.equals("")){
         userId_32idTemp  = userId_32id;
        }
        java.lang.String deleteUserAccount160mtemp = sampleServiceProxyid.deleteUserAccount(userId_32idTemp);
if(deleteUserAccount160mtemp == null){
%>
<%=deleteUserAccount160mtemp %>
<%
}else{
        String tempResultreturnp161 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount160mtemp));
        %>
        <%= tempResultreturnp161 %>
        <%
}
break;
case 165:
        gotMethod = true;
        String userId_33id=  request.getParameter("userId168");
            java.lang.String userId_33idTemp = null;
        if(!userId_33id.equals("")){
         userId_33idTemp  = userId_33id;
        }
        java.lang.String deleteAdminAccount165mtemp = sampleServiceProxyid.deleteAdminAccount(userId_33idTemp);
if(deleteAdminAccount165mtemp == null){
%>
<%=deleteAdminAccount165mtemp %>
<%
}else{
        String tempResultreturnp166 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount165mtemp));
        %>
        <%= tempResultreturnp166 %>
        <%
}
break;
case 170:
        gotMethod = true;
        String movieName_34id=  request.getParameter("movieName173");
            java.lang.String movieName_34idTemp = null;
        if(!movieName_34id.equals("")){
         movieName_34idTemp  = movieName_34id;
        }
        String movieBanner_35id=  request.getParameter("movieBanner175");
            java.lang.String movieBanner_35idTemp = null;
        if(!movieBanner_35id.equals("")){
         movieBanner_35idTemp  = movieBanner_35id;
        }
        String releaseDate_36id=  request.getParameter("releaseDate177");
            java.lang.String releaseDate_36idTemp = null;
        if(!releaseDate_36id.equals("")){
         releaseDate_36idTemp  = releaseDate_36id;
        }
        String availableCopies_37id=  request.getParameter("availableCopies179");
        int availableCopies_37idTemp  = Integer.parseInt(availableCopies_37id);
        String categoryId_38id=  request.getParameter("categoryId181");
        int categoryId_38idTemp  = Integer.parseInt(categoryId_38id);
        java.lang.String createNewMovie170mtemp = sampleServiceProxyid.createNewMovie(movieName_34idTemp,movieBanner_35idTemp,releaseDate_36idTemp,availableCopies_37idTemp,categoryId_38idTemp);
if(createNewMovie170mtemp == null){
%>
<%=createNewMovie170mtemp %>
<%
}else{
        String tempResultreturnp171 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie170mtemp));
        %>
        <%= tempResultreturnp171 %>
        <%
}
break;
case 183:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies183mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies183mtemp == null){
%>
<%=listAllMovies183mtemp %>
<%
}else{
        String tempreturnp184 = null;
        if(listAllMovies183mtemp != null){
        java.util.List listreturnp184= java.util.Arrays.asList(listAllMovies183mtemp);
        tempreturnp184 = listreturnp184.toString();
        }
        %>
        <%=tempreturnp184%>
        <%
}
break;
case 186:
        gotMethod = true;
        String movieName_39id=  request.getParameter("movieName189");
            java.lang.String movieName_39idTemp = null;
        if(!movieName_39id.equals("")){
         movieName_39idTemp  = movieName_39id;
        }
        String movieBanner_40id=  request.getParameter("movieBanner191");
            java.lang.String movieBanner_40idTemp = null;
        if(!movieBanner_40id.equals("")){
         movieBanner_40idTemp  = movieBanner_40id;
        }
        String releaseDate_41id=  request.getParameter("releaseDate193");
            java.lang.String releaseDate_41idTemp = null;
        if(!releaseDate_41id.equals("")){
         releaseDate_41idTemp  = releaseDate_41id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchMovie186mtemp = sampleServiceProxyid.searchMovie(movieName_39idTemp,movieBanner_40idTemp,releaseDate_41idTemp);
if(searchMovie186mtemp == null){
%>
<%=searchMovie186mtemp %>
<%
}else{
        String tempreturnp187 = null;
        if(searchMovie186mtemp != null){
        java.util.List listreturnp187= java.util.Arrays.asList(searchMovie186mtemp);
        tempreturnp187 = listreturnp187.toString();
        }
        %>
        <%=tempreturnp187%>
        <%
}
break;
case 195:
        gotMethod = true;
        String categoryName_42id=  request.getParameter("categoryName198");
            java.lang.String categoryName_42idTemp = null;
        if(!categoryName_42id.equals("")){
         categoryName_42idTemp  = categoryName_42id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory195mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_42idTemp);
if(listMoviesByCategory195mtemp == null){
%>
<%=listMoviesByCategory195mtemp %>
<%
}else{
        String tempreturnp196 = null;
        if(listMoviesByCategory195mtemp != null){
        java.util.List listreturnp196= java.util.Arrays.asList(listMoviesByCategory195mtemp);
        tempreturnp196 = listreturnp196.toString();
        }
        %>
        <%=tempreturnp196%>
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
        java.lang.String generateMonthlyStatement350mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_78idTemp,month_79idTemp,year_80idTemp);
if(generateMonthlyStatement350mtemp == null){
%>
<%=generateMonthlyStatement350mtemp %>
<%
}else{
        String tempResultreturnp351 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement350mtemp));
        %>
        <%= tempResultreturnp351 %>
        <%
}
break;
case 359:
        gotMethod = true;
        String membershipId_81id=  request.getParameter("membershipId362");
        int membershipId_81idTemp  = Integer.parseInt(membershipId_81id);
        String month_82id=  request.getParameter("month364");
        int month_82idTemp  = Integer.parseInt(month_82id);
        String year_83id=  request.getParameter("year366");
        int year_83idTemp  = Integer.parseInt(year_83id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement359mtemp = sampleServiceProxyid.viewStatement(membershipId_81idTemp,month_82idTemp,year_83idTemp);
if(viewStatement359mtemp == null){
%>
<%=viewStatement359mtemp %>
<%
}else{
        String tempreturnp360 = null;
        if(viewStatement359mtemp != null){
        java.util.List listreturnp360= java.util.Arrays.asList(viewStatement359mtemp);
        tempreturnp360 = listreturnp360.toString();
        }
        %>
        <%=tempreturnp360%>
        <%
}
break;
case 368:
        gotMethod = true;
        String membershipId_84id=  request.getParameter("membershipId377");
        int membershipId_84idTemp  = Integer.parseInt(membershipId_84id);
        String month_85id=  request.getParameter("month379");
        int month_85idTemp  = Integer.parseInt(month_85id);
        String year_86id=  request.getParameter("year381");
        int year_86idTemp  = Integer.parseInt(year_86id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember368mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_84idTemp,month_85idTemp,year_86idTemp);
if(generateMonthlyBillForPremiumMember368mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember368mtemp %>
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
if(generateMonthlyBillForPremiumMember368mtemp != null){
java.lang.String typepaymentStatus371 = generateMonthlyBillForPremiumMember368mtemp.getPaymentStatus();
        String tempResultpaymentStatus371 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus371));
        %>
        <%= tempResultpaymentStatus371 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember368mtemp != null){
java.lang.String typepaymentDate373 = generateMonthlyBillForPremiumMember368mtemp.getPaymentDate();
        String tempResultpaymentDate373 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate373));
        %>
        <%= tempResultpaymentDate373 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember368mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember368mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 383:
        gotMethod = true;
        double getRentAmountforMovie383mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp384 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie383mtemp));
        %>
        <%= tempResultreturnp384 %>
        <%
break;
case 386:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember386mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp387 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember386mtemp));
        %>
        <%= tempResultreturnp387 %>
        <%
break;
case 389:
        gotMethod = true;
        java.lang.String[] listCategories389mtemp = sampleServiceProxyid.listCategories();
if(listCategories389mtemp == null){
%>
<%=listCategories389mtemp %>
<%
}else{
        String tempreturnp390 = null;
        if(listCategories389mtemp != null){
        java.util.List listreturnp390= java.util.Arrays.asList(listCategories389mtemp);
        tempreturnp390 = listreturnp390.toString();
        }
        %>
        <%=tempreturnp390%>
        <%
}
break;
case 392:
        gotMethod = true;
        String categoryName_87id=  request.getParameter("categoryName395");
            java.lang.String categoryName_87idTemp = null;
        if(!categoryName_87id.equals("")){
         categoryName_87idTemp  = categoryName_87id;
        }
        String start_88id=  request.getParameter("start397");
        int start_88idTemp  = Integer.parseInt(start_88id);
        String stop_89id=  request.getParameter("stop399");
        int stop_89idTemp  = Integer.parseInt(stop_89id);
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategoryByPage392mtemp = sampleServiceProxyid.listMoviesByCategoryByPage(categoryName_87idTemp,start_88idTemp,stop_89idTemp);
if(listMoviesByCategoryByPage392mtemp == null){
%>
<%=listMoviesByCategoryByPage392mtemp %>
<%
}else{
        String tempreturnp393 = null;
        if(listMoviesByCategoryByPage392mtemp != null){
        java.util.List listreturnp393= java.util.Arrays.asList(listMoviesByCategoryByPage392mtemp);
        tempreturnp393 = listreturnp393.toString();
        }
        %>
        <%=tempreturnp393%>
        <%
}
break;
case 401:
        gotMethod = true;
        String start_90id=  request.getParameter("start404");
        int start_90idTemp  = Integer.parseInt(start_90id);
        String stop_91id=  request.getParameter("stop406");
        int stop_91idTemp  = Integer.parseInt(stop_91id);
        edu.sjsu.videolibrary.model.Movie[] listAllMoviesByPage401mtemp = sampleServiceProxyid.listAllMoviesByPage(start_90idTemp,stop_91idTemp);
if(listAllMoviesByPage401mtemp == null){
%>
<%=listAllMoviesByPage401mtemp %>
<%
}else{
        String tempreturnp402 = null;
        if(listAllMoviesByPage401mtemp != null){
        java.util.List listreturnp402= java.util.Arrays.asList(listAllMoviesByPage401mtemp);
        tempreturnp402 = listreturnp402.toString();
        }
        %>
        <%=tempreturnp402%>
        <%
}
break;
case 408:
        gotMethod = true;
        String membershipId_92id=  request.getParameter("membershipId411");
            java.lang.String membershipId_92idTemp = null;
        if(!membershipId_92id.equals("")){
         membershipId_92idTemp  = membershipId_92id;
        }
        String userId_93id=  request.getParameter("userId413");
            java.lang.String userId_93idTemp = null;
        if(!userId_93id.equals("")){
         userId_93idTemp  = userId_93id;
        }
        String membershipType_94id=  request.getParameter("membershipType415");
            java.lang.String membershipType_94idTemp = null;
        if(!membershipType_94id.equals("")){
         membershipType_94idTemp  = membershipType_94id;
        }
        String startDate_95id=  request.getParameter("startDate417");
            java.lang.String startDate_95idTemp = null;
        if(!startDate_95id.equals("")){
         startDate_95idTemp  = startDate_95id;
        }
        String firstName_96id=  request.getParameter("firstName419");
            java.lang.String firstName_96idTemp = null;
        if(!firstName_96id.equals("")){
         firstName_96idTemp  = firstName_96id;
        }
        String lastName_97id=  request.getParameter("lastName421");
            java.lang.String lastName_97idTemp = null;
        if(!lastName_97id.equals("")){
         lastName_97idTemp  = lastName_97id;
        }
        String address_98id=  request.getParameter("address423");
            java.lang.String address_98idTemp = null;
        if(!address_98id.equals("")){
         address_98idTemp  = address_98id;
        }
        String city_99id=  request.getParameter("city425");
            java.lang.String city_99idTemp = null;
        if(!city_99id.equals("")){
         city_99idTemp  = city_99id;
        }
        String state_100id=  request.getParameter("state427");
            java.lang.String state_100idTemp = null;
        if(!state_100id.equals("")){
         state_100idTemp  = state_100id;
        }
        String zipCode_101id=  request.getParameter("zipCode429");
            java.lang.String zipCode_101idTemp = null;
        if(!zipCode_101id.equals("")){
         zipCode_101idTemp  = zipCode_101id;
        }
        String offset_102id=  request.getParameter("offset431");
        int offset_102idTemp  = Integer.parseInt(offset_102id);
        String count_103id=  request.getParameter("count433");
        int count_103idTemp  = Integer.parseInt(count_103id);
        edu.sjsu.videolibrary.model.User[] searchUserByPage408mtemp = sampleServiceProxyid.searchUserByPage(membershipId_92idTemp,userId_93idTemp,membershipType_94idTemp,startDate_95idTemp,firstName_96idTemp,lastName_97idTemp,address_98idTemp,city_99idTemp,state_100idTemp,zipCode_101idTemp,offset_102idTemp,count_103idTemp);
if(searchUserByPage408mtemp == null){
%>
<%=searchUserByPage408mtemp %>
<%
}else{
        String tempreturnp409 = null;
        if(searchUserByPage408mtemp != null){
        java.util.List listreturnp409= java.util.Arrays.asList(searchUserByPage408mtemp);
        tempreturnp409 = listreturnp409.toString();
        }
        %>
        <%=tempreturnp409%>
        <%
}
break;
case 435:
        gotMethod = true;
        String adminId_104id=  request.getParameter("adminId448");
            java.lang.String adminId_104idTemp = null;
        if(!adminId_104id.equals("")){
         adminId_104idTemp  = adminId_104id;
        }
        edu.sjsu.videolibrary.model.Admin displayAdminInformation435mtemp = sampleServiceProxyid.displayAdminInformation(adminId_104idTemp);
if(displayAdminInformation435mtemp == null){
%>
<%=displayAdminInformation435mtemp %>
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
if(displayAdminInformation435mtemp != null){
java.lang.String typepassword438 = displayAdminInformation435mtemp.getPassword();
        String tempResultpassword438 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword438));
        %>
        <%= tempResultpassword438 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayAdminInformation435mtemp != null){
java.lang.String typelastName440 = displayAdminInformation435mtemp.getLastName();
        String tempResultlastName440 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName440));
        %>
        <%= tempResultlastName440 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayAdminInformation435mtemp != null){
java.lang.String typefirstName442 = displayAdminInformation435mtemp.getFirstName();
        String tempResultfirstName442 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName442));
        %>
        <%= tempResultfirstName442 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(displayAdminInformation435mtemp != null){
%>
<%=displayAdminInformation435mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(displayAdminInformation435mtemp != null){
java.lang.String typeadminId446 = displayAdminInformation435mtemp.getAdminId();
        String tempResultadminId446 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId446));
        %>
        <%= tempResultadminId446 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 450:
        gotMethod = true;
        String adminId_105id=  request.getParameter("adminId453");
            java.lang.String adminId_105idTemp = null;
        if(!adminId_105id.equals("")){
         adminId_105idTemp  = adminId_105id;
        }
        String firstName_106id=  request.getParameter("firstName455");
            java.lang.String firstName_106idTemp = null;
        if(!firstName_106id.equals("")){
         firstName_106idTemp  = firstName_106id;
        }
        String lastName_107id=  request.getParameter("lastName457");
            java.lang.String lastName_107idTemp = null;
        if(!lastName_107id.equals("")){
         lastName_107idTemp  = lastName_107id;
        }
        String password_108id=  request.getParameter("password459");
            java.lang.String password_108idTemp = null;
        if(!password_108id.equals("")){
         password_108idTemp  = password_108id;
        }
        java.lang.String updateAdminInfo450mtemp = sampleServiceProxyid.updateAdminInfo(adminId_105idTemp,firstName_106idTemp,lastName_107idTemp,password_108idTemp);
if(updateAdminInfo450mtemp == null){
%>
<%=updateAdminInfo450mtemp %>
<%
}else{
        String tempResultreturnp451 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateAdminInfo450mtemp));
        %>
        <%= tempResultreturnp451 %>
        <%
}
break;
case 461:
        gotMethod = true;
        String membershipId_109id=  request.getParameter("membershipId464");
        int membershipId_109idTemp  = Integer.parseInt(membershipId_109id);
        String newPassword_110id=  request.getParameter("newPassword466");
            java.lang.String newPassword_110idTemp = null;
        if(!newPassword_110id.equals("")){
         newPassword_110idTemp  = newPassword_110id;
        }
        java.lang.String updateUserPassword461mtemp = sampleServiceProxyid.updateUserPassword(membershipId_109idTemp,newPassword_110idTemp);
if(updateUserPassword461mtemp == null){
%>
<%=updateUserPassword461mtemp %>
<%
}else{
        String tempResultreturnp462 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserPassword461mtemp));
        %>
        <%= tempResultreturnp462 %>
        <%
}
break;
case 468:
        gotMethod = true;
        String movieName_111id=  request.getParameter("movieName471");
            java.lang.String movieName_111idTemp = null;
        if(!movieName_111id.equals("")){
         movieName_111idTemp  = movieName_111id;
        }
        String movieBanner_112id=  request.getParameter("movieBanner473");
            java.lang.String movieBanner_112idTemp = null;
        if(!movieBanner_112id.equals("")){
         movieBanner_112idTemp  = movieBanner_112id;
        }
        String releaseDate_113id=  request.getParameter("releaseDate475");
            java.lang.String releaseDate_113idTemp = null;
        if(!releaseDate_113id.equals("")){
         releaseDate_113idTemp  = releaseDate_113id;
        }
        String start_114id=  request.getParameter("start477");
        int start_114idTemp  = Integer.parseInt(start_114id);
        String stop_115id=  request.getParameter("stop479");
        int stop_115idTemp  = Integer.parseInt(stop_115id);
        edu.sjsu.videolibrary.model.Movie[] searchMovieByPage468mtemp = sampleServiceProxyid.searchMovieByPage(movieName_111idTemp,movieBanner_112idTemp,releaseDate_113idTemp,start_114idTemp,stop_115idTemp);
if(searchMovieByPage468mtemp == null){
%>
<%=searchMovieByPage468mtemp %>
<%
}else{
        String tempreturnp469 = null;
        if(searchMovieByPage468mtemp != null){
        java.util.List listreturnp469= java.util.Arrays.asList(searchMovieByPage468mtemp);
        tempreturnp469 = listreturnp469.toString();
        }
        %>
        <%=tempreturnp469%>
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