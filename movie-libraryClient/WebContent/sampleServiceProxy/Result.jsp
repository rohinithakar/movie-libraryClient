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
        String firstName_8id=  request.getParameter("firstName43");
            java.lang.String firstName_8idTemp = null;
        if(!firstName_8id.equals("")){
         firstName_8idTemp  = firstName_8id;
        }
        String lastName_9id=  request.getParameter("lastName45");
            java.lang.String lastName_9idTemp = null;
        if(!lastName_9id.equals("")){
         lastName_9idTemp  = lastName_9id;
        }
        java.lang.String signUpAdmin36mtemp = sampleServiceProxyid.signUpAdmin(userId_6idTemp,password_7idTemp,firstName_8idTemp,lastName_9idTemp);
if(signUpAdmin36mtemp == null){
%>
<%=signUpAdmin36mtemp %>
<%
}else{
        String tempResultreturnp37 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin36mtemp));
        %>
        <%= tempResultreturnp37 %>
        <%
}
break;
case 47:
        gotMethod = true;
        String userId_10id=  request.getParameter("userId50");
            java.lang.String userId_10idTemp = null;
        if(!userId_10id.equals("")){
         userId_10idTemp  = userId_10id;
        }
        String password_11id=  request.getParameter("password52");
            java.lang.String password_11idTemp = null;
        if(!password_11id.equals("")){
         password_11idTemp  = password_11id;
        }
        java.lang.String signInUser47mtemp = sampleServiceProxyid.signInUser(userId_10idTemp,password_11idTemp);
if(signInUser47mtemp == null){
%>
<%=signInUser47mtemp %>
<%
}else{
        String tempResultreturnp48 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInUser47mtemp));
        %>
        <%= tempResultreturnp48 %>
        <%
}
break;
case 54:
        gotMethod = true;
        String userId_12id=  request.getParameter("userId57");
            java.lang.String userId_12idTemp = null;
        if(!userId_12id.equals("")){
         userId_12idTemp  = userId_12id;
        }
        String password_13id=  request.getParameter("password59");
            java.lang.String password_13idTemp = null;
        if(!password_13id.equals("")){
         password_13idTemp  = password_13id;
        }
        java.lang.String signInAdmin54mtemp = sampleServiceProxyid.signInAdmin(userId_12idTemp,password_13idTemp);
if(signInAdmin54mtemp == null){
%>
<%=signInAdmin54mtemp %>
<%
}else{
        String tempResultreturnp55 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signInAdmin54mtemp));
        %>
        <%= tempResultreturnp55 %>
        <%
}
break;
case 61:
        gotMethod = true;
        String type_14id=  request.getParameter("type64");
            java.lang.String type_14idTemp = null;
        if(!type_14id.equals("")){
         type_14idTemp  = type_14id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers61mtemp = sampleServiceProxyid.viewMembers(type_14idTemp);
if(viewMembers61mtemp == null){
%>
<%=viewMembers61mtemp %>
<%
}else{
        String tempreturnp62 = null;
        if(viewMembers61mtemp != null){
        java.util.List listreturnp62= java.util.Arrays.asList(viewMembers61mtemp);
        tempreturnp62 = listreturnp62.toString();
        }
        %>
        <%=tempreturnp62%>
        <%
}
break;
case 66:
        gotMethod = true;
        String userId_15id=  request.getParameter("userId69");
            java.lang.String userId_15idTemp = null;
        if(!userId_15id.equals("")){
         userId_15idTemp  = userId_15id;
        }
        java.lang.String deleteUserAccount66mtemp = sampleServiceProxyid.deleteUserAccount(userId_15idTemp);
if(deleteUserAccount66mtemp == null){
%>
<%=deleteUserAccount66mtemp %>
<%
}else{
        String tempResultreturnp67 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount66mtemp));
        %>
        <%= tempResultreturnp67 %>
        <%
}
break;
case 71:
        gotMethod = true;
        String userId_16id=  request.getParameter("userId74");
            java.lang.String userId_16idTemp = null;
        if(!userId_16id.equals("")){
         userId_16idTemp  = userId_16id;
        }
        java.lang.String deleteAdminAccount71mtemp = sampleServiceProxyid.deleteAdminAccount(userId_16idTemp);
if(deleteAdminAccount71mtemp == null){
%>
<%=deleteAdminAccount71mtemp %>
<%
}else{
        String tempResultreturnp72 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount71mtemp));
        %>
        <%= tempResultreturnp72 %>
        <%
}
break;
case 76:
        gotMethod = true;
        String movieId_17id=  request.getParameter("movieId79");
            java.lang.String movieId_17idTemp = null;
        if(!movieId_17id.equals("")){
         movieId_17idTemp  = movieId_17id;
        }
        java.lang.String deleteMovie76mtemp = sampleServiceProxyid.deleteMovie(movieId_17idTemp);
