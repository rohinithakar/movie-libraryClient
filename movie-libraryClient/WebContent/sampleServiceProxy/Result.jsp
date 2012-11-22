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
case 17:
        gotMethod = true;
        String membershipId_1id=  request.getParameter("membershipId20");
        int membershipId_1idTemp  = Integer.parseInt(membershipId_1id);
        String movieId_2id=  request.getParameter("movieId22");
        int movieId_2idTemp  = Integer.parseInt(movieId_2id);
        java.lang.String addItemsToCart17mtemp = sampleServiceProxyid.addItemsToCart(membershipId_1idTemp,movieId_2idTemp);
if(addItemsToCart17mtemp == null){
%>
<%=addItemsToCart17mtemp %>
<%
}else{
        String tempResultreturnp18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addItemsToCart17mtemp));
        %>
        <%= tempResultreturnp18 %>
        <%
}
break;
case 24:
        gotMethod = true;
        String movieId_3id=  request.getParameter("movieId27");
        int movieId_3idTemp  = Integer.parseInt(movieId_3id);
        String membershipId_4id=  request.getParameter("membershipId29");
        int membershipId_4idTemp  = Integer.parseInt(membershipId_4id);
        java.lang.String deleteMovieFromCart24mtemp = sampleServiceProxyid.deleteMovieFromCart(movieId_3idTemp,membershipId_4idTemp);
if(deleteMovieFromCart24mtemp == null){
%>
<%=deleteMovieFromCart24mtemp %>
<%
}else{
        String tempResultreturnp25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovieFromCart24mtemp));
        %>
        <%= tempResultreturnp25 %>
        <%
}
break;
case 31:
        gotMethod = true;
        String membershipId_5id=  request.getParameter("membershipId34");
        int membershipId_5idTemp  = Integer.parseInt(membershipId_5id);
        edu.sjsu.videolibrary.model.ItemOnCart[] viewCart31mtemp = sampleServiceProxyid.viewCart(membershipId_5idTemp);
if(viewCart31mtemp == null){
%>
<%=viewCart31mtemp %>
<%
}else{
        String tempreturnp32 = null;
        if(viewCart31mtemp != null){
        java.util.List listreturnp32= java.util.Arrays.asList(viewCart31mtemp);
        tempreturnp32 = listreturnp32.toString();
        }
        %>
        <%=tempreturnp32%>
        <%
}
break;
case 36:
        gotMethod = true;
        String membershipId_6id=  request.getParameter("membershipId39");
        int membershipId_6idTemp  = Integer.parseInt(membershipId_6id);
        String creditCardNumber_7id=  request.getParameter("creditCardNumber41");
            java.lang.String creditCardNumber_7idTemp = null;
        if(!creditCardNumber_7id.equals("")){
         creditCardNumber_7idTemp  = creditCardNumber_7id;
        }
        java.lang.String checkOutMovieCart36mtemp = sampleServiceProxyid.checkOutMovieCart(membershipId_6idTemp,creditCardNumber_7idTemp);
if(checkOutMovieCart36mtemp == null){
%>
<%=checkOutMovieCart36mtemp %>
<%
}else{
        String tempResultreturnp37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(checkOutMovieCart36mtemp));
        %>
        <%= tempResultreturnp37 %>
        <%
}
break;
case 43:
        gotMethod = true;
        String userId_8id=  request.getParameter("userId74");
            java.lang.String userId_8idTemp = null;
        if(!userId_8id.equals("")){
         userId_8idTemp  = userId_8id;
        }
        String password_9id=  request.getParameter("password76");
            java.lang.String password_9idTemp = null;
        if(!password_9id.equals("")){
         password_9idTemp  = password_9id;
        }
        String memType_10id=  request.getParameter("memType78");
            java.lang.String memType_10idTemp = null;
        if(!memType_10id.equals("")){
         memType_10idTemp  = memType_10id;
        }
        String firstName_11id=  request.getParameter("firstName80");
            java.lang.String firstName_11idTemp = null;
        if(!firstName_11id.equals("")){
         firstName_11idTemp  = firstName_11id;
        }
        String lastName_12id=  request.getParameter("lastName82");
            java.lang.String lastName_12idTemp = null;
        if(!lastName_12id.equals("")){
         lastName_12idTemp  = lastName_12id;
        }
        String address_13id=  request.getParameter("address84");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String city_14id=  request.getParameter("city86");
            java.lang.String city_14idTemp = null;
        if(!city_14id.equals("")){
         city_14idTemp  = city_14id;
        }
        String state_15id=  request.getParameter("state88");
            java.lang.String state_15idTemp = null;
        if(!state_15id.equals("")){
         state_15idTemp  = state_15id;
        }
        String zipCode_16id=  request.getParameter("zipCode90");
            java.lang.String zipCode_16idTemp = null;
        if(!zipCode_16id.equals("")){
         zipCode_16idTemp  = zipCode_16id;
        }
        String ccNumber_17id=  request.getParameter("ccNumber92");
            java.lang.String ccNumber_17idTemp = null;
        if(!ccNumber_17id.equals("")){
         ccNumber_17idTemp  = ccNumber_17id;
        }
        edu.sjsu.videolibrary.model.User signUpUser43mtemp = sampleServiceProxyid.signUpUser(userId_8idTemp,password_9idTemp,memType_10idTemp,firstName_11idTemp,lastName_12idTemp,address_13idTemp,city_14idTemp,state_15idTemp,zipCode_16idTemp,ccNumber_17idTemp);
