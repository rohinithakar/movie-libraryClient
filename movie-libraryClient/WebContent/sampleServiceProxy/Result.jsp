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
        String userId_8id=  request.getParameter("userId54");
            java.lang.String userId_8idTemp = null;
        if(!userId_8id.equals("")){
         userId_8idTemp  = userId_8id;
        }
        String password_9id=  request.getParameter("password56");
            java.lang.String password_9idTemp = null;
        if(!password_9id.equals("")){
         password_9idTemp  = password_9id;
        }
        String memType_10id=  request.getParameter("memType58");
            java.lang.String memType_10idTemp = null;
        if(!memType_10id.equals("")){
         memType_10idTemp  = memType_10id;
        }
        String firstName_11id=  request.getParameter("firstName60");
            java.lang.String firstName_11idTemp = null;
        if(!firstName_11id.equals("")){
         firstName_11idTemp  = firstName_11id;
        }
        String lastName_12id=  request.getParameter("lastName62");
            java.lang.String lastName_12idTemp = null;
        if(!lastName_12id.equals("")){
         lastName_12idTemp  = lastName_12id;
        }
        String address_13id=  request.getParameter("address64");
            java.lang.String address_13idTemp = null;
        if(!address_13id.equals("")){
         address_13idTemp  = address_13id;
        }
        String city_14id=  request.getParameter("city66");
            java.lang.String city_14idTemp = null;
        if(!city_14id.equals("")){
         city_14idTemp  = city_14id;
        }
        String state_15id=  request.getParameter("state68");
            java.lang.String state_15idTemp = null;
        if(!state_15id.equals("")){
         state_15idTemp  = state_15id;
        }
        String zipCode_16id=  request.getParameter("zipCode70");
            java.lang.String zipCode_16idTemp = null;
        if(!zipCode_16id.equals("")){
         zipCode_16idTemp  = zipCode_16id;
        }
        String ccNumber_17id=  request.getParameter("ccNumber72");
            java.lang.String ccNumber_17idTemp = null;
        if(!ccNumber_17id.equals("")){
         ccNumber_17idTemp  = ccNumber_17id;
        }
        java.lang.String signUpUser51mtemp = sampleServiceProxyid.signUpUser(userId_8idTemp,password_9idTemp,memType_10idTemp,firstName_11idTemp,lastName_12idTemp,address_13idTemp,city_14idTemp,state_15idTemp,zipCode_16idTemp,ccNumber_17idTemp);
if(signUpUser51mtemp == null){
%>
<%=signUpUser51mtemp %>
<%
}else{
        String tempResultreturnp52 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpUser51mtemp));
        %>
        <%= tempResultreturnp52 %>
        <%
}
break;
case 74:
        gotMethod = true;
        String userId_18id=  request.getParameter("userId77");
            java.lang.String userId_18idTemp = null;
        if(!userId_18id.equals("")){
         userId_18idTemp  = userId_18id;
        }
        String password_19id=  request.getParameter("password79");
            java.lang.String password_19idTemp = null;
        if(!password_19id.equals("")){
         password_19idTemp  = password_19id;
        }
        String firstName_20id=  request.getParameter("firstName81");
            java.lang.String firstName_20idTemp = null;
        if(!firstName_20id.equals("")){
         firstName_20idTemp  = firstName_20id;
        }
        String lastName_21id=  request.getParameter("lastName83");
            java.lang.String lastName_21idTemp = null;
        if(!lastName_21id.equals("")){
         lastName_21idTemp  = lastName_21id;
        }
        java.lang.String signUpAdmin74mtemp = sampleServiceProxyid.signUpAdmin(userId_18idTemp,password_19idTemp,firstName_20idTemp,lastName_21idTemp);
if(signUpAdmin74mtemp == null){
%>
<%=signUpAdmin74mtemp %>
<%
}else{
        String tempResultreturnp75 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(signUpAdmin74mtemp));
        %>
        <%= tempResultreturnp75 %>
        <%
}
break;
case 85:
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
        edu.sjsu.videolibrary.model.User signInUser85mtemp = sampleServiceProxyid.signInUser(userId_22idTemp,password_23idTemp);
