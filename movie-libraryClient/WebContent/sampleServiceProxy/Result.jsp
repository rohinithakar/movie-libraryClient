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
        boolean addItemsToCart17mtemp = sampleServiceProxyid.addItemsToCart(membershipId_1idTemp,movieId_2idTemp);
        String tempResultreturnp18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addItemsToCart17mtemp));
        %>
        <%= tempResultreturnp18 %>
        <%
break;
case 24:
        gotMethod = true;
        String movieId_3id=  request.getParameter("movieId27");
        int movieId_3idTemp  = Integer.parseInt(movieId_3id);
        String membershipId_4id=  request.getParameter("membershipId29");
        int membershipId_4idTemp  = Integer.parseInt(membershipId_4id);
        boolean deleteMovieFromCart24mtemp = sampleServiceProxyid.deleteMovieFromCart(movieId_3idTemp,membershipId_4idTemp);
        String tempResultreturnp25 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovieFromCart24mtemp));
        %>
        <%= tempResultreturnp25 %>
        <%
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
        String userId_6id=  request.getParameter("userId39");
            java.lang.String userId_6idTemp = null;
        if(!userId_6id.equals("")){
         userId_6idTemp  = userId_6id;
        }
        String password_7id=  request.getParameter("password41");
            java.lang.String password_7idTemp = null;
        if(!password_7id.equals("")){
         password_7idTemp  = password_7id;
        }
        String memType_8id=  request.getParameter("memType43");
            java.lang.String memType_8idTemp = null;
        if(!memType_8id.equals("")){
         memType_8idTemp  = memType_8id;
        }
        String firstName_9id=  request.getParameter("firstName45");
            java.lang.String firstName_9idTemp = null;
        if(!firstName_9id.equals("")){
         firstName_9idTemp  = firstName_9id;
        }
        String lastName_10id=  request.getParameter("lastName47");
            java.lang.String lastName_10idTemp = null;
        if(!lastName_10id.equals("")){
         lastName_10idTemp  = lastName_10id;
        }
        String address_11id=  request.getParameter("address49");
            java.lang.String address_11idTemp = null;
        if(!address_11id.equals("")){
         address_11idTemp  = address_11id;
        }
        String city_12id=  request.getParameter("city51");
            java.lang.String city_12idTemp = null;
        if(!city_12id.equals("")){
         city_12idTemp  = city_12id;
        }
        String state_13id=  request.getParameter("state53");
            java.lang.String state_13idTemp = null;
        if(!state_13id.equals("")){
         state_13idTemp  = state_13id;
        }
        String zipCode_14id=  request.getParameter("zipCode55");
            java.lang.String zipCode_14idTemp = null;
        if(!zipCode_14id.equals("")){
         zipCode_14idTemp  = zipCode_14id;
        }
        String ccNumber_15id=  request.getParameter("ccNumber57");
            java.lang.String ccNumber_15idTemp = null;
        if(!ccNumber_15id.equals("")){
         ccNumber_15idTemp  = ccNumber_15id;
        }
        java.lang.String signUpUser36mtemp = sampleServiceProxyid.signUpUser(userId_6idTemp,password_7idTemp,memType_8idTemp,firstName_9idTemp,lastName_10idTemp,address_11idTemp,city_12idTemp,state_13idTemp,zipCode_14idTemp,ccNumber_15idTemp);
if(signUpUser36mtemp == null){
%>
<%=signUpUser36mtemp %>
<%
}else{
        String tempResultreturnp37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpUser36mtemp));
        %>
        <%= tempResultreturnp37 %>
        <%
}
break;
case 59:
        gotMethod = true;
        String userId_16id=  request.getParameter("userId62");
            java.lang.String userId_16idTemp = null;
        if(!userId_16id.equals("")){
         userId_16idTemp  = userId_16id;
        }
        String password_17id=  request.getParameter("password64");
            java.lang.String password_17idTemp = null;
        if(!password_17id.equals("")){
         password_17idTemp  = password_17id;
        }
        String firstName_18id=  request.getParameter("firstName66");
            java.lang.String firstName_18idTemp = null;
        if(!firstName_18id.equals("")){
         firstName_18idTemp  = firstName_18id;
        }
        String lastName_19id=  request.getParameter("lastName68");
            java.lang.String lastName_19idTemp = null;
        if(!lastName_19id.equals("")){
         lastName_19idTemp  = lastName_19id;
        }
        java.lang.String signUpAdmin59mtemp = sampleServiceProxyid.signUpAdmin(userId_16idTemp,password_17idTemp,firstName_18idTemp,lastName_19idTemp);
