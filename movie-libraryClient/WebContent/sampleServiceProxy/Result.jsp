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
        String membershipId_1id=  request.getParameter("membershipId22");
        int membershipId_1idTemp  = Integer.parseInt(membershipId_1id);
        String movieId_2id=  request.getParameter("movieId24");
        int movieId_2idTemp  = Integer.parseInt(movieId_2id);
        java.lang.String addItemsToCart19mtemp = sampleServiceProxyid.addItemsToCart(membershipId_1idTemp,movieId_2idTemp);
if(addItemsToCart19mtemp == null){
%>
<%=addItemsToCart19mtemp %>
<%
}else{
        String tempResultreturnp20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addItemsToCart19mtemp));
        %>
        <%= tempResultreturnp20 %>
        <%
}
break;
case 26:
        gotMethod = true;
        String movieId_3id=  request.getParameter("movieId29");
        int movieId_3idTemp  = Integer.parseInt(movieId_3id);
        String membershipId_4id=  request.getParameter("membershipId31");
        int membershipId_4idTemp  = Integer.parseInt(membershipId_4id);
        java.lang.String deleteMovieFromCart26mtemp = sampleServiceProxyid.deleteMovieFromCart(movieId_3idTemp,membershipId_4idTemp);
if(deleteMovieFromCart26mtemp == null){
%>
<%=deleteMovieFromCart26mtemp %>
<%
}else{
        String tempResultreturnp27 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovieFromCart26mtemp));
        %>
        <%= tempResultreturnp27 %>
        <%
}
break;
case 33:
        gotMethod = true;
        String membershipId_5id=  request.getParameter("membershipId36");
        int membershipId_5idTemp  = Integer.parseInt(membershipId_5id);
        edu.sjsu.videolibrary.model.ItemOnCart[] viewCart33mtemp = sampleServiceProxyid.viewCart(membershipId_5idTemp);
if(viewCart33mtemp == null){
%>
<%=viewCart33mtemp %>
<%
}else{
        String tempreturnp34 = null;
        if(viewCart33mtemp != null){
        java.util.List listreturnp34= java.util.Arrays.asList(viewCart33mtemp);
        tempreturnp34 = listreturnp34.toString();
        }
        %>
        <%=tempreturnp34%>
        <%
}
break;
case 38:
        gotMethod = true;
        String membershipId_6id=  request.getParameter("membershipId41");
        int membershipId_6idTemp  = Integer.parseInt(membershipId_6id);
        String creditCardNumber_7id=  request.getParameter("creditCardNumber43");
            java.lang.String creditCardNumber_7idTemp = null;
        if(!creditCardNumber_7id.equals("")){
         creditCardNumber_7idTemp  = creditCardNumber_7id;
        }
        java.lang.String checkOutMovieCart38mtemp = sampleServiceProxyid.checkOutMovieCart(membershipId_6idTemp,creditCardNumber_7idTemp);
if(checkOutMovieCart38mtemp == null){
%>
<%=checkOutMovieCart38mtemp %>
<%
}else{
        String tempResultreturnp39 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(checkOutMovieCart38mtemp));
        %>
        <%= tempResultreturnp39 %>
        <%
}
break;
case 45:
        gotMethod = true;
        String userId_8id=  request.getParameter("userId76");
            java.lang.String userId_8idTemp = null;
        if(!userId_8id.equals("")){
         userId_8idTemp  = userId_8id;
        }
        String password_9id=  request.getParameter("password78");
            java.lang.String password_9idTemp = null;
        if(!password_9id.equals("")){
         password_9idTemp  = password_9id;
        }
        String memType_10id=  request.getParameter("memType80");
            java.lang.String memType_10idTemp = null;
        if(!memType_10id.equals("")){
         memType_10idTemp  = memType_10id;
        }
        String firstName_11id=  request.getParameter("firstName82");
            java.lang.String firstName_11idTemp = null;
        if(!firstName_11id.equals("")){
         firstName_11idTemp  = firstName_11id;
        }
        String lastName_12id=  request.getParameter("lastName84");
            java.lang.String lastName_12idTemp = null;
        if(!lastName_12id.equals("")){
         lastName_12idTemp  = lastName_12id;
        }
        String address_13id=  request.getParameter("address86");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String city_14id=  request.getParameter("city88");
            java.lang.String city_14idTemp = null;
        if(!city_14id.equals("")){
         city_14idTemp  = city_14id;
        }
        String state_15id=  request.getParameter("state90");
            java.lang.String state_15idTemp = null;
        if(!state_15id.equals("")){
         state_15idTemp  = state_15id;
        }
        String zipCode_16id=  request.getParameter("zipCode92");
            java.lang.String zipCode_16idTemp = null;
        if(!zipCode_16id.equals("")){
         zipCode_16idTemp  = zipCode_16id;
        }
        String ccNumber_17id=  request.getParameter("ccNumber94");
            java.lang.String ccNumber_17idTemp = null;
        if(!ccNumber_17id.equals("")){
         ccNumber_17idTemp  = ccNumber_17id;
        }
        edu.sjsu.videolibrary.model.User signUpUser45mtemp = sampleServiceProxyid.signUpUser(userId_8idTemp,password_9idTemp,memType_10idTemp,firstName_11idTemp,lastName_12idTemp,address_13idTemp,city_14idTemp,state_15idTemp,zipCode_16idTemp,ccNumber_17idTemp);