if(signUpUser43mtemp == null){
%>
<%=signUpUser43mtemp %>
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
if(signUpUser43mtemp != null){
java.lang.String typestate46 = signUpUser43mtemp.getState();
        String tempResultstate46 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate46));
        %>
        <%= tempResultstate46 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typezip48 = signUpUser43mtemp.getZip();
        String tempResultzip48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip48));
        %>
        <%= tempResultzip48 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typestartDate50 = signUpUser43mtemp.getStartDate();
        String tempResultstartDate50 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate50));
        %>
        <%= tempResultstartDate50 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typelatestPaymentDate52 = signUpUser43mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate52));
        %>
        <%= tempResultlatestPaymentDate52 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typemembershipType54 = signUpUser43mtemp.getMembershipType();
        String tempResultmembershipType54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType54));
        %>
        <%= tempResultmembershipType54 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typecity56 = signUpUser43mtemp.getCity();
        String tempResultcity56 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity56));
        %>
        <%= tempResultcity56 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
%>
<%=signUpUser43mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typeuserId60 = signUpUser43mtemp.getUserId();
        String tempResultuserId60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId60));
        %>
        <%= tempResultuserId60 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String[] typemovieList62 = signUpUser43mtemp.getMovieList();
        String tempmovieList62 = null;
        if(typemovieList62 != null){
        java.util.List listmovieList62= java.util.Arrays.asList(typemovieList62);
        tempmovieList62 = listmovieList62.toString();
        }
        %>
        <%=tempmovieList62%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typeaddress64 = signUpUser43mtemp.getAddress();
        String tempResultaddress64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress64));
        %>
        <%= tempResultaddress64 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typepassword66 = signUpUser43mtemp.getPassword();
        String tempResultpassword66 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword66));
        %>
        <%= tempResultpassword66 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typefirstName68 = signUpUser43mtemp.getFirstName();
        String tempResultfirstName68 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName68));
        %>
        <%= tempResultfirstName68 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typelastName70 = signUpUser43mtemp.getLastName();
        String tempResultlastName70 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName70));
        %>
        <%= tempResultlastName70 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(signUpUser43mtemp != null){
java.lang.String typecreditCardNumber72 = signUpUser43mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber72 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber72));
        %>
        <%= tempResultcreditCardNumber72 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 94:
        gotMethod = true;
        String userId_18id=  request.getParameter("userId97");
            java.lang.String userId_18idTemp = null;
        if(!userId_18id.equals("")){
         userId_18idTemp  = userId_18id;
        }
        String password_19id=  request.getParameter("password99");
            java.lang.String password_19idTemp = null;
        if(!password_19id.equals("")){
         password_19idTemp  = password_19id;
        }
        String firstName_20id=  request.getParameter("firstName101");
            java.lang.String firstName_20idTemp = null;
        if(!firstName_20id.equals("")){
         firstName_20idTemp  = firstName_20id;
        }
        String lastName_21id=  request.getParameter("lastName103");
            java.lang.String lastName_21idTemp = null;
        if(!lastName_21id.equals("")){
         lastName_21idTemp  = lastName_21id;
        }
        java.lang.String signUpAdmin94mtemp = sampleServiceProxyid.signUpAdmin(userId_18idTemp,password_19idTemp,firstName_20idTemp,lastName_21idTemp);
if(signUpAdmin94mtemp == null){
%>
<%=signUpAdmin94mtemp %>
<%
}else{
        String tempResultreturnp95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin94mtemp));
        %>
        <%= tempResultreturnp95 %>
        <%
}
break;
case 105:
        gotMethod = true;
        String userId_22id=  request.getParameter("userId108");
            java.lang.String userId_22idTemp = null;
        if(!userId_22id.equals("")){
         userId_22idTemp  = userId_22id;
        }
        String password_23id=  request.getParameter("password110");
            java.lang.String password_23idTemp = null;
        if(!password_23id.equals("")){
         password_23idTemp  = password_23id;
        }
        java.lang.String signInUser105mtemp = sampleServiceProxyid.signInUser(userId_22idTemp,password_23idTemp);