if(deleteMovie76mtemp == null){
%>
<%=deleteMovie76mtemp %>
<%
}else{
        String tempResultreturnp77 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie76mtemp));
        %>
        <%= tempResultreturnp77 %>
        <%
}
break;
case 81:
        gotMethod = true;
        String membershipId_18id=  request.getParameter("membershipId112");
            java.lang.String membershipId_18idTemp = null;
        if(!membershipId_18id.equals("")){
         membershipId_18idTemp  = membershipId_18id;
        }
        edu.sjsu.videolibrary.model.User displayUserInformation81mtemp = sampleServiceProxyid.displayUserInformation(membershipId_18idTemp);
if(displayUserInformation81mtemp == null){
%>
<%=displayUserInformation81mtemp %>
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
if(displayUserInformation81mtemp != null){
java.lang.String typestate84 = displayUserInformation81mtemp.getState();
        String tempResultstate84 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate84));
        %>
        <%= tempResultstate84 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typezip86 = displayUserInformation81mtemp.getZip();
        String tempResultzip86 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip86));
        %>
        <%= tempResultzip86 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typestartDate88 = displayUserInformation81mtemp.getStartDate();
        String tempResultstartDate88 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate88));
        %>
        <%= tempResultstartDate88 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typelatestPaymentDate90 = displayUserInformation81mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate90 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate90));
        %>
        <%= tempResultlatestPaymentDate90 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typemembershipType92 = displayUserInformation81mtemp.getMembershipType();
        String tempResultmembershipType92 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType92));
        %>
        <%= tempResultmembershipType92 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typecity94 = displayUserInformation81mtemp.getCity();
        String tempResultcity94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity94));
        %>
        <%= tempResultcity94 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
%>
<%=displayUserInformation81mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typeuserId98 = displayUserInformation81mtemp.getUserId();
        String tempResultuserId98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId98));
        %>
        <%= tempResultuserId98 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String[] typemovieList100 = displayUserInformation81mtemp.getMovieList();
        String tempmovieList100 = null;
        if(typemovieList100 != null){
        java.util.List listmovieList100= java.util.Arrays.asList(typemovieList100);
        tempmovieList100 = listmovieList100.toString();
        }
        %>
        <%=tempmovieList100%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typeaddress102 = displayUserInformation81mtemp.getAddress();
        String tempResultaddress102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress102));
        %>
        <%= tempResultaddress102 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typepassword104 = displayUserInformation81mtemp.getPassword();
        String tempResultpassword104 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword104));
        %>
        <%= tempResultpassword104 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typefirstName106 = displayUserInformation81mtemp.getFirstName();
        String tempResultfirstName106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName106));
        %>
        <%= tempResultfirstName106 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typelastName108 = displayUserInformation81mtemp.getLastName();
        String tempResultlastName108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName108));
        %>
        <%= tempResultlastName108 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation81mtemp != null){
java.lang.String typecreditCardNumber110 = displayUserInformation81mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber110 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber110));
        %>
        <%= tempResultcreditCardNumber110 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 114:
        gotMethod = true;
        String movieId_19id=  request.getParameter("movieId135");
            java.lang.String movieId_19idTemp = null;
        if(!movieId_19id.equals("")){
         movieId_19idTemp  = movieId_19id;
        }
        edu.sjsu.videolibrary.model.Movie displayMovieInformation114mtemp = sampleServiceProxyid.displayMovieInformation(movieId_19idTemp);
if(displayMovieInformation114mtemp == null){
%>
<%=displayMovieInformation114mtemp %>
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
if(displayMovieInformation114mtemp != null){
java.lang.String typemovieBanner117 = displayMovieInformation114mtemp.getMovieBanner();
        String tempResultmovieBanner117 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner117));
        %>
        <%= tempResultmovieBanner117 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
java.lang.String typereleaseDate119 = displayMovieInformation114mtemp.getReleaseDate();
        String tempResultreleaseDate119 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate119));
        %>
        <%= tempResultreleaseDate119 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
java.lang.String typemovieName121 = displayMovieInformation114mtemp.getMovieName();
        String tempResultmovieName121 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName121));
        %>
        <%= tempResultmovieName121 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
%>
<%=displayMovieInformation114mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
%>
<%=displayMovieInformation114mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
%>
<%=displayMovieInformation114mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
java.lang.String typecatagory129 = displayMovieInformation114mtemp.getCatagory();
        String tempResultcatagory129 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory129));
        %>
        <%= tempResultcatagory129 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