if(signUpUser45mtemp == null){
%>
<%=signUpUser45mtemp %>
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
if(signUpUser45mtemp != null){
java.lang.String typestate48 = signUpUser45mtemp.getState();
        String tempResultstate48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate48));
        %>
        <%= tempResultstate48 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typezip50 = signUpUser45mtemp.getZip();
        String tempResultzip50 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip50));
        %>
        <%= tempResultzip50 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typestartDate52 = signUpUser45mtemp.getStartDate();
        String tempResultstartDate52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate52));
        %>
        <%= tempResultstartDate52 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typelatestPaymentDate54 = signUpUser45mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate54));
        %>
        <%= tempResultlatestPaymentDate54 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typemembershipType56 = signUpUser45mtemp.getMembershipType();
        String tempResultmembershipType56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType56));
        %>
        <%= tempResultmembershipType56 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typecity58 = signUpUser45mtemp.getCity();
        String tempResultcity58 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity58));
        %>
        <%= tempResultcity58 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
%>
<%=signUpUser45mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typeuserId62 = signUpUser45mtemp.getUserId();
        String tempResultuserId62 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId62));
        %>
        <%= tempResultuserId62 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String[] typemovieList64 = signUpUser45mtemp.getMovieList();
        String tempmovieList64 = null;
        if(typemovieList64 != null){
        java.util.List listmovieList64= java.util.Arrays.asList(typemovieList64);
        tempmovieList64 = listmovieList64.toString();
        }
        %>
        <%=tempmovieList64%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typeaddress66 = signUpUser45mtemp.getAddress();
        String tempResultaddress66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress66));
        %>
        <%= tempResultaddress66 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typepassword68 = signUpUser45mtemp.getPassword();
        String tempResultpassword68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword68));
        %>
        <%= tempResultpassword68 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typefirstName70 = signUpUser45mtemp.getFirstName();
        String tempResultfirstName70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName70));
        %>
        <%= tempResultfirstName70 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typelastName72 = signUpUser45mtemp.getLastName();
        String tempResultlastName72 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName72));
        %>
        <%= tempResultlastName72 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(signUpUser45mtemp != null){
java.lang.String typecreditCardNumber74 = signUpUser45mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber74 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber74));
        %>
        <%= tempResultcreditCardNumber74 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 96:
        gotMethod = true;
        String userId_18id=  request.getParameter("userId99");
            java.lang.String userId_18idTemp = null;
        if(!userId_18id.equals("")){
         userId_18idTemp  = userId_18id;
        }
        String password_19id=  request.getParameter("password101");
            java.lang.String password_19idTemp = null;
        if(!password_19id.equals("")){
         password_19idTemp  = password_19id;
        }
        String firstName_20id=  request.getParameter("firstName103");
            java.lang.String firstName_20idTemp = null;
        if(!firstName_20id.equals("")){
         firstName_20idTemp  = firstName_20id;
        }
        String lastName_21id=  request.getParameter("lastName105");
            java.lang.String lastName_21idTemp = null;
        if(!lastName_21id.equals("")){
         lastName_21idTemp  = lastName_21id;
        }
        java.lang.String signUpAdmin96mtemp = sampleServiceProxyid.signUpAdmin(userId_18idTemp,password_19idTemp,firstName_20idTemp,lastName_21idTemp);
if(signUpAdmin96mtemp == null){
%>
<%=signUpAdmin96mtemp %>
<%
}else{
        String tempResultreturnp97 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin96mtemp));
        %>
        <%= tempResultreturnp97 %>
        <%
}
break;
case 107:
        gotMethod = true;
        String userId_22id=  request.getParameter("userId110");
            java.lang.String userId_22idTemp = null;
        if(!userId_22id.equals("")){
         userId_22idTemp  = userId_22id;
        }
        String password_23id=  request.getParameter("password112");
            java.lang.String password_23idTemp = null;
        if(!password_23id.equals("")){
         password_23idTemp  = password_23id;
        }
        java.lang.String signInUser107mtemp = sampleServiceProxyid.signInUser(userId_22idTemp,password_23idTemp);
if(signInUser107mtemp == null){
%>
<%=signInUser107mtemp %>
<%
}else{
        String tempResultreturnp108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInUser107mtemp));
        %>
        <%= tempResultreturnp108 %>
        <%
}
break;
case 114:
        gotMethod = true;
        String userId_24id=  request.getParameter("userId117");
            java.lang.String userId_24idTemp = null;
        if(!userId_24id.equals("")){
         userId_24idTemp  = userId_24id;
        }
        String password_25id=  request.getParameter("password119");
            java.lang.String password_25idTemp = null;
        if(!password_25id.equals("")){
         password_25idTemp  = password_25id;
        }
        java.lang.String signInAdmin114mtemp = sampleServiceProxyid.signInAdmin(userId_24idTemp,password_25idTemp);