if(signInUser105mtemp == null){
%>
<%=signInUser105mtemp %>
<%
}else{
        String tempResultreturnp106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInUser105mtemp));
        %>
        <%= tempResultreturnp106 %>
        <%
}
break;
case 112:
        gotMethod = true;
        String userId_24id=  request.getParameter("userId115");
            java.lang.String userId_24idTemp = null;
        if(!userId_24id.equals("")){
         userId_24idTemp  = userId_24id;
        }
        String password_25id=  request.getParameter("password117");
            java.lang.String password_25idTemp = null;
        if(!password_25id.equals("")){
         password_25idTemp  = password_25id;
        }
        java.lang.String signInAdmin112mtemp = sampleServiceProxyid.signInAdmin(userId_24idTemp,password_25idTemp);
if(signInAdmin112mtemp == null){
%>
<%=signInAdmin112mtemp %>
<%
}else{
        String tempResultreturnp113 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInAdmin112mtemp));
        %>
        <%= tempResultreturnp113 %>
        <%
}
break;
case 119:
        gotMethod = true;
        String type_26id=  request.getParameter("type122");
            java.lang.String type_26idTemp = null;
        if(!type_26id.equals("")){
         type_26idTemp  = type_26id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers119mtemp = sampleServiceProxyid.viewMembers(type_26idTemp);
if(viewMembers119mtemp == null){
%>
<%=viewMembers119mtemp %>
<%
}else{
        String tempreturnp120 = null;
        if(viewMembers119mtemp != null){
        java.util.List listreturnp120= java.util.Arrays.asList(viewMembers119mtemp);
        tempreturnp120 = listreturnp120.toString();
        }
        %>
        <%=tempreturnp120%>
        <%
}
break;
case 124:
        gotMethod = true;
        String userId_27id=  request.getParameter("userId127");
            java.lang.String userId_27idTemp = null;
        if(!userId_27id.equals("")){
         userId_27idTemp  = userId_27id;
        }
        java.lang.String deleteUserAccount124mtemp = sampleServiceProxyid.deleteUserAccount(userId_27idTemp);
if(deleteUserAccount124mtemp == null){
%>
<%=deleteUserAccount124mtemp %>
<%
}else{
        String tempResultreturnp125 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount124mtemp));
        %>
        <%= tempResultreturnp125 %>
        <%
}
break;
case 129:
        gotMethod = true;
        String userId_28id=  request.getParameter("userId132");
            java.lang.String userId_28idTemp = null;
        if(!userId_28id.equals("")){
         userId_28idTemp  = userId_28id;
        }
        java.lang.String deleteAdminAccount129mtemp = sampleServiceProxyid.deleteAdminAccount(userId_28idTemp);
if(deleteAdminAccount129mtemp == null){
%>
<%=deleteAdminAccount129mtemp %>
<%
}else{
        String tempResultreturnp130 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount129mtemp));
        %>
        <%= tempResultreturnp130 %>
        <%
}
break;
case 134:
        gotMethod = true;
        String movieName_29id=  request.getParameter("movieName137");
            java.lang.String movieName_29idTemp = null;
        if(!movieName_29id.equals("")){
         movieName_29idTemp  = movieName_29id;
        }
        String movieBanner_30id=  request.getParameter("movieBanner139");
            java.lang.String movieBanner_30idTemp = null;
        if(!movieBanner_30id.equals("")){
         movieBanner_30idTemp  = movieBanner_30id;
        }
        String releaseDate_31id=  request.getParameter("releaseDate141");
            java.lang.String releaseDate_31idTemp = null;
        if(!releaseDate_31id.equals("")){
         releaseDate_31idTemp  = releaseDate_31id;
        }
        String availableCopies_32id=  request.getParameter("availableCopies143");
        int availableCopies_32idTemp  = Integer.parseInt(availableCopies_32id);
        String categoryId_33id=  request.getParameter("categoryId145");
        int categoryId_33idTemp  = Integer.parseInt(categoryId_33id);
        java.lang.String createNewMovie134mtemp = sampleServiceProxyid.createNewMovie(movieName_29idTemp,movieBanner_30idTemp,releaseDate_31idTemp,availableCopies_32idTemp,categoryId_33idTemp);
if(createNewMovie134mtemp == null){
%>
<%=createNewMovie134mtemp %>
<%
}else{
        String tempResultreturnp135 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie134mtemp));
        %>
        <%= tempResultreturnp135 %>
        <%
}
break;
case 147:
        gotMethod = true;
        String movieId_34id=  request.getParameter("movieId150");
            java.lang.String movieId_34idTemp = null;
        if(!movieId_34id.equals("")){
         movieId_34idTemp  = movieId_34id;
        }
        java.lang.String deleteMovie147mtemp = sampleServiceProxyid.deleteMovie(movieId_34idTemp);