if(signInUser85mtemp == null){
%>
<%=signInUser85mtemp %>
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
if(signInUser85mtemp != null){
java.lang.String typestate88 = signInUser85mtemp.getState();
        String tempResultstate88 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate88));
        %>
        <%= tempResultstate88 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typezip90 = signInUser85mtemp.getZip();
        String tempResultzip90 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip90));
        %>
        <%= tempResultzip90 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typestartDate92 = signInUser85mtemp.getStartDate();
        String tempResultstartDate92 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate92));
        %>
        <%= tempResultstartDate92 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typelatestPaymentDate94 = signInUser85mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate94));
        %>
        <%= tempResultlatestPaymentDate94 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typemembershipType96 = signInUser85mtemp.getMembershipType();
        String tempResultmembershipType96 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType96));
        %>
        <%= tempResultmembershipType96 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typecity98 = signInUser85mtemp.getCity();
        String tempResultcity98 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity98));
        %>
        <%= tempResultcity98 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(signInUser85mtemp != null){
%>
<%=signInUser85mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typeuserId102 = signInUser85mtemp.getUserId();
        String tempResultuserId102 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId102));
        %>
        <%= tempResultuserId102 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String[] typemovieList104 = signInUser85mtemp.getMovieList();
        String tempmovieList104 = null;
        if(typemovieList104 != null){
        java.util.List listmovieList104= java.util.Arrays.asList(typemovieList104);
        tempmovieList104 = listmovieList104.toString();
        }
        %>
        <%=tempmovieList104%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typeaddress106 = signInUser85mtemp.getAddress();
        String tempResultaddress106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress106));
        %>
        <%= tempResultaddress106 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typepassword108 = signInUser85mtemp.getPassword();
        String tempResultpassword108 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword108));
        %>
        <%= tempResultpassword108 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typefirstName110 = signInUser85mtemp.getFirstName();
        String tempResultfirstName110 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName110));
        %>
        <%= tempResultfirstName110 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typelastName112 = signInUser85mtemp.getLastName();
        String tempResultlastName112 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName112));
        %>
        <%= tempResultlastName112 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(signInUser85mtemp != null){
java.lang.String typecreditCardNumber114 = signInUser85mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber114 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber114));
        %>
        <%= tempResultcreditCardNumber114 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 120:
        gotMethod = true;
        String userId_24id=  request.getParameter("userId133");
            java.lang.String userId_24idTemp = null;
        if(!userId_24id.equals("")){
         userId_24idTemp  = userId_24id;
        }
        String password_25id=  request.getParameter("password135");
            java.lang.String password_25idTemp = null;
        if(!password_25id.equals("")){
         password_25idTemp  = password_25id;
        }
        edu.sjsu.videolibrary.model.Admin signInAdmin120mtemp = sampleServiceProxyid.signInAdmin(userId_24idTemp,password_25idTemp);
if(signInAdmin120mtemp == null){
%>
<%=signInAdmin120mtemp %>
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
if(signInAdmin120mtemp != null){
java.lang.String typepassword123 = signInAdmin120mtemp.getPassword();
        String tempResultpassword123 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword123));
        %>
        <%= tempResultpassword123 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(signInAdmin120mtemp != null){
java.lang.String typelastName125 = signInAdmin120mtemp.getLastName();
        String tempResultlastName125 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName125));
        %>
        <%= tempResultlastName125 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(signInAdmin120mtemp != null){
java.lang.String typefirstName127 = signInAdmin120mtemp.getFirstName();
        String tempResultfirstName127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName127));
        %>
        <%= tempResultfirstName127 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(signInAdmin120mtemp != null){
%>
<%=signInAdmin120mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(signInAdmin120mtemp != null){
java.lang.String typeadminId131 = signInAdmin120mtemp.getAdminId();
        String tempResultadminId131 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId131));
        %>
        <%= tempResultadminId131 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 137:
        gotMethod = true;
        String type_26id=  request.getParameter("type140");
            java.lang.String type_26idTemp = null;
        if(!type_26id.equals("")){
         type_26idTemp  = type_26id;
        }
        edu.sjsu.videolibrary.model.User[] viewMembers137mtemp = sampleServiceProxyid.viewMembers(type_26idTemp);
if(viewMembers137mtemp == null){
%>
<%=viewMembers137mtemp %>
<%
}else{
        String tempreturnp138 = null;
        if(viewMembers137mtemp != null){
        java.util.List listreturnp138= java.util.Arrays.asList(viewMembers137mtemp);
        tempreturnp138 = listreturnp138.toString();
        }
        %>
        <%=tempreturnp138%>
        <%
}
break;
case 142:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Admin[] viewAdmins142mtemp = sampleServiceProxyid.viewAdmins();
if(viewAdmins142mtemp == null){
%>
<%=viewAdmins142mtemp %>
<%
}else{
        String tempreturnp143 = null;
        if(viewAdmins142mtemp != null){
        java.util.List listreturnp143= java.util.Arrays.asList(viewAdmins142mtemp);
        tempreturnp143 = listreturnp143.toString();
        }
        %>
        <%=tempreturnp143%>
        <%
}
break;
case 145:
        gotMethod = true;
        String userId_27id=  request.getParameter("userId148");
            java.lang.String userId_27idTemp = null;
        if(!userId_27id.equals("")){
         userId_27idTemp  = userId_27id;
        }
        java.lang.String deleteUserAccount145mtemp = sampleServiceProxyid.deleteUserAccount(userId_27idTemp);