%>
<%=displayMovieInformation114mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation114mtemp != null){
java.lang.String[] typebuyerList133 = displayMovieInformation114mtemp.getBuyerList();
        String tempbuyerList133 = null;
        if(typebuyerList133 != null){
        java.util.List listbuyerList133= java.util.Arrays.asList(typebuyerList133);
        tempbuyerList133 = listbuyerList133.toString();
        }
        %>
        <%=tempbuyerList133%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 137:
        gotMethod = true;
        String membershipId_20id=  request.getParameter("membershipId140");
            java.lang.String membershipId_20idTemp = null;
        if(!membershipId_20id.equals("")){
         membershipId_20idTemp  = membershipId_20id;
        }
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions137mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_20idTemp);
if(viewAccountTransactions137mtemp == null){
%>
<%=viewAccountTransactions137mtemp %>
<%
}else{
        String tempreturnp138 = null;
        if(viewAccountTransactions137mtemp != null){
        java.util.List listreturnp138= java.util.Arrays.asList(viewAccountTransactions137mtemp);
        tempreturnp138 = listreturnp138.toString();
        }
        %>
        <%=tempreturnp138%>
        <%
}
break;
case 142:
        gotMethod = true;
        String membershipId_21id=  request.getParameter("membershipId145");
            java.lang.String membershipId_21idTemp = null;
        if(!membershipId_21id.equals("")){
         membershipId_21idTemp  = membershipId_21id;
        }
        java.lang.String makeMonthlyPayment142mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_21idTemp);
if(makeMonthlyPayment142mtemp == null){
%>
<%=makeMonthlyPayment142mtemp %>
<%
}else{
        String tempResultreturnp143 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment142mtemp));
        %>
        <%= tempResultreturnp143 %>
        <%
}
break;
case 147:
        gotMethod = true;
        String membershipId_22id=  request.getParameter("membershipId150");
            java.lang.String membershipId_22idTemp = null;
        if(!membershipId_22id.equals("")){
         membershipId_22idTemp  = membershipId_22id;
        }
        String userId_23id=  request.getParameter("userId152");
            java.lang.String userId_23idTemp = null;
        if(!userId_23id.equals("")){
         userId_23idTemp  = userId_23id;
        }
        String firstName_24id=  request.getParameter("firstName154");
            java.lang.String firstName_24idTemp = null;
        if(!firstName_24id.equals("")){
         firstName_24idTemp  = firstName_24id;
        }
        String lastName_25id=  request.getParameter("lastName156");
            java.lang.String lastName_25idTemp = null;
        if(!lastName_25id.equals("")){
         lastName_25idTemp  = lastName_25id;
        }
        String address_26id=  request.getParameter("address158");
            java.lang.String address_26idTemp = null;
        if(!address_26id.equals("")){
         address_26idTemp  = address_26id;
        }
        String city_27id=  request.getParameter("city160");
            java.lang.String city_27idTemp = null;
        if(!city_27id.equals("")){
         city_27idTemp  = city_27id;
        }
        String state_28id=  request.getParameter("state162");
            java.lang.String state_28idTemp = null;
        if(!state_28id.equals("")){
         state_28idTemp  = state_28id;
        }
        String zipCode_29id=  request.getParameter("zipCode164");
            java.lang.String zipCode_29idTemp = null;
        if(!zipCode_29id.equals("")){
         zipCode_29idTemp  = zipCode_29id;
        }
        String membershipType_30id=  request.getParameter("membershipType166");
            java.lang.String membershipType_30idTemp = null;
        if(!membershipType_30id.equals("")){
         membershipType_30idTemp  = membershipType_30id;
        }
        String creditCardNumber_31id=  request.getParameter("creditCardNumber168");
            java.lang.String creditCardNumber_31idTemp = null;
        if(!creditCardNumber_31id.equals("")){
         creditCardNumber_31idTemp  = creditCardNumber_31id;
        }
        java.lang.String updateUserInfo147mtemp = sampleServiceProxyid.updateUserInfo(membershipId_22idTemp,userId_23idTemp,firstName_24idTemp,lastName_25idTemp,address_26idTemp,city_27idTemp,state_28idTemp,zipCode_29idTemp,membershipType_30idTemp,creditCardNumber_31idTemp);
if(updateUserInfo147mtemp == null){
%>
<%=updateUserInfo147mtemp %>
<%
}else{
        String tempResultreturnp148 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo147mtemp));
        %>
        <%= tempResultreturnp148 %>
        <%
}
break;
case 170:
        gotMethod = true;
        String membershipId_32id=  request.getParameter("membershipId173");
            java.lang.String membershipId_32idTemp = null;
        if(!membershipId_32id.equals("")){
         membershipId_32idTemp  = membershipId_32id;
        }
        String oldPassword_33id=  request.getParameter("oldPassword175");
            java.lang.String oldPassword_33idTemp = null;
        if(!oldPassword_33id.equals("")){
         oldPassword_33idTemp  = oldPassword_33id;
        }
        String newPassword_34id=  request.getParameter("newPassword177");
            java.lang.String newPassword_34idTemp = null;
        if(!newPassword_34id.equals("")){
         newPassword_34idTemp  = newPassword_34id;
        }
        java.lang.String updatePassword170mtemp = sampleServiceProxyid.updatePassword(membershipId_32idTemp,oldPassword_33idTemp,newPassword_34idTemp);