if(deleteMovie147mtemp == null){
%>
<%=deleteMovie147mtemp %>
<%
}else{
        String tempResultreturnp148 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie147mtemp));
        %>
        <%= tempResultreturnp148 %>
        <%
}
break;
case 152:
        gotMethod = true;
        String membershipId_35id=  request.getParameter("membershipId183");
        int membershipId_35idTemp  = Integer.parseInt(membershipId_35id);
        edu.sjsu.videolibrary.model.User displayUserInformation152mtemp = sampleServiceProxyid.displayUserInformation(membershipId_35idTemp);
if(displayUserInformation152mtemp == null){
%>
<%=displayUserInformation152mtemp %>
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
if(displayUserInformation152mtemp != null){
java.lang.String typestate155 = displayUserInformation152mtemp.getState();
        String tempResultstate155 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate155));
        %>
        <%= tempResultstate155 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typezip157 = displayUserInformation152mtemp.getZip();
        String tempResultzip157 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip157));
        %>
        <%= tempResultzip157 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typestartDate159 = displayUserInformation152mtemp.getStartDate();
        String tempResultstartDate159 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate159));
        %>
        <%= tempResultstartDate159 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typelatestPaymentDate161 = displayUserInformation152mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate161 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate161));
        %>
        <%= tempResultlatestPaymentDate161 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typemembershipType163 = displayUserInformation152mtemp.getMembershipType();
        String tempResultmembershipType163 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType163));
        %>
        <%= tempResultmembershipType163 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typecity165 = displayUserInformation152mtemp.getCity();
        String tempResultcity165 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity165));
        %>
        <%= tempResultcity165 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
%>
<%=displayUserInformation152mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typeuserId169 = displayUserInformation152mtemp.getUserId();
        String tempResultuserId169 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId169));
        %>
        <%= tempResultuserId169 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String[] typemovieList171 = displayUserInformation152mtemp.getMovieList();
        String tempmovieList171 = null;
        if(typemovieList171 != null){
        java.util.List listmovieList171= java.util.Arrays.asList(typemovieList171);
        tempmovieList171 = listmovieList171.toString();
        }
        %>
        <%=tempmovieList171%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typeaddress173 = displayUserInformation152mtemp.getAddress();
        String tempResultaddress173 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress173));
        %>
        <%= tempResultaddress173 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typepassword175 = displayUserInformation152mtemp.getPassword();
        String tempResultpassword175 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword175));
        %>
        <%= tempResultpassword175 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typefirstName177 = displayUserInformation152mtemp.getFirstName();
        String tempResultfirstName177 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName177));
        %>
        <%= tempResultfirstName177 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typelastName179 = displayUserInformation152mtemp.getLastName();
        String tempResultlastName179 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName179));
        %>
        <%= tempResultlastName179 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation152mtemp != null){
java.lang.String typecreditCardNumber181 = displayUserInformation152mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber181 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber181));
        %>
        <%= tempResultcreditCardNumber181 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 185:
        gotMethod = true;
        String movieId_36id=  request.getParameter("movieId208");
        int movieId_36idTemp  = Integer.parseInt(movieId_36id);
        edu.sjsu.videolibrary.model.Movie displayMovieInformation185mtemp = sampleServiceProxyid.displayMovieInformation(movieId_36idTemp);
if(displayMovieInformation185mtemp == null){
%>
<%=displayMovieInformation185mtemp %>
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
if(displayMovieInformation185mtemp != null){
java.lang.String typemovieBanner188 = displayMovieInformation185mtemp.getMovieBanner();
        String tempResultmovieBanner188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner188));
        %>
        <%= tempResultmovieBanner188 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
java.lang.String typereleaseDate190 = displayMovieInformation185mtemp.getReleaseDate();
        String tempResultreleaseDate190 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate190));
        %>
        <%= tempResultreleaseDate190 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
java.lang.String typemovieName192 = displayMovieInformation185mtemp.getMovieName();
        String tempResultmovieName192 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName192));
        %>
        <%= tempResultmovieName192 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
%>
<%=displayMovieInformation185mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
%>
<%=displayMovieInformation185mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryName:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
java.lang.String typecategoryName198 = displayMovieInformation185mtemp.getCategoryName();
        String tempResultcategoryName198 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategoryName198));
        %>
        <%= tempResultcategoryName198 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
%>
<%=displayMovieInformation185mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
java.lang.String typecatagory202 = displayMovieInformation185mtemp.getCatagory();
        String tempResultcatagory202 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory202));
        %>
        <%= tempResultcatagory202 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