if(deleteUserAccount145mtemp == null){
%>
<%=deleteUserAccount145mtemp %>
<%
}else{
        String tempResultreturnp146 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteUserAccount145mtemp));
        %>
        <%= tempResultreturnp146 %>
        <%
}
break;
case 150:
        gotMethod = true;
        String userId_28id=  request.getParameter("userId153");
            java.lang.String userId_28idTemp = null;
        if(!userId_28id.equals("")){
         userId_28idTemp  = userId_28id;
        }
        java.lang.String deleteAdminAccount150mtemp = sampleServiceProxyid.deleteAdminAccount(userId_28idTemp);
if(deleteAdminAccount150mtemp == null){
%>
<%=deleteAdminAccount150mtemp %>
<%
}else{
        String tempResultreturnp151 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteAdminAccount150mtemp));
        %>
        <%= tempResultreturnp151 %>
        <%
}
break;
case 155:
        gotMethod = true;
        String movieName_29id=  request.getParameter("movieName158");
            java.lang.String movieName_29idTemp = null;
        if(!movieName_29id.equals("")){
         movieName_29idTemp  = movieName_29id;
        }
        String movieBanner_30id=  request.getParameter("movieBanner160");
            java.lang.String movieBanner_30idTemp = null;
        if(!movieBanner_30id.equals("")){
         movieBanner_30idTemp  = movieBanner_30id;
        }
        String releaseDate_31id=  request.getParameter("releaseDate162");
            java.lang.String releaseDate_31idTemp = null;
        if(!releaseDate_31id.equals("")){
         releaseDate_31idTemp  = releaseDate_31id;
        }
        String availableCopies_32id=  request.getParameter("availableCopies164");
        int availableCopies_32idTemp  = Integer.parseInt(availableCopies_32id);
        String categoryId_33id=  request.getParameter("categoryId166");
        int categoryId_33idTemp  = Integer.parseInt(categoryId_33id);
        java.lang.String createNewMovie155mtemp = sampleServiceProxyid.createNewMovie(movieName_29idTemp,movieBanner_30idTemp,releaseDate_31idTemp,availableCopies_32idTemp,categoryId_33idTemp);
if(createNewMovie155mtemp == null){
%>
<%=createNewMovie155mtemp %>
<%
}else{
        String tempResultreturnp156 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createNewMovie155mtemp));
        %>
        <%= tempResultreturnp156 %>
        <%
}
break;
case 168:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies168mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies168mtemp == null){
%>
<%=listAllMovies168mtemp %>
<%
}else{
        String tempreturnp169 = null;
        if(listAllMovies168mtemp != null){
        java.util.List listreturnp169= java.util.Arrays.asList(listAllMovies168mtemp);
        tempreturnp169 = listreturnp169.toString();
        }
        %>
        <%=tempreturnp169%>
        <%
}
break;
case 171:
        gotMethod = true;
        String movieName_34id=  request.getParameter("movieName174");
            java.lang.String movieName_34idTemp = null;
        if(!movieName_34id.equals("")){
         movieName_34idTemp  = movieName_34id;
        }
        String movieBanner_35id=  request.getParameter("movieBanner176");
            java.lang.String movieBanner_35idTemp = null;
        if(!movieBanner_35id.equals("")){
         movieBanner_35idTemp  = movieBanner_35id;
        }
        String releaseDate_36id=  request.getParameter("releaseDate178");
            java.lang.String releaseDate_36idTemp = null;
        if(!releaseDate_36id.equals("")){
         releaseDate_36idTemp  = releaseDate_36id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchMovie171mtemp = sampleServiceProxyid.searchMovie(movieName_34idTemp,movieBanner_35idTemp,releaseDate_36idTemp);
if(searchMovie171mtemp == null){
%>
<%=searchMovie171mtemp %>
<%
}else{
        String tempreturnp172 = null;
        if(searchMovie171mtemp != null){
        java.util.List listreturnp172= java.util.Arrays.asList(searchMovie171mtemp);
        tempreturnp172 = listreturnp172.toString();
        }
        %>
        <%=tempreturnp172%>
        <%
}
break;
case 180:
        gotMethod = true;
        String categoryName_37id=  request.getParameter("categoryName183");
            java.lang.String categoryName_37idTemp = null;
        if(!categoryName_37id.equals("")){
         categoryName_37idTemp  = categoryName_37id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory180mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_37idTemp);
if(listMoviesByCategory180mtemp == null){
%>
<%=listMoviesByCategory180mtemp %>
<%
}else{
        String tempreturnp181 = null;
        if(listMoviesByCategory180mtemp != null){
        java.util.List listreturnp181= java.util.Arrays.asList(listMoviesByCategory180mtemp);
        tempreturnp181 = listreturnp181.toString();
        }
        %>
        <%=tempreturnp181%>
        <%
}
break;
case 185:
        gotMethod = true;
        String movieId_38id=  request.getParameter("movieId188");
            java.lang.String movieId_38idTemp = null;
        if(!movieId_38id.equals("")){
         movieId_38idTemp  = movieId_38id;
        }
        java.lang.String deleteMovie185mtemp = sampleServiceProxyid.deleteMovie(movieId_38idTemp);
if(deleteMovie185mtemp == null){
%>
<%=deleteMovie185mtemp %>
<%
}else{
        String tempResultreturnp186 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteMovie185mtemp));
        %>
        <%= tempResultreturnp186 %>
        <%
}
break;
case 190:
        gotMethod = true;
        String membershipId_39id=  request.getParameter("membershipId221");
        int membershipId_39idTemp  = Integer.parseInt(membershipId_39id);
        edu.sjsu.videolibrary.model.User displayUserInformation190mtemp = sampleServiceProxyid.displayUserInformation(membershipId_39idTemp);