if(signUpAdmin59mtemp == null){
%>
<%=signUpAdmin59mtemp %>
<%
}else{
        String tempResultreturnp60 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin59mtemp));
        %>
        <%= tempResultreturnp60 %>
        <%
}
break;
case 70:
        gotMethod = true;
        String userId_20id=  request.getParameter("userId73");
            java.lang.String userId_20idTemp = null;
        if(!userId_20id.equals("")){
         userId_20idTemp  = userId_20id;
        }
        String password_21id=  request.getParameter("password75");
            java.lang.String password_21idTemp = null;
        if(!password_21id.equals("")){
         password_21idTemp  = password_21id;
        }
        java.lang.String signInUser70mtemp = sampleServiceProxyid.signInUser(userId_20idTemp,password_21idTemp);
if(signInUser70mtemp == null){
%>
<%=signInUser70mtemp %>
<%
}else{
        String tempResultreturnp71 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInUser70mtemp));
        %>
        <%= tempResultreturnp71 %>
        <%
}
break;
case 77:
        gotMethod = true;
        String userId_22id=  request.getParameter("userId80");
            java.lang.String userId_22idTemp = null;
        if(!userId_22id.equals("")){
         userId_22idTemp  = userId_22id;
        }
        String password_23id=  request.getParameter("password82");
            java.lang.String password_23idTemp = null;
        if(!password_23id.equals("")){
         password_23idTemp  = password_23id;
        }
        java.lang.String signInAdmin77mtemp = sampleServiceProxyid.signInAdmin(userId_22idTemp,password_23idTemp);
if(signInAdmin77mtemp == null){
%>
<%=signInAdmin77mtemp %>
<%
}else{
        String tempResultreturnp78 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInAdmin77mtemp));
        %>
        <%= tempResultreturnp78 %>
        <%
}
break;
case 84:
        gotMethod = true;
        String type_24id=  request.getParameter("type87");
            java.lang.String type_24idTemp = null;
        if(!type_24id.equals("")){
         type_24idTemp  = type_24id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers84mtemp = sampleServiceProxyid.viewMembers(type_24idTemp);
if(viewMembers84mtemp == null){
%>
<%=viewMembers84mtemp %>
<%
}else{
        String tempreturnp85 = null;
        if(viewMembers84mtemp != null){
        java.util.List listreturnp85= java.util.Arrays.asList(viewMembers84mtemp);
        tempreturnp85 = listreturnp85.toString();
        }
        %>
        <%=tempreturnp85%>
        <%
}
break;
case 89:
        gotMethod = true;
        String userId_25id=  request.getParameter("userId92");
            java.lang.String userId_25idTemp = null;
        if(!userId_25id.equals("")){
         userId_25idTemp  = userId_25id;
        }
        java.lang.String deleteUserAccount89mtemp = sampleServiceProxyid.deleteUserAccount(userId_25idTemp);
if(deleteUserAccount89mtemp == null){
%>
<%=deleteUserAccount89mtemp %>
<%
}else{
        String tempResultreturnp90 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount89mtemp));
        %>
        <%= tempResultreturnp90 %>
        <%
}
break;
case 94:
        gotMethod = true;
        String userId_26id=  request.getParameter("userId97");
            java.lang.String userId_26idTemp = null;
        if(!userId_26id.equals("")){
         userId_26idTemp  = userId_26id;
        }
        java.lang.String deleteAdminAccount94mtemp = sampleServiceProxyid.deleteAdminAccount(userId_26idTemp);