%>
<%=displayMovieInformation185mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation185mtemp != null){
java.lang.String[] typebuyerList206 = displayMovieInformation185mtemp.getBuyerList();
        String tempbuyerList206 = null;
        if(typebuyerList206 != null){
        java.util.List listbuyerList206= java.util.Arrays.asList(typebuyerList206);
        tempbuyerList206 = listbuyerList206.toString();
        }
        %>
        <%=tempbuyerList206%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 210:
        gotMethod = true;
        String membershipId_37id=  request.getParameter("membershipId213");
        int membershipId_37idTemp  = Integer.parseInt(membershipId_37id);
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions210mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_37idTemp);
if(viewAccountTransactions210mtemp == null){
%>
<%=viewAccountTransactions210mtemp %>
<%
}else{
        String tempreturnp211 = null;
        if(viewAccountTransactions210mtemp != null){
        java.util.List listreturnp211= java.util.Arrays.asList(viewAccountTransactions210mtemp);
        tempreturnp211 = listreturnp211.toString();
        }
        %>
        <%=tempreturnp211%>
        <%
}
break;
case 215:
        gotMethod = true;
        String membershipId_38id=  request.getParameter("membershipId218");
        int membershipId_38idTemp  = Integer.parseInt(membershipId_38id);
        java.lang.String makeMonthlyPayment215mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_38idTemp);
if(makeMonthlyPayment215mtemp == null){
%>
<%=makeMonthlyPayment215mtemp %>
<%
}else{
        String tempResultreturnp216 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment215mtemp));
        %>
        <%= tempResultreturnp216 %>
        <%
}
break;
case 220:
        gotMethod = true;
        String membershipId_39id=  request.getParameter("membershipId223");
        int membershipId_39idTemp  = Integer.parseInt(membershipId_39id);
        String userId_40id=  request.getParameter("userId225");
            java.lang.String userId_40idTemp = null;
        if(!userId_40id.equals("")){
         userId_40idTemp  = userId_40id;
        }
        String firstName_41id=  request.getParameter("firstName227");
            java.lang.String firstName_41idTemp = null;
        if(!firstName_41id.equals("")){
         firstName_41idTemp  = firstName_41id;
        }
        String lastName_42id=  request.getParameter("lastName229");
            java.lang.String lastName_42idTemp = null;
        if(!lastName_42id.equals("")){
         lastName_42idTemp  = lastName_42id;
        }
        String address_43id=  request.getParameter("address231");
            java.lang.String address_43idTemp = null;
        if(!address_43id.equals("")){
         address_43idTemp  = address_43id;
        }
        String city_44id=  request.getParameter("city233");
            java.lang.String city_44idTemp = null;
        if(!city_44id.equals("")){
         city_44idTemp  = city_44id;
        }
        String state_45id=  request.getParameter("state235");
            java.lang.String state_45idTemp = null;
        if(!state_45id.equals("")){
         state_45idTemp  = state_45id;
        }
        String zipCode_46id=  request.getParameter("zipCode237");
            java.lang.String zipCode_46idTemp = null;
        if(!zipCode_46id.equals("")){
         zipCode_46idTemp  = zipCode_46id;
        }
        String membershipType_47id=  request.getParameter("membershipType239");
            java.lang.String membershipType_47idTemp = null;
        if(!membershipType_47id.equals("")){
         membershipType_47idTemp  = membershipType_47id;
        }
        String creditCardNumber_48id=  request.getParameter("creditCardNumber241");
            java.lang.String creditCardNumber_48idTemp = null;
        if(!creditCardNumber_48id.equals("")){
         creditCardNumber_48idTemp  = creditCardNumber_48id;
        }
        java.lang.String updateUserInfo220mtemp = sampleServiceProxyid.updateUserInfo(membershipId_39idTemp,userId_40idTemp,firstName_41idTemp,lastName_42idTemp,address_43idTemp,city_44idTemp,state_45idTemp,zipCode_46idTemp,membershipType_47idTemp,creditCardNumber_48idTemp);
if(updateUserInfo220mtemp == null){
%>
<%=updateUserInfo220mtemp %>
<%
}else{
        String tempResultreturnp221 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo220mtemp));
        %>
        <%= tempResultreturnp221 %>
        <%
}
break;
case 243:
        gotMethod = true;
        String membershipId_49id=  request.getParameter("membershipId246");
        int membershipId_49idTemp  = Integer.parseInt(membershipId_49id);
        String oldPassword_50id=  request.getParameter("oldPassword248");
            java.lang.String oldPassword_50idTemp = null;
        if(!oldPassword_50id.equals("")){
         oldPassword_50idTemp  = oldPassword_50id;
        }
        String newPassword_51id=  request.getParameter("newPassword250");
            java.lang.String newPassword_51idTemp = null;
        if(!newPassword_51id.equals("")){
         newPassword_51idTemp  = newPassword_51id;
        }
        java.lang.String updatePassword243mtemp = sampleServiceProxyid.updatePassword(membershipId_49idTemp,oldPassword_50idTemp,newPassword_51idTemp);