if(displayUserInformation190mtemp == null){
%>
<%=displayUserInformation190mtemp %>
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
if(displayUserInformation190mtemp != null){
java.lang.String typestate193 = displayUserInformation190mtemp.getState();
        String tempResultstate193 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate193));
        %>
        <%= tempResultstate193 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typezip195 = displayUserInformation190mtemp.getZip();
        String tempResultzip195 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip195));
        %>
        <%= tempResultzip195 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typestartDate197 = displayUserInformation190mtemp.getStartDate();
        String tempResultstartDate197 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate197));
        %>
        <%= tempResultstartDate197 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typelatestPaymentDate199 = displayUserInformation190mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate199 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate199));
        %>
        <%= tempResultlatestPaymentDate199 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typemembershipType201 = displayUserInformation190mtemp.getMembershipType();
        String tempResultmembershipType201 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType201));
        %>
        <%= tempResultmembershipType201 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typecity203 = displayUserInformation190mtemp.getCity();
        String tempResultcity203 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity203));
        %>
        <%= tempResultcity203 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
%>
<%=displayUserInformation190mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typeuserId207 = displayUserInformation190mtemp.getUserId();
        String tempResultuserId207 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId207));
        %>
        <%= tempResultuserId207 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String[] typemovieList209 = displayUserInformation190mtemp.getMovieList();
        String tempmovieList209 = null;
        if(typemovieList209 != null){
        java.util.List listmovieList209= java.util.Arrays.asList(typemovieList209);
        tempmovieList209 = listmovieList209.toString();
        }
        %>
        <%=tempmovieList209%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typeaddress211 = displayUserInformation190mtemp.getAddress();
        String tempResultaddress211 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress211));
        %>
        <%= tempResultaddress211 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typepassword213 = displayUserInformation190mtemp.getPassword();
        String tempResultpassword213 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword213));
        %>
        <%= tempResultpassword213 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typefirstName215 = displayUserInformation190mtemp.getFirstName();
        String tempResultfirstName215 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName215));
        %>
        <%= tempResultfirstName215 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typelastName217 = displayUserInformation190mtemp.getLastName();
        String tempResultlastName217 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName217));
        %>
        <%= tempResultlastName217 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation190mtemp != null){
java.lang.String typecreditCardNumber219 = displayUserInformation190mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber219 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber219));
        %>
        <%= tempResultcreditCardNumber219 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 223:
        gotMethod = true;
        String movieId_40id=  request.getParameter("movieId246");
        int movieId_40idTemp  = Integer.parseInt(movieId_40id);
        edu.sjsu.videolibrary.model.Movie displayMovieInformation223mtemp = sampleServiceProxyid.displayMovieInformation(movieId_40idTemp);