if(signInAdmin114mtemp == null){
%>
<%=signInAdmin114mtemp %>
<%
}else{
        String tempResultreturnp115 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInAdmin114mtemp));
        %>
        <%= tempResultreturnp115 %>
        <%
}
break;
case 121:
        gotMethod = true;
        String type_26id=  request.getParameter("type124");
            java.lang.String type_26idTemp = null;
        if(!type_26id.equals("")){
         type_26idTemp  = type_26id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers121mtemp = sampleServiceProxyid.viewMembers(type_26idTemp);
if(viewMembers121mtemp == null){
%>
<%=viewMembers121mtemp %>
<%
}else{
        String tempreturnp122 = null;
        if(viewMembers121mtemp != null){
        java.util.List listreturnp122= java.util.Arrays.asList(viewMembers121mtemp);
        tempreturnp122 = listreturnp122.toString();
        }
        %>
        <%=tempreturnp122%>
        <%
}
break;
case 126:
        gotMethod = true;
        String userId_27id=  request.getParameter("userId129");
            java.lang.String userId_27idTemp = null;
        if(!userId_27id.equals("")){
         userId_27idTemp  = userId_27id;
        }
        java.lang.String deleteUserAccount126mtemp = sampleServiceProxyid.deleteUserAccount(userId_27idTemp);
if(deleteUserAccount126mtemp == null){
%>
<%=deleteUserAccount126mtemp %>
<%
}else{
        String tempResultreturnp127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount126mtemp));
        %>
        <%= tempResultreturnp127 %>
        <%
}
break;
case 131:
        gotMethod = true;
        String userId_28id=  request.getParameter("userId134");
            java.lang.String userId_28idTemp = null;
        if(!userId_28id.equals("")){
         userId_28idTemp  = userId_28id;
        }
        java.lang.String deleteAdminAccount131mtemp = sampleServiceProxyid.deleteAdminAccount(userId_28idTemp);
if(deleteAdminAccount131mtemp == null){
%>
<%=deleteAdminAccount131mtemp %>
<%
}else{
        String tempResultreturnp132 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount131mtemp));
        %>
        <%= tempResultreturnp132 %>
        <%
}
break;
case 136:
        gotMethod = true;
        String movieName_29id=  request.getParameter("movieName139");
            java.lang.String movieName_29idTemp = null;
        if(!movieName_29id.equals("")){
         movieName_29idTemp  = movieName_29id;
        }
        String movieBanner_30id=  request.getParameter("movieBanner141");
            java.lang.String movieBanner_30idTemp = null;
        if(!movieBanner_30id.equals("")){
         movieBanner_30idTemp  = movieBanner_30id;
        }
        String releaseDate_31id=  request.getParameter("releaseDate143");
            java.lang.String releaseDate_31idTemp = null;
        if(!releaseDate_31id.equals("")){
         releaseDate_31idTemp  = releaseDate_31id;
        }
        String availableCopies_32id=  request.getParameter("availableCopies145");
        int availableCopies_32idTemp  = Integer.parseInt(availableCopies_32id);
        String categoryId_33id=  request.getParameter("categoryId147");
        int categoryId_33idTemp  = Integer.parseInt(categoryId_33id);
        java.lang.String createNewMovie136mtemp = sampleServiceProxyid.createNewMovie(movieName_29idTemp,movieBanner_30idTemp,releaseDate_31idTemp,availableCopies_32idTemp,categoryId_33idTemp);
if(createNewMovie136mtemp == null){
%>
<%=createNewMovie136mtemp %>
<%
}else{
        String tempResultreturnp137 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie136mtemp));
        %>
        <%= tempResultreturnp137 %>
        <%
}
break;
case 149:
        gotMethod = true;
        String movieId_34id=  request.getParameter("movieId152");
            java.lang.String movieId_34idTemp = null;
        if(!movieId_34id.equals("")){
         movieId_34idTemp  = movieId_34id;
        }
        java.lang.String deleteMovie149mtemp = sampleServiceProxyid.deleteMovie(movieId_34idTemp);
if(deleteMovie149mtemp == null){
%>
<%=deleteMovie149mtemp %>
<%
}else{
        String tempResultreturnp150 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie149mtemp));
        %>
        <%= tempResultreturnp150 %>
        <%
}
break;
case 154:
        gotMethod = true;
        String membershipId_35id=  request.getParameter("membershipId185");
        int membershipId_35idTemp  = Integer.parseInt(membershipId_35id);
        edu.sjsu.videolibrary.model.User displayUserInformation154mtemp = sampleServiceProxyid.displayUserInformation(membershipId_35idTemp);
if(displayUserInformation154mtemp == null){
%>
<%=displayUserInformation154mtemp %>
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
if(displayUserInformation154mtemp != null){
java.lang.String typestate157 = displayUserInformation154mtemp.getState();
        String tempResultstate157 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate157));
        %>
        <%= tempResultstate157 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typezip159 = displayUserInformation154mtemp.getZip();
        String tempResultzip159 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip159));
        %>
        <%= tempResultzip159 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typestartDate161 = displayUserInformation154mtemp.getStartDate();
        String tempResultstartDate161 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate161));
        %>
        <%= tempResultstartDate161 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typelatestPaymentDate163 = displayUserInformation154mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate163 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate163));
        %>
        <%= tempResultlatestPaymentDate163 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typemembershipType165 = displayUserInformation154mtemp.getMembershipType();
        String tempResultmembershipType165 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType165));
        %>
        <%= tempResultmembershipType165 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typecity167 = displayUserInformation154mtemp.getCity();
        String tempResultcity167 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity167));
        %>
        <%= tempResultcity167 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