if(updatePassword243mtemp == null){
%>
<%=updatePassword243mtemp %>
<%
}else{
        String tempResultreturnp244 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword243mtemp));
        %>
        <%= tempResultreturnp244 %>
        <%
}
break;
case 252:
        gotMethod = true;
        String movieId_52id=  request.getParameter("movieId255");
        int movieId_52idTemp  = Integer.parseInt(movieId_52id);
        String movieName_53id=  request.getParameter("movieName257");
            java.lang.String movieName_53idTemp = null;
        if(!movieName_53id.equals("")){
         movieName_53idTemp  = movieName_53id;
        }
        String movieBanner_54id=  request.getParameter("movieBanner259");
            java.lang.String movieBanner_54idTemp = null;
        if(!movieBanner_54id.equals("")){
         movieBanner_54idTemp  = movieBanner_54id;
        }
        String releaseDate_55id=  request.getParameter("releaseDate261");
            java.lang.String releaseDate_55idTemp = null;
        if(!releaseDate_55id.equals("")){
         releaseDate_55idTemp  = releaseDate_55id;
        }
        String availableCopies_56id=  request.getParameter("availableCopies263");
        int availableCopies_56idTemp  = Integer.parseInt(availableCopies_56id);
        String rentAmount_57id=  request.getParameter("rentAmount265");
        double rentAmount_57idTemp  = Double.parseDouble(rentAmount_57id);
        String categoryId_58id=  request.getParameter("categoryId267");
        int categoryId_58idTemp  = Integer.parseInt(categoryId_58id);
        java.lang.String updateMovieInfo252mtemp = sampleServiceProxyid.updateMovieInfo(movieId_52idTemp,movieName_53idTemp,movieBanner_54idTemp,releaseDate_55idTemp,availableCopies_56idTemp,rentAmount_57idTemp,categoryId_58idTemp);
if(updateMovieInfo252mtemp == null){
%>
<%=updateMovieInfo252mtemp %>
<%
}else{
        String tempResultreturnp253 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo252mtemp));
        %>
        <%= tempResultreturnp253 %>
        <%
}
break;
case 269:
        gotMethod = true;
        String membershipId_59id=  request.getParameter("membershipId272");
        int membershipId_59idTemp  = Integer.parseInt(membershipId_59id);
        String month_60id=  request.getParameter("month274");
        int month_60idTemp  = Integer.parseInt(month_60id);
        String year_61id=  request.getParameter("year276");
        int year_61idTemp  = Integer.parseInt(year_61id);
        java.lang.String generateMonthlyStatement269mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_59idTemp,month_60idTemp,year_61idTemp);
if(generateMonthlyStatement269mtemp == null){
%>
<%=generateMonthlyStatement269mtemp %>
<%
}else{
        String tempResultreturnp270 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement269mtemp));
        %>
        <%= tempResultreturnp270 %>
        <%
}
break;
case 278:
        gotMethod = true;
        String membershipId_62id=  request.getParameter("membershipId281");
        int membershipId_62idTemp  = Integer.parseInt(membershipId_62id);
        String month_63id=  request.getParameter("month283");
        int month_63idTemp  = Integer.parseInt(month_63id);
        String year_64id=  request.getParameter("year285");
        int year_64idTemp  = Integer.parseInt(year_64id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement278mtemp = sampleServiceProxyid.viewStatement(membershipId_62idTemp,month_63idTemp,year_64idTemp);
if(viewStatement278mtemp == null){
%>
<%=viewStatement278mtemp %>
<%
}else{
        String tempreturnp279 = null;
        if(viewStatement278mtemp != null){
        java.util.List listreturnp279= java.util.Arrays.asList(viewStatement278mtemp);
        tempreturnp279 = listreturnp279.toString();
        }
        %>
        <%=tempreturnp279%>
        <%
}
break;
case 287:
        gotMethod = true;
        String membershipId_65id=  request.getParameter("membershipId296");
        int membershipId_65idTemp  = Integer.parseInt(membershipId_65id);
        String month_66id=  request.getParameter("month298");
        int month_66idTemp  = Integer.parseInt(month_66id);
        String year_67id=  request.getParameter("year300");
        int year_67idTemp  = Integer.parseInt(year_67id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember287mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_65idTemp,month_66idTemp,year_67idTemp);
if(generateMonthlyBillForPremiumMember287mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember287mtemp %>
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
if(generateMonthlyBillForPremiumMember287mtemp != null){
java.lang.String typepaymentStatus290 = generateMonthlyBillForPremiumMember287mtemp.getPaymentStatus();
        String tempResultpaymentStatus290 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus290));
        %>
        <%= tempResultpaymentStatus290 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember287mtemp != null){
java.lang.String typepaymentDate292 = generateMonthlyBillForPremiumMember287mtemp.getPaymentDate();
        String tempResultpaymentDate292 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate292));
        %>
        <%= tempResultpaymentDate292 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember287mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember287mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 302:
        gotMethod = true;
        double getRentAmountforMovie302mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp303 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie302mtemp));
        %>
        <%= tempResultreturnp303 %>
        <%