if(displayMovieInformation223mtemp == null){
%>
<%=displayMovieInformation223mtemp %>
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
if(displayMovieInformation223mtemp != null){
java.lang.String typemovieBanner226 = displayMovieInformation223mtemp.getMovieBanner();
        String tempResultmovieBanner226 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner226));
        %>
        <%= tempResultmovieBanner226 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
java.lang.String typereleaseDate228 = displayMovieInformation223mtemp.getReleaseDate();
        String tempResultreleaseDate228 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate228));
        %>
        <%= tempResultreleaseDate228 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
java.lang.String typemovieName230 = displayMovieInformation223mtemp.getMovieName();
        String tempResultmovieName230 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName230));
        %>
        <%= tempResultmovieName230 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
%>
<%=displayMovieInformation223mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
%>
<%=displayMovieInformation223mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryName:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
java.lang.String typecategoryName236 = displayMovieInformation223mtemp.getCategoryName();
        String tempResultcategoryName236 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategoryName236));
        %>
        <%= tempResultcategoryName236 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
%>
<%=displayMovieInformation223mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
java.lang.String typecatagory240 = displayMovieInformation223mtemp.getCatagory();
        String tempResultcatagory240 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory240));
        %>
        <%= tempResultcatagory240 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
%>
<%=displayMovieInformation223mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation223mtemp != null){
java.lang.String[] typebuyerList244 = displayMovieInformation223mtemp.getBuyerList();
        String tempbuyerList244 = null;
        if(typebuyerList244 != null){
        java.util.List listbuyerList244= java.util.Arrays.asList(typebuyerList244);
        tempbuyerList244 = listbuyerList244.toString();
        }
        %>
        <%=tempbuyerList244%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 248:
        gotMethod = true;
        String membershipId_41id=  request.getParameter("membershipId251");
        int membershipId_41idTemp  = Integer.parseInt(membershipId_41id);
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions248mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_41idTemp);
if(viewAccountTransactions248mtemp == null){
%>
<%=viewAccountTransactions248mtemp %>
<%
}else{
        String tempreturnp249 = null;
        if(viewAccountTransactions248mtemp != null){
        java.util.List listreturnp249= java.util.Arrays.asList(viewAccountTransactions248mtemp);
        tempreturnp249 = listreturnp249.toString();
        }
        %>
        <%=tempreturnp249%>
        <%
}
break;
case 253:
        gotMethod = true;
        String membershipId_42id=  request.getParameter("membershipId256");
        int membershipId_42idTemp  = Integer.parseInt(membershipId_42id);
        java.lang.String makeMonthlyPayment253mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_42idTemp);
if(makeMonthlyPayment253mtemp == null){
%>
<%=makeMonthlyPayment253mtemp %>
<%
}else{
        String tempResultreturnp254 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment253mtemp));
        %>
        <%= tempResultreturnp254 %>
        <%
}
break;
case 258:
        gotMethod = true;
        String membershipId_43id=  request.getParameter("membershipId261");
        int membershipId_43idTemp  = Integer.parseInt(membershipId_43id);
        String userId_44id=  request.getParameter("userId263");
            java.lang.String userId_44idTemp = null;
        if(!userId_44id.equals("")){
         userId_44idTemp  = userId_44id;
        }
        String firstName_45id=  request.getParameter("firstName265");
            java.lang.String firstName_45idTemp = null;
        if(!firstName_45id.equals("")){
         firstName_45idTemp  = firstName_45id;
        }
        String lastName_46id=  request.getParameter("lastName267");
            java.lang.String lastName_46idTemp = null;
        if(!lastName_46id.equals("")){
         lastName_46idTemp  = lastName_46id;
        }
        String address_47id=  request.getParameter("address269");
            java.lang.String address_47idTemp = null;
        if(!address_47id.equals("")){
         address_47idTemp  = address_47id;
        }
        String city_48id=  request.getParameter("city271");
            java.lang.String city_48idTemp = null;
        if(!city_48id.equals("")){
         city_48idTemp  = city_48id;
        }
        String state_49id=  request.getParameter("state273");
            java.lang.String state_49idTemp = null;
        if(!state_49id.equals("")){
         state_49idTemp  = state_49id;
        }
        String zipCode_50id=  request.getParameter("zipCode275");
            java.lang.String zipCode_50idTemp = null;
        if(!zipCode_50id.equals("")){
         zipCode_50idTemp  = zipCode_50id;
        }
        String membershipType_51id=  request.getParameter("membershipType277");
            java.lang.String membershipType_51idTemp = null;
        if(!membershipType_51id.equals("")){
         membershipType_51idTemp  = membershipType_51id;
        }
        String creditCardNumber_52id=  request.getParameter("creditCardNumber279");
            java.lang.String creditCardNumber_52idTemp = null;
        if(!creditCardNumber_52id.equals("")){
         creditCardNumber_52idTemp  = creditCardNumber_52id;
        }
        java.lang.String updateUserInfo258mtemp = sampleServiceProxyid.updateUserInfo(membershipId_43idTemp,userId_44idTemp,firstName_45idTemp,lastName_46idTemp,address_47idTemp,city_48idTemp,state_49idTemp,zipCode_50idTemp,membershipType_51idTemp,creditCardNumber_52idTemp);