if(deleteAdminAccount94mtemp == null){
%>
<%=deleteAdminAccount94mtemp %>
<%
}else{
        String tempResultreturnp95 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount94mtemp));
        %>
        <%= tempResultreturnp95 %>
        <%
}
break;
case 99:
        gotMethod = true;
        String movieName_27id=  request.getParameter("movieName102");
            java.lang.String movieName_27idTemp = null;
        if(!movieName_27id.equals("")){
         movieName_27idTemp  = movieName_27id;
        }
        String movieBanner_28id=  request.getParameter("movieBanner104");
            java.lang.String movieBanner_28idTemp = null;
        if(!movieBanner_28id.equals("")){
         movieBanner_28idTemp  = movieBanner_28id;
        }
        String releaseDate_29id=  request.getParameter("releaseDate106");
            java.lang.String releaseDate_29idTemp = null;
        if(!releaseDate_29id.equals("")){
         releaseDate_29idTemp  = releaseDate_29id;
        }
        String availableCopies_30id=  request.getParameter("availableCopies108");
        int availableCopies_30idTemp  = Integer.parseInt(availableCopies_30id);
        String categoryId_31id=  request.getParameter("categoryId110");
        int categoryId_31idTemp  = Integer.parseInt(categoryId_31id);
        java.lang.String createNewMovie99mtemp = sampleServiceProxyid.createNewMovie(movieName_27idTemp,movieBanner_28idTemp,releaseDate_29idTemp,availableCopies_30idTemp,categoryId_31idTemp);
if(createNewMovie99mtemp == null){
%>
<%=createNewMovie99mtemp %>
<%
}else{
        String tempResultreturnp100 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie99mtemp));
        %>
        <%= tempResultreturnp100 %>
        <%
}
break;
case 112:
        gotMethod = true;
        String movieId_32id=  request.getParameter("movieId115");
            java.lang.String movieId_32idTemp = null;
        if(!movieId_32id.equals("")){
         movieId_32idTemp  = movieId_32id;
        }
        java.lang.String deleteMovie112mtemp = sampleServiceProxyid.deleteMovie(movieId_32idTemp);
if(deleteMovie112mtemp == null){
%>
<%=deleteMovie112mtemp %>
<%
}else{
        String tempResultreturnp113 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie112mtemp));
        %>
        <%= tempResultreturnp113 %>
        <%
}
break;
case 117:
        gotMethod = true;
        String membershipId_33id=  request.getParameter("membershipId148");
            java.lang.String membershipId_33idTemp = null;
        if(!membershipId_33id.equals("")){
         membershipId_33idTemp  = membershipId_33id;
        }
        edu.sjsu.videolibrary.model.User displayUserInformation117mtemp = sampleServiceProxyid.displayUserInformation(membershipId_33idTemp);
if(displayUserInformation117mtemp == null){
%>
<%=displayUserInformation117mtemp %>
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
if(displayUserInformation117mtemp != null){
java.lang.String typestate120 = displayUserInformation117mtemp.getState();
        String tempResultstate120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate120));
        %>
        <%= tempResultstate120 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typezip122 = displayUserInformation117mtemp.getZip();
        String tempResultzip122 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip122));
        %>
        <%= tempResultzip122 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typestartDate124 = displayUserInformation117mtemp.getStartDate();
        String tempResultstartDate124 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate124));
        %>
        <%= tempResultstartDate124 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typelatestPaymentDate126 = displayUserInformation117mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate126 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate126));
        %>
        <%= tempResultlatestPaymentDate126 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typemembershipType128 = displayUserInformation117mtemp.getMembershipType();
        String tempResultmembershipType128 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType128));
        %>
        <%= tempResultmembershipType128 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typecity130 = displayUserInformation117mtemp.getCity();
        String tempResultcity130 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity130));
        %>
        <%= tempResultcity130 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
%>
<%=displayUserInformation117mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typeuserId134 = displayUserInformation117mtemp.getUserId();
        String tempResultuserId134 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId134));
        %>
        <%= tempResultuserId134 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String[] typemovieList136 = displayUserInformation117mtemp.getMovieList();
        String tempmovieList136 = null;
        if(typemovieList136 != null){
        java.util.List listmovieList136= java.util.Arrays.asList(typemovieList136);
        tempmovieList136 = listmovieList136.toString();
        }
        %>
        <%=tempmovieList136%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typeaddress138 = displayUserInformation117mtemp.getAddress();
        String tempResultaddress138 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress138));
        %>
        <%= tempResultaddress138 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typepassword140 = displayUserInformation117mtemp.getPassword();
        String tempResultpassword140 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword140));
        %>
        <%= tempResultpassword140 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typefirstName142 = displayUserInformation117mtemp.getFirstName();
        String tempResultfirstName142 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName142));
        %>
        <%= tempResultfirstName142 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typelastName144 = displayUserInformation117mtemp.getLastName();
        String tempResultlastName144 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName144));
        %>
        <%= tempResultlastName144 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation117mtemp != null){
java.lang.String typecreditCardNumber146 = displayUserInformation117mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber146 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber146));
        %>
        <%= tempResultcreditCardNumber146 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 150:
        gotMethod = true;
        String movieId_34id=  request.getParameter("movieId171");
            java.lang.String movieId_34idTemp = null;
        if(!movieId_34id.equals("")){
         movieId_34idTemp  = movieId_34id;
        }
        edu.sjsu.videolibrary.model.Movie displayMovieInformation150mtemp = sampleServiceProxyid.displayMovieInformation(movieId_34idTemp);