break;
case 305:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember305mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp306 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember305mtemp));
        %>
        <%= tempResultreturnp306 %>
        <%
break;
case 308:
        gotMethod = true;
        java.lang.String[] listCategories308mtemp = sampleServiceProxyid.listCategories();
if(listCategories308mtemp == null){
%>
<%=listCategories308mtemp %>
<%
}else{
        String tempreturnp309 = null;
        if(listCategories308mtemp != null){
        java.util.List listreturnp309= java.util.Arrays.asList(listCategories308mtemp);
        tempreturnp309 = listreturnp309.toString();
        }
        %>
        <%=tempreturnp309%>
        <%
}
break;
case 311:
        gotMethod = true;
        String categoryName_68id=  request.getParameter("categoryName314");
            java.lang.String categoryName_68idTemp = null;
        if(!categoryName_68id.equals("")){
         categoryName_68idTemp  = categoryName_68id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory311mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_68idTemp);
if(listMoviesByCategory311mtemp == null){
%>
<%=listMoviesByCategory311mtemp %>
<%
}else{
        String tempreturnp312 = null;
        if(listMoviesByCategory311mtemp != null){
        java.util.List listreturnp312= java.util.Arrays.asList(listMoviesByCategory311mtemp);
        tempreturnp312 = listreturnp312.toString();
        }
        %>
        <%=tempreturnp312%>
        <%
}
break;
case 316:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies316mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies316mtemp == null){
%>
<%=listAllMovies316mtemp %>
<%
}else{
        String tempreturnp317 = null;
        if(listAllMovies316mtemp != null){
        java.util.List listreturnp317= java.util.Arrays.asList(listAllMovies316mtemp);
        tempreturnp317 = listreturnp317.toString();
        }
        %>
        <%=tempreturnp317%>
        <%
}
break;
case 319:
        gotMethod = true;
        String userInput_69id=  request.getParameter("userInput322");
            java.lang.String userInput_69idTemp = null;
        if(!userInput_69id.equals("")){
         userInput_69idTemp  = userInput_69id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByName319mtemp = sampleServiceProxyid.searchByName(userInput_69idTemp);
if(searchByName319mtemp == null){
%>
<%=searchByName319mtemp %>
<%
}else{
        String tempreturnp320 = null;
        if(searchByName319mtemp != null){
        java.util.List listreturnp320= java.util.Arrays.asList(searchByName319mtemp);
        tempreturnp320 = listreturnp320.toString();
        }
        %>
        <%=tempreturnp320%>
        <%
}
break;
case 324:
        gotMethod = true;
        String userInput_70id=  request.getParameter("userInput327");
            java.lang.String userInput_70idTemp = null;
        if(!userInput_70id.equals("")){
         userInput_70idTemp  = userInput_70id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByMovieBanner324mtemp = sampleServiceProxyid.searchByMovieBanner(userInput_70idTemp);
if(searchByMovieBanner324mtemp == null){
%>
<%=searchByMovieBanner324mtemp %>
<%
}else{
        String tempreturnp325 = null;
        if(searchByMovieBanner324mtemp != null){
        java.util.List listreturnp325= java.util.Arrays.asList(searchByMovieBanner324mtemp);
        tempreturnp325 = listreturnp325.toString();
        }
        %>
        <%=tempreturnp325%>
        <%
}
break;
case 329:
        gotMethod = true;
        String userInput_71id=  request.getParameter("userInput332");
            java.lang.String userInput_71idTemp = null;
        if(!userInput_71id.equals("")){
         userInput_71idTemp  = userInput_71id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByReleaseDate329mtemp = sampleServiceProxyid.searchByReleaseDate(userInput_71idTemp);
if(searchByReleaseDate329mtemp == null){
%>
<%=searchByReleaseDate329mtemp %>
<%
}else{
        String tempreturnp330 = null;
        if(searchByReleaseDate329mtemp != null){
        java.util.List listreturnp330= java.util.Arrays.asList(searchByReleaseDate329mtemp);
        tempreturnp330 = listreturnp330.toString();
        }
        %>
        <%=tempreturnp330%>
        <%
}
break;
case 334:
        gotMethod = true;
        String adminInput_72id=  request.getParameter("adminInput337");
            java.lang.String adminInput_72idTemp = null;
        if(!adminInput_72id.equals("")){
         adminInput_72idTemp  = adminInput_72id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByFirstName334mtemp = sampleServiceProxyid.searchUserByFirstName(adminInput_72idTemp);
if(searchUserByFirstName334mtemp == null){
%>
<%=searchUserByFirstName334mtemp %>
<%
}else{
        String tempreturnp335 = null;
        if(searchUserByFirstName334mtemp != null){
        java.util.List listreturnp335= java.util.Arrays.asList(searchUserByFirstName334mtemp);
        tempreturnp335 = listreturnp335.toString();
        }
        %>
        <%=tempreturnp335%>
        <%
}
break;
case 339:
        gotMethod = true;
        String adminInput_73id=  request.getParameter("adminInput342");
            java.lang.String adminInput_73idTemp = null;
        if(!adminInput_73id.equals("")){
         adminInput_73idTemp  = adminInput_73id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByLastName339mtemp = sampleServiceProxyid.searchUserByLastName(adminInput_73idTemp);
if(searchUserByLastName339mtemp == null){
%>
<%=searchUserByLastName339mtemp %>
<%
}else{
        String tempreturnp340 = null;
        if(searchUserByLastName339mtemp != null){
        java.util.List listreturnp340= java.util.Arrays.asList(searchUserByLastName339mtemp);
        tempreturnp340 = listreturnp340.toString();
        }
        %>
        <%=tempreturnp340%>
        <%
}
break;
case 344:
        gotMethod = true;
        String adminInput_74id=  request.getParameter("adminInput347");
            java.lang.String adminInput_74idTemp = null;
        if(!adminInput_74id.equals("")){
         adminInput_74idTemp  = adminInput_74id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByCity344mtemp = sampleServiceProxyid.searchUserByCity(adminInput_74idTemp);
if(searchUserByCity344mtemp == null){
%>
<%=searchUserByCity344mtemp %>
<%
}else{
        String tempreturnp345 = null;
        if(searchUserByCity344mtemp != null){
        java.util.List listreturnp345= java.util.Arrays.asList(searchUserByCity344mtemp);
        tempreturnp345 = listreturnp345.toString();
        }
        %>
        <%=tempreturnp345%>
        <%
}
break;
case 349:
        gotMethod = true;
        String adminInput_75id=  request.getParameter("adminInput352");
            java.lang.String adminInput_75idTemp = null;
        if(!adminInput_75id.equals("")){
         adminInput_75idTemp  = adminInput_75id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByState349mtemp = sampleServiceProxyid.searchUserByState(adminInput_75idTemp);
if(searchUserByState349mtemp == null){
%>
<%=searchUserByState349mtemp %>
<%
}else{
        String tempreturnp350 = null;
        if(searchUserByState349mtemp != null){
        java.util.List listreturnp350= java.util.Arrays.asList(searchUserByState349mtemp);
        tempreturnp350 = listreturnp350.toString();
        }
        %>
        <%=tempreturnp350%>
        <%
}
break;
case 354:
        gotMethod = true;
        String adminInput_76id=  request.getParameter("adminInput357");
            java.lang.String adminInput_76idTemp = null;
        if(!adminInput_76id.equals("")){
         adminInput_76idTemp  = adminInput_76id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByMemberShipType354mtemp = sampleServiceProxyid.searchUserByMemberShipType(adminInput_76idTemp);
if(searchUserByMemberShipType354mtemp == null){
%>
<%=searchUserByMemberShipType354mtemp %>
<%
}else{
        String tempreturnp355 = null;
        if(searchUserByMemberShipType354mtemp != null){
        java.util.List listreturnp355= java.util.Arrays.asList(searchUserByMemberShipType354mtemp);
        tempreturnp355 = listreturnp355.toString();
        }
        %>
        <%=tempreturnp355%>
        <%
}
break;
case 359:
        gotMethod = true;
        String adminInput_77id=  request.getParameter("adminInput362");
        int adminInput_77idTemp  = Integer.parseInt(adminInput_77id);
        edu.sjsu.videolibrary.model.User[] searchUserByMembershipId359mtemp = sampleServiceProxyid.searchUserByMembershipId(adminInput_77idTemp);
if(searchUserByMembershipId359mtemp == null){
%>
<%=searchUserByMembershipId359mtemp %>
<%
}else{
        String tempreturnp360 = null;
        if(searchUserByMembershipId359mtemp != null){
        java.util.List listreturnp360= java.util.Arrays.asList(searchUserByMembershipId359mtemp);
        tempreturnp360 = listreturnp360.toString();
        }
        %>
        <%=tempreturnp360%>
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