%>
<%=displayUserInformation154mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typeuserId171 = displayUserInformation154mtemp.getUserId();
        String tempResultuserId171 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId171));
        %>
        <%= tempResultuserId171 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String[] typemovieList173 = displayUserInformation154mtemp.getMovieList();
        String tempmovieList173 = null;
        if(typemovieList173 != null){
        java.util.List listmovieList173= java.util.Arrays.asList(typemovieList173);
        tempmovieList173 = listmovieList173.toString();
        }
        %>
        <%=tempmovieList173%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typeaddress175 = displayUserInformation154mtemp.getAddress();
        String tempResultaddress175 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress175));
        %>
        <%= tempResultaddress175 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typepassword177 = displayUserInformation154mtemp.getPassword();
        String tempResultpassword177 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword177));
        %>
        <%= tempResultpassword177 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typefirstName179 = displayUserInformation154mtemp.getFirstName();
        String tempResultfirstName179 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName179));
        %>
        <%= tempResultfirstName179 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typelastName181 = displayUserInformation154mtemp.getLastName();
        String tempResultlastName181 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName181));
        %>
        <%= tempResultlastName181 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation154mtemp != null){
java.lang.String typecreditCardNumber183 = displayUserInformation154mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber183 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber183));
        %>
        <%= tempResultcreditCardNumber183 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 187:
        gotMethod = true;
        String movieId_36id=  request.getParameter("movieId210");
        int movieId_36idTemp  = Integer.parseInt(movieId_36id);
        edu.sjsu.videolibrary.model.Movie displayMovieInformation187mtemp = sampleServiceProxyid.displayMovieInformation(movieId_36idTemp);
if(displayMovieInformation187mtemp == null){
%>
<%=displayMovieInformation187mtemp %>
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
if(displayMovieInformation187mtemp != null){
java.lang.String typemovieBanner190 = displayMovieInformation187mtemp.getMovieBanner();
        String tempResultmovieBanner190 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner190));
        %>
        <%= tempResultmovieBanner190 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
java.lang.String typereleaseDate192 = displayMovieInformation187mtemp.getReleaseDate();
        String tempResultreleaseDate192 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate192));
        %>
        <%= tempResultreleaseDate192 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
java.lang.String typemovieName194 = displayMovieInformation187mtemp.getMovieName();
        String tempResultmovieName194 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName194));
        %>
        <%= tempResultmovieName194 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
%>
<%=displayMovieInformation187mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
%>
<%=displayMovieInformation187mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryName:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
java.lang.String typecategoryName200 = displayMovieInformation187mtemp.getCategoryName();
        String tempResultcategoryName200 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategoryName200));
        %>
        <%= tempResultcategoryName200 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
%>
<%=displayMovieInformation187mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
java.lang.String typecatagory204 = displayMovieInformation187mtemp.getCatagory();
        String tempResultcatagory204 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory204));
        %>
        <%= tempResultcatagory204 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
%>
<%=displayMovieInformation187mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation187mtemp != null){
java.lang.String[] typebuyerList208 = displayMovieInformation187mtemp.getBuyerList();
        String tempbuyerList208 = null;
        if(typebuyerList208 != null){
        java.util.List listbuyerList208= java.util.Arrays.asList(typebuyerList208);
        tempbuyerList208 = listbuyerList208.toString();
        }
        %>
        <%=tempbuyerList208%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 212:
        gotMethod = true;
        String membershipId_37id=  request.getParameter("membershipId215");
        int membershipId_37idTemp  = Integer.parseInt(membershipId_37id);
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions212mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_37idTemp);
if(viewAccountTransactions212mtemp == null){
%>
<%=viewAccountTransactions212mtemp %>
<%
}else{
        String tempreturnp213 = null;
        if(viewAccountTransactions212mtemp != null){
        java.util.List listreturnp213= java.util.Arrays.asList(viewAccountTransactions212mtemp);
        tempreturnp213 = listreturnp213.toString();
        }
        %>
        <%=tempreturnp213%>
        <%
}
break;
case 217:
        gotMethod = true;
        String membershipId_38id=  request.getParameter("membershipId220");
        int membershipId_38idTemp  = Integer.parseInt(membershipId_38id);
        java.lang.String makeMonthlyPayment217mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_38idTemp);