if(updateUserInfo258mtemp == null){
%>
<%=updateUserInfo258mtemp %>
<%
}else{
        String tempResultreturnp259 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo258mtemp));
        %>
        <%= tempResultreturnp259 %>
        <%
}
break;
case 281:
        gotMethod = true;
        String membershipId_53id=  request.getParameter("membershipId284");
            java.lang.String membershipId_53idTemp = null;
        if(!membershipId_53id.equals("")){
         membershipId_53idTemp  = membershipId_53id;
        }
        String userId_54id=  request.getParameter("userId286");
            java.lang.String userId_54idTemp = null;
        if(!userId_54id.equals("")){
         userId_54idTemp  = userId_54id;
        }
        String membershipType_55id=  request.getParameter("membershipType288");
            java.lang.String membershipType_55idTemp = null;
        if(!membershipType_55id.equals("")){
         membershipType_55idTemp  = membershipType_55id;
        }
        String startDate_56id=  request.getParameter("startDate290");
            java.lang.String startDate_56idTemp = null;
        if(!startDate_56id.equals("")){
         startDate_56idTemp  = startDate_56id;
        }
        String firstName_57id=  request.getParameter("firstName292");
            java.lang.String firstName_57idTemp = null;
        if(!firstName_57id.equals("")){
         firstName_57idTemp  = firstName_57id;
        }
        String lastName_58id=  request.getParameter("lastName294");
            java.lang.String lastName_58idTemp = null;
        if(!lastName_58id.equals("")){
         lastName_58idTemp  = lastName_58id;
        }
        String address_59id=  request.getParameter("address296");
            java.lang.String address_59idTemp = null;
        if(!address_59id.equals("")){
         address_59idTemp  = address_59id;
        }
        String city_60id=  request.getParameter("city298");
            java.lang.String city_60idTemp = null;
        if(!city_60id.equals("")){
         city_60idTemp  = city_60id;
        }
        String state_61id=  request.getParameter("state300");
            java.lang.String state_61idTemp = null;
        if(!state_61id.equals("")){
         state_61idTemp  = state_61id;
        }
        String zipCode_62id=  request.getParameter("zipCode302");
            java.lang.String zipCode_62idTemp = null;
        if(!zipCode_62id.equals("")){
         zipCode_62idTemp  = zipCode_62id;
        }
        edu.sjsu.videolibrary.model.User[] searchUser281mtemp = sampleServiceProxyid.searchUser(membershipId_53idTemp,userId_54idTemp,membershipType_55idTemp,startDate_56idTemp,firstName_57idTemp,lastName_58idTemp,address_59idTemp,city_60idTemp,state_61idTemp,zipCode_62idTemp);
if(searchUser281mtemp == null){
%>
<%=searchUser281mtemp %>
<%
}else{
        String tempreturnp282 = null;
        if(searchUser281mtemp != null){
        java.util.List listreturnp282= java.util.Arrays.asList(searchUser281mtemp);
        tempreturnp282 = listreturnp282.toString();
        }
        %>
        <%=tempreturnp282%>
        <%
}
break;
case 304:
        gotMethod = true;
        String membershipId_63id=  request.getParameter("membershipId307");
        int membershipId_63idTemp  = Integer.parseInt(membershipId_63id);
        String oldPassword_64id=  request.getParameter("oldPassword309");
            java.lang.String oldPassword_64idTemp = null;
        if(!oldPassword_64id.equals("")){
         oldPassword_64idTemp  = oldPassword_64id;
        }
        String newPassword_65id=  request.getParameter("newPassword311");
            java.lang.String newPassword_65idTemp = null;
        if(!newPassword_65id.equals("")){
         newPassword_65idTemp  = newPassword_65id;
        }
        java.lang.String updatePassword304mtemp = sampleServiceProxyid.updatePassword(membershipId_63idTemp,oldPassword_64idTemp,newPassword_65idTemp);