if(displayMovieInformation150mtemp == null){
%>
<%=displayMovieInformation150mtemp %>
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
if(displayMovieInformation150mtemp != null){
java.lang.String typemovieBanner153 = displayMovieInformation150mtemp.getMovieBanner();
        String tempResultmovieBanner153 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner153));
        %>
        <%= tempResultmovieBanner153 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
java.lang.String typereleaseDate155 = displayMovieInformation150mtemp.getReleaseDate();
        String tempResultreleaseDate155 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate155));
        %>
        <%= tempResultreleaseDate155 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
java.lang.String typemovieName157 = displayMovieInformation150mtemp.getMovieName();
        String tempResultmovieName157 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName157));
        %>
        <%= tempResultmovieName157 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
%>
<%=displayMovieInformation150mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
%>
<%=displayMovieInformation150mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
%>
<%=displayMovieInformation150mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
java.lang.String typecatagory165 = displayMovieInformation150mtemp.getCatagory();
        String tempResultcatagory165 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory165));
        %>
        <%= tempResultcatagory165 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
%>
<%=displayMovieInformation150mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation150mtemp != null){
java.lang.String[] typebuyerList169 = displayMovieInformation150mtemp.getBuyerList();
        String tempbuyerList169 = null;
        if(typebuyerList169 != null){
        java.util.List listbuyerList169= java.util.Arrays.asList(typebuyerList169);
        tempbuyerList169 = listbuyerList169.toString();
        }
        %>
        <%=tempbuyerList169%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 173:
        gotMethod = true;
        String membershipId_35id=  request.getParameter("membershipId176");
            java.lang.String membershipId_35idTemp = null;
        if(!membershipId_35id.equals("")){
         membershipId_35idTemp  = membershipId_35id;
        }
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions173mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_35idTemp);
if(viewAccountTransactions173mtemp == null){
%>
<%=viewAccountTransactions173mtemp %>
<%
}else{
        String tempreturnp174 = null;
        if(viewAccountTransactions173mtemp != null){
        java.util.List listreturnp174= java.util.Arrays.asList(viewAccountTransactions173mtemp);
        tempreturnp174 = listreturnp174.toString();
        }
        %>
        <%=tempreturnp174%>
        <%
}
break;
case 178:
        gotMethod = true;
        String membershipId_36id=  request.getParameter("membershipId181");
            java.lang.String membershipId_36idTemp = null;
        if(!membershipId_36id.equals("")){
         membershipId_36idTemp  = membershipId_36id;
        }
        java.lang.String makeMonthlyPayment178mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_36idTemp);