if(makeMonthlyPayment217mtemp == null){
%>
<%=makeMonthlyPayment217mtemp %>
<%
}else{
        String tempResultreturnp218 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment217mtemp));
        %>
        <%= tempResultreturnp218 %>
        <%
}
break;
case 222:
        gotMethod = true;
        String membershipId_39id=  request.getParameter("membershipId225");
        int membershipId_39idTemp  = Integer.parseInt(membershipId_39id);
        String userId_40id=  request.getParameter("userId227");
            java.lang.String userId_40idTemp = null;
        if(!userId_40id.equals("")){
         userId_40idTemp  = userId_40id;
        }
        String firstName_41id=  request.getParameter("firstName229");
            java.lang.String firstName_41idTemp = null;
        if(!firstName_41id.equals("")){
         firstName_41idTemp  = firstName_41id;
        }
        String lastName_42id=  request.getParameter("lastName231");
            java.lang.String lastName_42idTemp = null;
        if(!lastName_42id.equals("")){
         lastName_42idTemp  = lastName_42id;
        }
        String address_43id=  request.getParameter("address233");
            java.lang.String address_43idTemp = null;
        if(!address_43id.equals("")){
         address_43idTemp  = address_43id;
        }
        String city_44id=  request.getParameter("city235");
            java.lang.String city_44idTemp = null;
        if(!city_44id.equals("")){
         city_44idTemp  = city_44id;
        }
        String state_45id=  request.getParameter("state237");
            java.lang.String state_45idTemp = null;
        if(!state_45id.equals("")){
         state_45idTemp  = state_45id;
        }
        String zipCode_46id=  request.getParameter("zipCode239");
            java.lang.String zipCode_46idTemp = null;
        if(!zipCode_46id.equals("")){
         zipCode_46idTemp  = zipCode_46id;
        }
        String membershipType_47id=  request.getParameter("membershipType241");
            java.lang.String membershipType_47idTemp = null;
        if(!membershipType_47id.equals("")){
         membershipType_47idTemp  = membershipType_47id;
        }
        String creditCardNumber_48id=  request.getParameter("creditCardNumber243");
            java.lang.String creditCardNumber_48idTemp = null;
        if(!creditCardNumber_48id.equals("")){
         creditCardNumber_48idTemp  = creditCardNumber_48id;
        }
        java.lang.String updateUserInfo222mtemp = sampleServiceProxyid.updateUserInfo(membershipId_39idTemp,userId_40idTemp,firstName_41idTemp,lastName_42idTemp,address_43idTemp,city_44idTemp,state_45idTemp,zipCode_46idTemp,membershipType_47idTemp,creditCardNumber_48idTemp);
if(updateUserInfo222mtemp == null){
%>
<%=updateUserInfo222mtemp %>
<%
}else{
        String tempResultreturnp223 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo222mtemp));
        %>
        <%= tempResultreturnp223 %>
        <%
}
break;
case 245:
        gotMethod = true;
        String membershipId_49id=  request.getParameter("membershipId248");
        int membershipId_49idTemp  = Integer.parseInt(membershipId_49id);
        String oldPassword_50id=  request.getParameter("oldPassword250");
            java.lang.String oldPassword_50idTemp = null;
        if(!oldPassword_50id.equals("")){
         oldPassword_50idTemp  = oldPassword_50id;
        }
        String newPassword_51id=  request.getParameter("newPassword252");
            java.lang.String newPassword_51idTemp = null;
        if(!newPassword_51id.equals("")){
         newPassword_51idTemp  = newPassword_51id;
        }
        java.lang.String updatePassword245mtemp = sampleServiceProxyid.updatePassword(membershipId_49idTemp,oldPassword_50idTemp,newPassword_51idTemp);
if(updatePassword245mtemp == null){
%>
<%=updatePassword245mtemp %>
<%
}else{
        String tempResultreturnp246 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword245mtemp));
        %>
        <%= tempResultreturnp246 %>
        <%
}
break;
case 254:
        gotMethod = true;
        String membershipId_52id=  request.getParameter("membershipId257");
        int membershipId_52idTemp  = Integer.parseInt(membershipId_52id);
        String month_53id=  request.getParameter("month259");
        int month_53idTemp  = Integer.parseInt(month_53id);
        String year_54id=  request.getParameter("year261");
        int year_54idTemp  = Integer.parseInt(year_54id);
        java.lang.String generateMonthlyStatement254mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_52idTemp,month_53idTemp,year_54idTemp);
if(generateMonthlyStatement254mtemp == null){
%>
<%=generateMonthlyStatement254mtemp %>
<%
}else{
        String tempResultreturnp255 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement254mtemp));
        %>
        <%= tempResultreturnp255 %>
        <%
}
break;
case 263:
        gotMethod = true;
        String membershipId_55id=  request.getParameter("membershipId266");
        int membershipId_55idTemp  = Integer.parseInt(membershipId_55id);
        String month_56id=  request.getParameter("month268");
        int month_56idTemp  = Integer.parseInt(month_56id);
        String year_57id=  request.getParameter("year270");
        int year_57idTemp  = Integer.parseInt(year_57id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement263mtemp = sampleServiceProxyid.viewStatement(membershipId_55idTemp,month_56idTemp,year_57idTemp);
if(viewStatement263mtemp == null){
%>
<%=viewStatement263mtemp %>
<%
}else{
        String tempreturnp264 = null;
        if(viewStatement263mtemp != null){
        java.util.List listreturnp264= java.util.Arrays.asList(viewStatement263mtemp);
        tempreturnp264 = listreturnp264.toString();
        }
        %>
        <%=tempreturnp264%>
        <%
}
break;
case 272:
        gotMethod = true;
        String membershipId_58id=  request.getParameter("membershipId281");
        int membershipId_58idTemp  = Integer.parseInt(membershipId_58id);
        String month_59id=  request.getParameter("month283");
        int month_59idTemp  = Integer.parseInt(month_59id);
        String year_60id=  request.getParameter("year285");
        int year_60idTemp  = Integer.parseInt(year_60id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember272mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_58idTemp,month_59idTemp,year_60idTemp);
if(generateMonthlyBillForPremiumMember272mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember272mtemp %>
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
if(generateMonthlyBillForPremiumMember272mtemp != null){
java.lang.String typepaymentStatus275 = generateMonthlyBillForPremiumMember272mtemp.getPaymentStatus();
        String tempResultpaymentStatus275 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus275));
        %>
        <%= tempResultpaymentStatus275 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember272mtemp != null){
java.lang.String typepaymentDate277 = generateMonthlyBillForPremiumMember272mtemp.getPaymentDate();
        String tempResultpaymentDate277 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate277));
        %>
        <%= tempResultpaymentDate277 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember272mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember272mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 287:
        gotMethod = true;
        double getRentAmountforMovie287mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp288 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie287mtemp));
        %>
        <%= tempResultreturnp288 %>
        <%