if(updatePassword304mtemp == null){
%>
<%=updatePassword304mtemp %>
<%
}else{
        String tempResultreturnp305 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword304mtemp));
        %>
        <%= tempResultreturnp305 %>
        <%
}
break;
case 313:
        gotMethod = true;
        String movieId_66id=  request.getParameter("movieId316");
        int movieId_66idTemp  = Integer.parseInt(movieId_66id);
        String movieName_67id=  request.getParameter("movieName318");
            java.lang.String movieName_67idTemp = null;
        if(!movieName_67id.equals("")){
         movieName_67idTemp  = movieName_67id;
        }
        String movieBanner_68id=  request.getParameter("movieBanner320");
            java.lang.String movieBanner_68idTemp = null;
        if(!movieBanner_68id.equals("")){
         movieBanner_68idTemp  = movieBanner_68id;
        }
        String releaseDate_69id=  request.getParameter("releaseDate322");
            java.lang.String releaseDate_69idTemp = null;
        if(!releaseDate_69id.equals("")){
         releaseDate_69idTemp  = releaseDate_69id;
        }
        String availableCopies_70id=  request.getParameter("availableCopies324");
        int availableCopies_70idTemp  = Integer.parseInt(availableCopies_70id);
        String categoryId_71id=  request.getParameter("categoryId326");
        int categoryId_71idTemp  = Integer.parseInt(categoryId_71id);
        java.lang.String updateMovieInfo313mtemp = sampleServiceProxyid.updateMovieInfo(movieId_66idTemp,movieName_67idTemp,movieBanner_68idTemp,releaseDate_69idTemp,availableCopies_70idTemp,categoryId_71idTemp);
if(updateMovieInfo313mtemp == null){
%>
<%=updateMovieInfo313mtemp %>
<%
}else{
        String tempResultreturnp314 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo313mtemp));
        %>
        <%= tempResultreturnp314 %>
        <%
}
break;
case 328:
        gotMethod = true;
        String membershipId_72id=  request.getParameter("membershipId331");
        int membershipId_72idTemp  = Integer.parseInt(membershipId_72id);
        String month_73id=  request.getParameter("month333");
        int month_73idTemp  = Integer.parseInt(month_73id);
        String year_74id=  request.getParameter("year335");
        int year_74idTemp  = Integer.parseInt(year_74id);
        java.lang.String generateMonthlyStatement328mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_72idTemp,month_73idTemp,year_74idTemp);
if(generateMonthlyStatement328mtemp == null){
%>
<%=generateMonthlyStatement328mtemp %>
<%
}else{
        String tempResultreturnp329 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement328mtemp));
        %>
        <%= tempResultreturnp329 %>
        <%
}
break;
case 337:
        gotMethod = true;
        String membershipId_75id=  request.getParameter("membershipId340");
        int membershipId_75idTemp  = Integer.parseInt(membershipId_75id);
        String month_76id=  request.getParameter("month342");
        int month_76idTemp  = Integer.parseInt(month_76id);
        String year_77id=  request.getParameter("year344");
        int year_77idTemp  = Integer.parseInt(year_77id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement337mtemp = sampleServiceProxyid.viewStatement(membershipId_75idTemp,month_76idTemp,year_77idTemp);
if(viewStatement337mtemp == null){
%>
<%=viewStatement337mtemp %>
<%
}else{
        String tempreturnp338 = null;
        if(viewStatement337mtemp != null){
        java.util.List listreturnp338= java.util.Arrays.asList(viewStatement337mtemp);
        tempreturnp338 = listreturnp338.toString();
        }
        %>
        <%=tempreturnp338%>
        <%
}
break;
case 346:
        gotMethod = true;
        String membershipId_78id=  request.getParameter("membershipId355");
        int membershipId_78idTemp  = Integer.parseInt(membershipId_78id);
        String month_79id=  request.getParameter("month357");
        int month_79idTemp  = Integer.parseInt(month_79id);
        String year_80id=  request.getParameter("year359");
        int year_80idTemp  = Integer.parseInt(year_80id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember346mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_78idTemp,month_79idTemp,year_80idTemp);
if(generateMonthlyBillForPremiumMember346mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember346mtemp %>
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
if(generateMonthlyBillForPremiumMember346mtemp != null){
java.lang.String typepaymentStatus349 = generateMonthlyBillForPremiumMember346mtemp.getPaymentStatus();
        String tempResultpaymentStatus349 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus349));
        %>
        <%= tempResultpaymentStatus349 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember346mtemp != null){
java.lang.String typepaymentDate351 = generateMonthlyBillForPremiumMember346mtemp.getPaymentDate();
        String tempResultpaymentDate351 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate351));
        %>
        <%= tempResultpaymentDate351 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember346mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember346mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 361:
        gotMethod = true;
        double getRentAmountforMovie361mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp362 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie361mtemp));
        %>
        <%= tempResultreturnp362 %>
        <%