if(updatePassword170mtemp == null){
%>
<%=updatePassword170mtemp %>
<%
}else{
        String tempResultreturnp171 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword170mtemp));
        %>
        <%= tempResultreturnp171 %>
        <%
}
break;
case 179:
        gotMethod = true;
        String movieId_35id=  request.getParameter("movieId182");
            java.lang.String movieId_35idTemp = null;
        if(!movieId_35id.equals("")){
         movieId_35idTemp  = movieId_35id;
        }
        String movieName_36id=  request.getParameter("movieName184");
            java.lang.String movieName_36idTemp = null;
        if(!movieName_36id.equals("")){
         movieName_36idTemp  = movieName_36id;
        }
        String movieBanner_37id=  request.getParameter("movieBanner186");
            java.lang.String movieBanner_37idTemp = null;
        if(!movieBanner_37id.equals("")){
         movieBanner_37idTemp  = movieBanner_37id;
        }
        String releaseDate_38id=  request.getParameter("releaseDate188");
            java.lang.String releaseDate_38idTemp = null;
        if(!releaseDate_38id.equals("")){
         releaseDate_38idTemp  = releaseDate_38id;
        }
        String availableCopies_39id=  request.getParameter("availableCopies190");
        int availableCopies_39idTemp  = Integer.parseInt(availableCopies_39id);
        String rentAmount_40id=  request.getParameter("rentAmount192");
        double rentAmount_40idTemp  = Double.parseDouble(rentAmount_40id);
        String categoryId_41id=  request.getParameter("categoryId194");
        int categoryId_41idTemp  = Integer.parseInt(categoryId_41id);
        java.lang.String updateMovieInfo179mtemp = sampleServiceProxyid.updateMovieInfo(movieId_35idTemp,movieName_36idTemp,movieBanner_37idTemp,releaseDate_38idTemp,availableCopies_39idTemp,rentAmount_40idTemp,categoryId_41idTemp);
if(updateMovieInfo179mtemp == null){
%>
<%=updateMovieInfo179mtemp %>
<%
}else{
        String tempResultreturnp180 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo179mtemp));
        %>
        <%= tempResultreturnp180 %>
        <%
}
break;
case 196:
        gotMethod = true;
        String membershipId_42id=  request.getParameter("membershipId199");
            java.lang.String membershipId_42idTemp = null;
        if(!membershipId_42id.equals("")){
         membershipId_42idTemp  = membershipId_42id;
        }
        String month_43id=  request.getParameter("month201");
        int month_43idTemp  = Integer.parseInt(month_43id);
        String year_44id=  request.getParameter("year203");
        int year_44idTemp  = Integer.parseInt(year_44id);
        java.lang.String generateMonthlyStatement196mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_42idTemp,month_43idTemp,year_44idTemp);
if(generateMonthlyStatement196mtemp == null){
%>
<%=generateMonthlyStatement196mtemp %>
<%
}else{
        String tempResultreturnp197 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement196mtemp));
        %>
        <%= tempResultreturnp197 %>
        <%
}
break;
case 205:
        gotMethod = true;
        String membershipId_45id=  request.getParameter("membershipId208");
            java.lang.String membershipId_45idTemp = null;
        if(!membershipId_45id.equals("")){
         membershipId_45idTemp  = membershipId_45id;
        }
        String month_46id=  request.getParameter("month210");
        int month_46idTemp  = Integer.parseInt(month_46id);
        String year_47id=  request.getParameter("year212");
        int year_47idTemp  = Integer.parseInt(year_47id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement205mtemp = sampleServiceProxyid.viewStatement(membershipId_45idTemp,month_46idTemp,year_47idTemp);
if(viewStatement205mtemp == null){
%>
<%=viewStatement205mtemp %>
<%
}else{
        String tempreturnp206 = null;
        if(viewStatement205mtemp != null){
        java.util.List listreturnp206= java.util.Arrays.asList(viewStatement205mtemp);
        tempreturnp206 = listreturnp206.toString();
        }
        %>
        <%=tempreturnp206%>
        <%
}
break;
case 214:
        gotMethod = true;
        double getRentAmountforMovie214mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp215 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie214mtemp));
        %>
        <%= tempResultreturnp215 %>
        <%
break;
case 217:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember217mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp218 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember217mtemp));
        %>
        <%= tempResultreturnp218 %>
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