break;
case 290:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember290mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp291 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember290mtemp));
        %>
        <%= tempResultreturnp291 %>
        <%
break;
case 293:
        gotMethod = true;
        java.lang.String[] listCategories293mtemp = sampleServiceProxyid.listCategories();
if(listCategories293mtemp == null){
%>
<%=listCategories293mtemp %>
<%
}else{
        String tempreturnp294 = null;
        if(listCategories293mtemp != null){
        java.util.List listreturnp294= java.util.Arrays.asList(listCategories293mtemp);
        tempreturnp294 = listreturnp294.toString();
        }
        %>
        <%=tempreturnp294%>
        <%
}
break;
case 296:
        gotMethod = true;
        String categoryName_61id=  request.getParameter("categoryName299");
            java.lang.String categoryName_61idTemp = null;
        if(!categoryName_61id.equals("")){
         categoryName_61idTemp  = categoryName_61id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory296mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_61idTemp);
if(listMoviesByCategory296mtemp == null){
%>
<%=listMoviesByCategory296mtemp %>
<%
}else{
        String tempreturnp297 = null;
        if(listMoviesByCategory296mtemp != null){
        java.util.List listreturnp297= java.util.Arrays.asList(listMoviesByCategory296mtemp);
        tempreturnp297 = listreturnp297.toString();
        }
        %>
        <%=tempreturnp297%>
        <%
}
break;
case 301:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies301mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies301mtemp == null){
%>
<%=listAllMovies301mtemp %>
<%
}else{
        String tempreturnp302 = null;
        if(listAllMovies301mtemp != null){
        java.util.List listreturnp302= java.util.Arrays.asList(listAllMovies301mtemp);
        tempreturnp302 = listreturnp302.toString();
        }
        %>
        <%=tempreturnp302%>
        <%
}
break;
case 304:
        gotMethod = true;
        String userInput_62id=  request.getParameter("userInput307");
            java.lang.String userInput_62idTemp = null;
        if(!userInput_62id.equals("")){
         userInput_62idTemp  = userInput_62id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByName304mtemp = sampleServiceProxyid.searchByName(userInput_62idTemp);
if(searchByName304mtemp == null){
%>
<%=searchByName304mtemp %>
<%
}else{
        String tempreturnp305 = null;
        if(searchByName304mtemp != null){
        java.util.List listreturnp305= java.util.Arrays.asList(searchByName304mtemp);
        tempreturnp305 = listreturnp305.toString();
        }
        %>
        <%=tempreturnp305%>
        <%
}
break;
case 309:
        gotMethod = true;
        String userInput_63id=  request.getParameter("userInput312");
            java.lang.String userInput_63idTemp = null;
        if(!userInput_63id.equals("")){
         userInput_63idTemp  = userInput_63id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByMovieBanner309mtemp = sampleServiceProxyid.searchByMovieBanner(userInput_63idTemp);
if(searchByMovieBanner309mtemp == null){
%>
<%=searchByMovieBanner309mtemp %>
<%
}else{
        String tempreturnp310 = null;
        if(searchByMovieBanner309mtemp != null){
        java.util.List listreturnp310= java.util.Arrays.asList(searchByMovieBanner309mtemp);
        tempreturnp310 = listreturnp310.toString();
        }
        %>
        <%=tempreturnp310%>
        <%
}
break;
case 314:
        gotMethod = true;
        String userInput_64id=  request.getParameter("userInput317");
            java.lang.String userInput_64idTemp = null;
        if(!userInput_64id.equals("")){
         userInput_64idTemp  = userInput_64id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByReleaseDate314mtemp = sampleServiceProxyid.searchByReleaseDate(userInput_64idTemp);
if(searchByReleaseDate314mtemp == null){
%>
<%=searchByReleaseDate314mtemp %>
<%
}else{
        String tempreturnp315 = null;
        if(searchByReleaseDate314mtemp != null){
        java.util.List listreturnp315= java.util.Arrays.asList(searchByReleaseDate314mtemp);
        tempreturnp315 = listreturnp315.toString();
        }
        %>
        <%=tempreturnp315%>
        <%
}
break;
case 319:
        gotMethod = true;
        String adminInput_65id=  request.getParameter("adminInput322");
            java.lang.String adminInput_65idTemp = null;
        if(!adminInput_65id.equals("")){
         adminInput_65idTemp  = adminInput_65id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByFirstName319mtemp = sampleServiceProxyid.searchUserByFirstName(adminInput_65idTemp);
if(searchUserByFirstName319mtemp == null){
%>
<%=searchUserByFirstName319mtemp %>
<%
}else{
        String tempreturnp320 = null;
        if(searchUserByFirstName319mtemp != null){
        java.util.List listreturnp320= java.util.Arrays.asList(searchUserByFirstName319mtemp);
        tempreturnp320 = listreturnp320.toString();
        }
        %>
        <%=tempreturnp320%>
        <%
}
break;
case 324:
        gotMethod = true;
        String adminInput_66id=  request.getParameter("adminInput327");
            java.lang.String adminInput_66idTemp = null;
        if(!adminInput_66id.equals("")){
         adminInput_66idTemp  = adminInput_66id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByLastName324mtemp = sampleServiceProxyid.searchUserByLastName(adminInput_66idTemp);
if(searchUserByLastName324mtemp == null){
%>
<%=searchUserByLastName324mtemp %>
<%
}else{
        String tempreturnp325 = null;
        if(searchUserByLastName324mtemp != null){
        java.util.List listreturnp325= java.util.Arrays.asList(searchUserByLastName324mtemp);
        tempreturnp325 = listreturnp325.toString();
        }
        %>
        <%=tempreturnp325%>
        <%
}
break;
case 329:
        gotMethod = true;
        String adminInput_67id=  request.getParameter("adminInput332");
            java.lang.String adminInput_67idTemp = null;
        if(!adminInput_67id.equals("")){
         adminInput_67idTemp  = adminInput_67id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByCity329mtemp = sampleServiceProxyid.searchUserByCity(adminInput_67idTemp);
if(searchUserByCity329mtemp == null){
%>
<%=searchUserByCity329mtemp %>
<%
}else{
        String tempreturnp330 = null;
        if(searchUserByCity329mtemp != null){
        java.util.List listreturnp330= java.util.Arrays.asList(searchUserByCity329mtemp);
        tempreturnp330 = listreturnp330.toString();
        }
        %>
        <%=tempreturnp330%>
        <%
}
break;
case 334:
        gotMethod = true;
        String adminInput_68id=  request.getParameter("adminInput337");
            java.lang.String adminInput_68idTemp = null;
        if(!adminInput_68id.equals("")){
         adminInput_68idTemp  = adminInput_68id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByState334mtemp = sampleServiceProxyid.searchUserByState(adminInput_68idTemp);
if(searchUserByState334mtemp == null){
%>
<%=searchUserByState334mtemp %>
<%
}else{
        String tempreturnp335 = null;
        if(searchUserByState334mtemp != null){
        java.util.List listreturnp335= java.util.Arrays.asList(searchUserByState334mtemp);
        tempreturnp335 = listreturnp335.toString();
        }
        %>
        <%=tempreturnp335%>
        <%
}
break;
case 339:
        gotMethod = true;
        String adminInput_69id=  request.getParameter("adminInput342");
            java.lang.String adminInput_69idTemp = null;
        if(!adminInput_69id.equals("")){
         adminInput_69idTemp  = adminInput_69id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByMemberShipType339mtemp = sampleServiceProxyid.searchUserByMemberShipType(adminInput_69idTemp);
if(searchUserByMemberShipType339mtemp == null){
%>
<%=searchUserByMemberShipType339mtemp %>
<%
}else{
        String tempreturnp340 = null;
        if(searchUserByMemberShipType339mtemp != null){
        java.util.List listreturnp340= java.util.Arrays.asList(searchUserByMemberShipType339mtemp);
        tempreturnp340 = listreturnp340.toString();
        }
        %>
        <%=tempreturnp340%>
        <%
}
break;
case 344:
        gotMethod = true;
        String adminInput_70id=  request.getParameter("adminInput347");
        int adminInput_70idTemp  = Integer.parseInt(adminInput_70id);
        edu.sjsu.videolibrary.model.User[] searchUserByMembershipId344mtemp = sampleServiceProxyid.searchUserByMembershipId(adminInput_70idTemp);
if(searchUserByMembershipId344mtemp == null){
%>
<%=searchUserByMembershipId344mtemp %>
<%
}else{
        String tempreturnp345 = null;
        if(searchUserByMembershipId344mtemp != null){
        java.util.List listreturnp345= java.util.Arrays.asList(searchUserByMembershipId344mtemp);
        tempreturnp345 = listreturnp345.toString();
        }
        %>
        <%=tempreturnp345%>
        <%
}
break;
case 349:
        gotMethod = true;
        String adminId_71id=  request.getParameter("adminId360");
            java.lang.String adminId_71idTemp = null;
        if(!adminId_71id.equals("")){
         adminId_71idTemp  = adminId_71id;
        }
        edu.sjsu.videolibrary.model.Admin displayAdminInformation349mtemp = sampleServiceProxyid.displayAdminInformation(adminId_71idTemp);
if(displayAdminInformation349mtemp == null){
%>
<%=displayAdminInformation349mtemp %>
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
if(displayAdminInformation349mtemp != null){
java.lang.String typepassword352 = displayAdminInformation349mtemp.getPassword();
        String tempResultpassword352 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword352));
        %>
        <%= tempResultpassword352 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayAdminInformation349mtemp != null){
java.lang.String typelastName354 = displayAdminInformation349mtemp.getLastName();
        String tempResultlastName354 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName354));
        %>
        <%= tempResultlastName354 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayAdminInformation349mtemp != null){
java.lang.String typefirstName356 = displayAdminInformation349mtemp.getFirstName();
        String tempResultfirstName356 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName356));
        %>
        <%= tempResultfirstName356 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(displayAdminInformation349mtemp != null){
java.lang.String typeadminId358 = displayAdminInformation349mtemp.getAdminId();
        String tempResultadminId358 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId358));
        %>
        <%= tempResultadminId358 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 362:
        gotMethod = true;
        String adminId_72id=  request.getParameter("adminId365");
            java.lang.String adminId_72idTemp = null;
        if(!adminId_72id.equals("")){
         adminId_72idTemp  = adminId_72id;
        }
        String firstName_73id=  request.getParameter("firstName367");
            java.lang.String firstName_73idTemp = null;
        if(!firstName_73id.equals("")){
         firstName_73idTemp  = firstName_73id;
        }
        String lastName_74id=  request.getParameter("lastName369");
            java.lang.String lastName_74idTemp = null;
        if(!lastName_74id.equals("")){
         lastName_74idTemp  = lastName_74id;
        }
        String password_75id=  request.getParameter("password371");
            java.lang.String password_75idTemp = null;
        if(!password_75id.equals("")){
         password_75idTemp  = password_75id;
        }
        java.lang.String updateAdminInfo362mtemp = sampleServiceProxyid.updateAdminInfo(adminId_72idTemp,firstName_73idTemp,lastName_74idTemp,password_75idTemp);
if(updateAdminInfo362mtemp == null){
%>
<%=updateAdminInfo362mtemp %>
<%
}else{
        String tempResultreturnp363 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateAdminInfo362mtemp));
        %>
        <%= tempResultreturnp363 %>
        <%
}
break;
case 373:
        gotMethod = true;
        String membershipId_76id=  request.getParameter("membershipId376");
        int membershipId_76idTemp  = Integer.parseInt(membershipId_76id);
        String newPassword_77id=  request.getParameter("newPassword378");
            java.lang.String newPassword_77idTemp = null;
        if(!newPassword_77id.equals("")){
         newPassword_77idTemp  = newPassword_77id;
        }
        java.lang.String updateUserPassword373mtemp = sampleServiceProxyid.updateUserPassword(membershipId_76idTemp,newPassword_77idTemp);
if(updateUserPassword373mtemp == null){
%>
<%=updateUserPassword373mtemp %>
<%
}else{
        String tempResultreturnp374 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserPassword373mtemp));
        %>
        <%= tempResultreturnp374 %>
        <%
}
break;
case 380:
        gotMethod = true;
        java.lang.String[] getStates380mtemp = sampleServiceProxyid.getStates();