if(makeMonthlyPayment178mtemp == null){
%>
<%=makeMonthlyPayment178mtemp %>
<%
}else{
        String tempResultreturnp179 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment178mtemp));
        %>
        <%= tempResultreturnp179 %>
        <%
}
break;
case 183:
        gotMethod = true;
        String membershipId_37id=  request.getParameter("membershipId186");
            java.lang.String membershipId_37idTemp = null;
        if(!membershipId_37id.equals("")){
         membershipId_37idTemp  = membershipId_37id;
        }
        String userId_38id=  request.getParameter("userId188");
            java.lang.String userId_38idTemp = null;
        if(!userId_38id.equals("")){
         userId_38idTemp  = userId_38id;
        }
        String firstName_39id=  request.getParameter("firstName190");
            java.lang.String firstName_39idTemp = null;
        if(!firstName_39id.equals("")){
         firstName_39idTemp  = firstName_39id;
        }
        String lastName_40id=  request.getParameter("lastName192");
            java.lang.String lastName_40idTemp = null;
        if(!lastName_40id.equals("")){
         lastName_40idTemp  = lastName_40id;
        }
        String address_41id=  request.getParameter("address194");
            java.lang.String address_41idTemp = null;
        if(!address_41id.equals("")){
         address_41idTemp  = address_41id;
        }
        String city_42id=  request.getParameter("city196");
            java.lang.String city_42idTemp = null;
        if(!city_42id.equals("")){
         city_42idTemp  = city_42id;
        }
        String state_43id=  request.getParameter("state198");
            java.lang.String state_43idTemp = null;
        if(!state_43id.equals("")){
         state_43idTemp  = state_43id;
        }
        String zipCode_44id=  request.getParameter("zipCode200");
            java.lang.String zipCode_44idTemp = null;
        if(!zipCode_44id.equals("")){
         zipCode_44idTemp  = zipCode_44id;
        }
        String membershipType_45id=  request.getParameter("membershipType202");
            java.lang.String membershipType_45idTemp = null;
        if(!membershipType_45id.equals("")){
         membershipType_45idTemp  = membershipType_45id;
        }
        String creditCardNumber_46id=  request.getParameter("creditCardNumber204");
            java.lang.String creditCardNumber_46idTemp = null;
        if(!creditCardNumber_46id.equals("")){
         creditCardNumber_46idTemp  = creditCardNumber_46id;
        }
        java.lang.String updateUserInfo183mtemp = sampleServiceProxyid.updateUserInfo(membershipId_37idTemp,userId_38idTemp,firstName_39idTemp,lastName_40idTemp,address_41idTemp,city_42idTemp,state_43idTemp,zipCode_44idTemp,membershipType_45idTemp,creditCardNumber_46idTemp);
if(updateUserInfo183mtemp == null){
%>
<%=updateUserInfo183mtemp %>
<%
}else{
        String tempResultreturnp184 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo183mtemp));
        %>
        <%= tempResultreturnp184 %>
        <%
}
break;
case 206:
        gotMethod = true;
        String membershipId_47id=  request.getParameter("membershipId209");
            java.lang.String membershipId_47idTemp = null;
        if(!membershipId_47id.equals("")){
         membershipId_47idTemp  = membershipId_47id;
        }
        String oldPassword_48id=  request.getParameter("oldPassword211");
            java.lang.String oldPassword_48idTemp = null;
        if(!oldPassword_48id.equals("")){
         oldPassword_48idTemp  = oldPassword_48id;
        }
        String newPassword_49id=  request.getParameter("newPassword213");
            java.lang.String newPassword_49idTemp = null;
        if(!newPassword_49id.equals("")){
         newPassword_49idTemp  = newPassword_49id;
        }
        java.lang.String updatePassword206mtemp = sampleServiceProxyid.updatePassword(membershipId_47idTemp,oldPassword_48idTemp,newPassword_49idTemp);
if(updatePassword206mtemp == null){
%>
<%=updatePassword206mtemp %>
<%
}else{
        String tempResultreturnp207 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword206mtemp));
        %>
        <%= tempResultreturnp207 %>
        <%
}
break;
case 215:
        gotMethod = true;
        String movieId_50id=  request.getParameter("movieId218");
            java.lang.String movieId_50idTemp = null;
        if(!movieId_50id.equals("")){
         movieId_50idTemp  = movieId_50id;
        }
        String movieName_51id=  request.getParameter("movieName220");
            java.lang.String movieName_51idTemp = null;
        if(!movieName_51id.equals("")){
         movieName_51idTemp  = movieName_51id;
        }
        String movieBanner_52id=  request.getParameter("movieBanner222");
            java.lang.String movieBanner_52idTemp = null;
        if(!movieBanner_52id.equals("")){
         movieBanner_52idTemp  = movieBanner_52id;
        }
        String releaseDate_53id=  request.getParameter("releaseDate224");
            java.lang.String releaseDate_53idTemp = null;
        if(!releaseDate_53id.equals("")){
         releaseDate_53idTemp  = releaseDate_53id;
        }
        String availableCopies_54id=  request.getParameter("availableCopies226");
        int availableCopies_54idTemp  = Integer.parseInt(availableCopies_54id);
        String rentAmount_55id=  request.getParameter("rentAmount228");
        double rentAmount_55idTemp  = Double.parseDouble(rentAmount_55id);
        String categoryId_56id=  request.getParameter("categoryId230");
        int categoryId_56idTemp  = Integer.parseInt(categoryId_56id);
        java.lang.String updateMovieInfo215mtemp = sampleServiceProxyid.updateMovieInfo(movieId_50idTemp,movieName_51idTemp,movieBanner_52idTemp,releaseDate_53idTemp,availableCopies_54idTemp,rentAmount_55idTemp,categoryId_56idTemp);