break;
case 364:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember364mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp365 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember364mtemp));
        %>
        <%= tempResultreturnp365 %>
        <%
break;
case 367:
        gotMethod = true;
        java.lang.String[] listCategories367mtemp = sampleServiceProxyid.listCategories();
if(listCategories367mtemp == null){
%>
<%=listCategories367mtemp %>
<%
}else{
        String tempreturnp368 = null;
        if(listCategories367mtemp != null){
        java.util.List listreturnp368= java.util.Arrays.asList(listCategories367mtemp);
        tempreturnp368 = listreturnp368.toString();
        }
        %>
        <%=tempreturnp368%>
        <%
}
break;
case 370:
        gotMethod = true;
        String adminId_81id=  request.getParameter("adminId383");
            java.lang.String adminId_81idTemp = null;
        if(!adminId_81id.equals("")){
         adminId_81idTemp  = adminId_81id;
        }
        edu.sjsu.videolibrary.model.Admin displayAdminInformation370mtemp = sampleServiceProxyid.displayAdminInformation(adminId_81idTemp);
if(displayAdminInformation370mtemp == null){
%>
<%=displayAdminInformation370mtemp %>
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
if(displayAdminInformation370mtemp != null){
java.lang.String typepassword373 = displayAdminInformation370mtemp.getPassword();
        String tempResultpassword373 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword373));
        %>
        <%= tempResultpassword373 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayAdminInformation370mtemp != null){
java.lang.String typelastName375 = displayAdminInformation370mtemp.getLastName();
        String tempResultlastName375 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName375));
        %>
        <%= tempResultlastName375 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayAdminInformation370mtemp != null){
java.lang.String typefirstName377 = displayAdminInformation370mtemp.getFirstName();
        String tempResultfirstName377 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName377));
        %>
        <%= tempResultfirstName377 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">valid:</TD>
<TD>
<%
if(displayAdminInformation370mtemp != null){
%>
<%=displayAdminInformation370mtemp.isValid()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">adminId:</TD>
<TD>
<%
if(displayAdminInformation370mtemp != null){
java.lang.String typeadminId381 = displayAdminInformation370mtemp.getAdminId();
        String tempResultadminId381 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeadminId381));
        %>
        <%= tempResultadminId381 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 385:
        gotMethod = true;
        String adminId_82id=  request.getParameter("adminId388");
            java.lang.String adminId_82idTemp = null;
        if(!adminId_82id.equals("")){
         adminId_82idTemp  = adminId_82id;
        }
        String firstName_83id=  request.getParameter("firstName390");
            java.lang.String firstName_83idTemp = null;
        if(!firstName_83id.equals("")){
         firstName_83idTemp  = firstName_83id;
        }
        String lastName_84id=  request.getParameter("lastName392");
            java.lang.String lastName_84idTemp = null;
        if(!lastName_84id.equals("")){
         lastName_84idTemp  = lastName_84id;
        }
        String password_85id=  request.getParameter("password394");
            java.lang.String password_85idTemp = null;
        if(!password_85id.equals("")){
         password_85idTemp  = password_85id;
        }
        java.lang.String updateAdminInfo385mtemp = sampleServiceProxyid.updateAdminInfo(adminId_82idTemp,firstName_83idTemp,lastName_84idTemp,password_85idTemp);
if(updateAdminInfo385mtemp == null){
%>
<%=updateAdminInfo385mtemp %>
<%
}else{
        String tempResultreturnp386 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateAdminInfo385mtemp));
        %>
        <%= tempResultreturnp386 %>
        <%
}
break;
case 396:
        gotMethod = true;
        String membershipId_86id=  request.getParameter("membershipId399");
        int membershipId_86idTemp  = Integer.parseInt(membershipId_86id);
        String newPassword_87id=  request.getParameter("newPassword401");
            java.lang.String newPassword_87idTemp = null;
        if(!newPassword_87id.equals("")){
         newPassword_87idTemp  = newPassword_87id;
        }
        java.lang.String updateUserPassword396mtemp = sampleServiceProxyid.updateUserPassword(membershipId_86idTemp,newPassword_87idTemp);
if(updateUserPassword396mtemp == null){
%>
<%=updateUserPassword396mtemp %>
<%
}else{
        String tempResultreturnp397 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserPassword396mtemp));
        %>
        <%= tempResultreturnp397 %>
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