if(getStates380mtemp == null){
%>
<%=getStates380mtemp %>
<%
}else{
        String tempreturnp381 = null;
        if(getStates380mtemp != null){
        java.util.List listreturnp381= java.util.Arrays.asList(getStates380mtemp);
        tempreturnp381 = listreturnp381.toString();
        }
        %>
        <%=tempreturnp381%>
        <%
}
break;
case 383:
        gotMethod = true;
        String movieId_78id=  request.getParameter("movieId386");
        int movieId_78idTemp  = Integer.parseInt(movieId_78id);
        String movieName_79id=  request.getParameter("movieName388");
            java.lang.String movieName_79idTemp = null;
        if(!movieName_79id.equals("")){
         movieName_79idTemp  = movieName_79id;
        }
        String movieBanner_80id=  request.getParameter("movieBanner390");
            java.lang.String movieBanner_80idTemp = null;
        if(!movieBanner_80id.equals("")){
         movieBanner_80idTemp  = movieBanner_80id;
        }
        String releaseDate_81id=  request.getParameter("releaseDate392");
            java.lang.String releaseDate_81idTemp = null;
        if(!releaseDate_81id.equals("")){
         releaseDate_81idTemp  = releaseDate_81id;
        }
        String availableCopies_82id=  request.getParameter("availableCopies394");
        int availableCopies_82idTemp  = Integer.parseInt(availableCopies_82id);
        String categoryId_83id=  request.getParameter("categoryId396");
        int categoryId_83idTemp  = Integer.parseInt(categoryId_83id);
        java.lang.String updateMovieInfo383mtemp = sampleServiceProxyid.updateMovieInfo(movieId_78idTemp,movieName_79idTemp,movieBanner_80idTemp,releaseDate_81idTemp,availableCopies_82idTemp,categoryId_83idTemp);
if(updateMovieInfo383mtemp == null){
%>
<%=updateMovieInfo383mtemp %>
<%
}else{
        String tempResultreturnp384 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo383mtemp));
        %>
        <%= tempResultreturnp384 %>
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