if(updateMovieInfo215mtemp == null){
%>
<%=updateMovieInfo215mtemp %>
<%
}else{
        String tempResultreturnp216 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo215mtemp));
        %>
        <%= tempResultreturnp216 %>
        <%
}
break;
case 232:
        gotMethod = true;
        String membershipId_57id=  request.getParameter("membershipId235");
            java.lang.String membershipId_57idTemp = null;
        if(!membershipId_57id.equals("")){
         membershipId_57idTemp  = membershipId_57id;
        }
        String month_58id=  request.getParameter("month237");
        int month_58idTemp  = Integer.parseInt(month_58id);
        String year_59id=  request.getParameter("year239");
        int year_59idTemp  = Integer.parseInt(year_59id);
        java.lang.String generateMonthlyStatement232mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_57idTemp,month_58idTemp,year_59idTemp);
if(generateMonthlyStatement232mtemp == null){
%>
<%=generateMonthlyStatement232mtemp %>
<%
}else{
        String tempResultreturnp233 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement232mtemp));
        %>
        <%= tempResultreturnp233 %>
        <%
}
break;
case 241:
        gotMethod = true;
        String membershipId_60id=  request.getParameter("membershipId244");
            java.lang.String membershipId_60idTemp = null;
        if(!membershipId_60id.equals("")){
         membershipId_60idTemp  = membershipId_60id;
        }
        String month_61id=  request.getParameter("month246");
        int month_61idTemp  = Integer.parseInt(month_61id);
        String year_62id=  request.getParameter("year248");
        int year_62idTemp  = Integer.parseInt(year_62id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement241mtemp = sampleServiceProxyid.viewStatement(membershipId_60idTemp,month_61idTemp,year_62idTemp);
if(viewStatement241mtemp == null){
%>
<%=viewStatement241mtemp %>
<%
}else{
        String tempreturnp242 = null;
        if(viewStatement241mtemp != null){
        java.util.List listreturnp242= java.util.Arrays.asList(viewStatement241mtemp);
        tempreturnp242 = listreturnp242.toString();
        }
        %>
        <%=tempreturnp242%>
        <%
}
break;
case 250:
        gotMethod = true;
        String membershipId_63id=  request.getParameter("membershipId259");
            java.lang.String membershipId_63idTemp = null;
        if(!membershipId_63id.equals("")){
         membershipId_63idTemp  = membershipId_63id;
        }
        String month_64id=  request.getParameter("month261");
        int month_64idTemp  = Integer.parseInt(month_64id);
        String year_65id=  request.getParameter("year263");
        int year_65idTemp  = Integer.parseInt(year_65id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember250mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_63idTemp,month_64idTemp,year_65idTemp);
if(generateMonthlyBillForPremiumMember250mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember250mtemp %>
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
if(generateMonthlyBillForPremiumMember250mtemp != null){
java.lang.String typepaymentStatus253 = generateMonthlyBillForPremiumMember250mtemp.getPaymentStatus();
        String tempResultpaymentStatus253 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus253));
        %>
        <%= tempResultpaymentStatus253 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember250mtemp != null){
java.lang.String typepaymentDate255 = generateMonthlyBillForPremiumMember250mtemp.getPaymentDate();
        String tempResultpaymentDate255 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate255));
        %>
        <%= tempResultpaymentDate255 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember250mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember250mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 265:
        gotMethod = true;
        double getRentAmountforMovie265mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp266 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie265mtemp));
        %>
        <%= tempResultreturnp266 %>
        <%
break;
case 268:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember268mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp269 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember268mtemp));
        %>
        <%= tempResultreturnp269 %>
        <%
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