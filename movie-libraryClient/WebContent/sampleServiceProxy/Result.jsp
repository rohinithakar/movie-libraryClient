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
        double getRentAmountforMovie117mtemp = sampleServiceProxyid.getRentAmountforMovie();
        String tempResultreturnp118 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getRentAmountforMovie117mtemp));
        %>
        <%= tempResultreturnp118 %>
        <%
break;
case 120:
        gotMethod = true;
        double getMonthlyFeesForPremiumMember120mtemp = sampleServiceProxyid.getMonthlyFeesForPremiumMember();
        String tempResultreturnp121 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getMonthlyFeesForPremiumMember120mtemp));
        %>
        <%= tempResultreturnp121 %>
        <%
break;
case 123:
        gotMethod = true;
        java.lang.String[] listCategories123mtemp = sampleServiceProxyid.listCategories();
if(listCategories123mtemp == null){
%>
<%=listCategories123mtemp %>
<%
}else{
        String tempreturnp124 = null;
        if(listCategories123mtemp != null){
        java.util.List listreturnp124= java.util.Arrays.asList(listCategories123mtemp);
        tempreturnp124 = listreturnp124.toString();
        }
        %>
        <%=tempreturnp124%>
        <%
}
break;
case 126:
        gotMethod = true;
        String categoryName_33id=  request.getParameter("categoryName129");
            java.lang.String categoryName_33idTemp = null;
        if(!categoryName_33id.equals("")){
         categoryName_33idTemp  = categoryName_33id;
        }
        edu.sjsu.videolibrary.model.Movie[] listMoviesByCategory126mtemp = sampleServiceProxyid.listMoviesByCategory(categoryName_33idTemp);
if(listMoviesByCategory126mtemp == null){
%>
<%=listMoviesByCategory126mtemp %>
<%
}else{
        String tempreturnp127 = null;
        if(listMoviesByCategory126mtemp != null){
        java.util.List listreturnp127= java.util.Arrays.asList(listMoviesByCategory126mtemp);
        tempreturnp127 = listreturnp127.toString();
        }
        %>
        <%=tempreturnp127%>
        <%
}
break;
case 131:
        gotMethod = true;
        edu.sjsu.videolibrary.model.Movie[] listAllMovies131mtemp = sampleServiceProxyid.listAllMovies();
if(listAllMovies131mtemp == null){
%>
<%=listAllMovies131mtemp %>
<%
}else{
        String tempreturnp132 = null;
        if(listAllMovies131mtemp != null){
        java.util.List listreturnp132= java.util.Arrays.asList(listAllMovies131mtemp);
        tempreturnp132 = listreturnp132.toString();
        }
        %>
        <%=tempreturnp132%>
        <%
}
break;
case 134:
        gotMethod = true;
        String userInput_34id=  request.getParameter("userInput137");
            java.lang.String userInput_34idTemp = null;
        if(!userInput_34id.equals("")){
         userInput_34idTemp  = userInput_34id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByName134mtemp = sampleServiceProxyid.searchByName(userInput_34idTemp);
if(searchByName134mtemp == null){
%>
<%=searchByName134mtemp %>
<%
}else{
        String tempreturnp135 = null;
        if(searchByName134mtemp != null){
        java.util.List listreturnp135= java.util.Arrays.asList(searchByName134mtemp);
        tempreturnp135 = listreturnp135.toString();
        }
        %>
        <%=tempreturnp135%>
        <%
}
break;
case 139:
        gotMethod = true;
        String userInput_35id=  request.getParameter("userInput142");
            java.lang.String userInput_35idTemp = null;
        if(!userInput_35id.equals("")){
         userInput_35idTemp  = userInput_35id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByMovieBanner139mtemp = sampleServiceProxyid.searchByMovieBanner(userInput_35idTemp);
if(searchByMovieBanner139mtemp == null){
%>
<%=searchByMovieBanner139mtemp %>
<%
}else{
        String tempreturnp140 = null;
        if(searchByMovieBanner139mtemp != null){
        java.util.List listreturnp140= java.util.Arrays.asList(searchByMovieBanner139mtemp);
        tempreturnp140 = listreturnp140.toString();
        }
        %>
        <%=tempreturnp140%>
        <%
}
break;
case 144:
        gotMethod = true;
        String userInput_36id=  request.getParameter("userInput147");
            java.lang.String userInput_36idTemp = null;
        if(!userInput_36id.equals("")){
         userInput_36idTemp  = userInput_36id;
        }
        edu.sjsu.videolibrary.model.Movie[] searchByReleaseDate144mtemp = sampleServiceProxyid.searchByReleaseDate(userInput_36idTemp);
if(searchByReleaseDate144mtemp == null){
%>
<%=searchByReleaseDate144mtemp %>
<%
}else{
        String tempreturnp145 = null;
        if(searchByReleaseDate144mtemp != null){
        java.util.List listreturnp145= java.util.Arrays.asList(searchByReleaseDate144mtemp);
        tempreturnp145 = listreturnp145.toString();
        }
        %>
        <%=tempreturnp145%>
        <%
}
break;
case 149:
        gotMethod = true;
        String adminInput_37id=  request.getParameter("adminInput152");
            java.lang.String adminInput_37idTemp = null;
        if(!adminInput_37id.equals("")){
         adminInput_37idTemp  = adminInput_37id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByFirstName149mtemp = sampleServiceProxyid.searchUserByFirstName(adminInput_37idTemp);
if(searchUserByFirstName149mtemp == null){
%>
<%=searchUserByFirstName149mtemp %>
<%
}else{
        String tempreturnp150 = null;
        if(searchUserByFirstName149mtemp != null){
        java.util.List listreturnp150= java.util.Arrays.asList(searchUserByFirstName149mtemp);
        tempreturnp150 = listreturnp150.toString();
        }
        %>
        <%=tempreturnp150%>
        <%
}
break;
case 154:
        gotMethod = true;
        String adminInput_38id=  request.getParameter("adminInput157");
            java.lang.String adminInput_38idTemp = null;
        if(!adminInput_38id.equals("")){
         adminInput_38idTemp  = adminInput_38id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByLastName154mtemp = sampleServiceProxyid.searchUserByLastName(adminInput_38idTemp);
if(searchUserByLastName154mtemp == null){
%>
<%=searchUserByLastName154mtemp %>
<%
}else{
        String tempreturnp155 = null;
        if(searchUserByLastName154mtemp != null){
        java.util.List listreturnp155= java.util.Arrays.asList(searchUserByLastName154mtemp);
        tempreturnp155 = listreturnp155.toString();
        }
        %>
        <%=tempreturnp155%>
        <%
}
break;
case 159:
        gotMethod = true;
        String adminInput_39id=  request.getParameter("adminInput162");
            java.lang.String adminInput_39idTemp = null;
        if(!adminInput_39id.equals("")){
         adminInput_39idTemp  = adminInput_39id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByCity159mtemp = sampleServiceProxyid.searchUserByCity(adminInput_39idTemp);
if(searchUserByCity159mtemp == null){
%>
<%=searchUserByCity159mtemp %>
<%
}else{
        String tempreturnp160 = null;
        if(searchUserByCity159mtemp != null){
        java.util.List listreturnp160= java.util.Arrays.asList(searchUserByCity159mtemp);
        tempreturnp160 = listreturnp160.toString();
        }
        %>
        <%=tempreturnp160%>
        <%
}
break;
case 164:
        gotMethod = true;
        String adminInput_40id=  request.getParameter("adminInput167");
            java.lang.String adminInput_40idTemp = null;
        if(!adminInput_40id.equals("")){
         adminInput_40idTemp  = adminInput_40id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByState164mtemp = sampleServiceProxyid.searchUserByState(adminInput_40idTemp);
if(searchUserByState164mtemp == null){
%>
<%=searchUserByState164mtemp %>
<%
}else{
        String tempreturnp165 = null;
        if(searchUserByState164mtemp != null){
        java.util.List listreturnp165= java.util.Arrays.asList(searchUserByState164mtemp);
        tempreturnp165 = listreturnp165.toString();
        }
        %>
        <%=tempreturnp165%>
        <%
}
break;
case 169:
        gotMethod = true;
        String adminInput_41id=  request.getParameter("adminInput172");
            java.lang.String adminInput_41idTemp = null;
        if(!adminInput_41id.equals("")){
         adminInput_41idTemp  = adminInput_41id;
        }
        edu.sjsu.videolibrary.model.User[] searchUserByMemberShipType169mtemp = sampleServiceProxyid.searchUserByMemberShipType(adminInput_41idTemp);
if(searchUserByMemberShipType169mtemp == null){
%>
<%=searchUserByMemberShipType169mtemp %>
<%
}else{
        String tempreturnp170 = null;
        if(searchUserByMemberShipType169mtemp != null){
        java.util.List listreturnp170= java.util.Arrays.asList(searchUserByMemberShipType169mtemp);
        tempreturnp170 = listreturnp170.toString();
        }
        %>
        <%=tempreturnp170%>
        <%
}
break;
case 174:
        gotMethod = true;
        String adminInput_42id=  request.getParameter("adminInput177");
        int adminInput_42idTemp  = Integer.parseInt(adminInput_42id);
        edu.sjsu.videolibrary.model.User[] searchUserByMembershipId174mtemp = sampleServiceProxyid.searchUserByMembershipId(adminInput_42idTemp);
if(searchUserByMembershipId174mtemp == null){
%>
<%=searchUserByMembershipId174mtemp %>
<%
}else{
        String tempreturnp175 = null;
        if(searchUserByMembershipId174mtemp != null){
        java.util.List listreturnp175= java.util.Arrays.asList(searchUserByMembershipId174mtemp);
        tempreturnp175 = listreturnp175.toString();
        }
        %>
        <%=tempreturnp175%>
        <%
}
break;
case 179:
        gotMethod = true;
        String membershipId_43id=  request.getParameter("membershipId210");
        int membershipId_43idTemp  = Integer.parseInt(membershipId_43id);
        edu.sjsu.videolibrary.model.User displayUserInformation179mtemp = sampleServiceProxyid.displayUserInformation(membershipId_43idTemp);
if(displayUserInformation179mtemp == null){
%>
<%=displayUserInformation179mtemp %>
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
if(displayUserInformation179mtemp != null){
java.lang.String typestate182 = displayUserInformation179mtemp.getState();
        String tempResultstate182 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestate182));
        %>
        <%= tempResultstate182 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">zip:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typezip184 = displayUserInformation179mtemp.getZip();
        String tempResultzip184 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typezip184));
        %>
        <%= tempResultzip184 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">startDate:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typestartDate186 = displayUserInformation179mtemp.getStartDate();
        String tempResultstartDate186 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typestartDate186));
        %>
        <%= tempResultstartDate186 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">latestPaymentDate:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typelatestPaymentDate188 = displayUserInformation179mtemp.getLatestPaymentDate();
        String tempResultlatestPaymentDate188 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelatestPaymentDate188));
        %>
        <%= tempResultlatestPaymentDate188 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipType:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typemembershipType190 = displayUserInformation179mtemp.getMembershipType();
        String tempResultmembershipType190 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemembershipType190));
        %>
        <%= tempResultmembershipType190 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">city:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typecity192 = displayUserInformation179mtemp.getCity();
        String tempResultcity192 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecity192));
        %>
        <%= tempResultcity192 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">membershipId:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
%>
<%=displayUserInformation179mtemp.getMembershipId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">userId:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typeuserId196 = displayUserInformation179mtemp.getUserId();
        String tempResultuserId196 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeuserId196));
        %>
        <%= tempResultuserId196 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieList:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String[] typemovieList198 = displayUserInformation179mtemp.getMovieList();
        String tempmovieList198 = null;
        if(typemovieList198 != null){
        java.util.List listmovieList198= java.util.Arrays.asList(typemovieList198);
        tempmovieList198 = listmovieList198.toString();
        }
        %>
        <%=tempmovieList198%>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">address:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typeaddress200 = displayUserInformation179mtemp.getAddress();
        String tempResultaddress200 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeaddress200));
        %>
        <%= tempResultaddress200 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">password:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typepassword202 = displayUserInformation179mtemp.getPassword();
        String tempResultpassword202 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepassword202));
        %>
        <%= tempResultpassword202 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">firstName:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typefirstName204 = displayUserInformation179mtemp.getFirstName();
        String tempResultfirstName204 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typefirstName204));
        %>
        <%= tempResultfirstName204 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">lastName:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typelastName206 = displayUserInformation179mtemp.getLastName();
        String tempResultlastName206 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typelastName206));
        %>
        <%= tempResultlastName206 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">creditCardNumber:</TD>
<TD>
<%
if(displayUserInformation179mtemp != null){
java.lang.String typecreditCardNumber208 = displayUserInformation179mtemp.getCreditCardNumber();
        String tempResultcreditCardNumber208 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecreditCardNumber208));
        %>
        <%= tempResultcreditCardNumber208 %>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 212:
        gotMethod = true;
        String movieId_44id=  request.getParameter("movieId235");
        int movieId_44idTemp  = Integer.parseInt(movieId_44id);
        edu.sjsu.videolibrary.model.Movie displayMovieInformation212mtemp = sampleServiceProxyid.displayMovieInformation(movieId_44idTemp);
if(displayMovieInformation212mtemp == null){
%>
<%=displayMovieInformation212mtemp %>
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
if(displayMovieInformation212mtemp != null){
java.lang.String typemovieBanner215 = displayMovieInformation212mtemp.getMovieBanner();
        String tempResultmovieBanner215 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieBanner215));
        %>
        <%= tempResultmovieBanner215 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">releaseDate:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
java.lang.String typereleaseDate217 = displayMovieInformation212mtemp.getReleaseDate();
        String tempResultreleaseDate217 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typereleaseDate217));
        %>
        <%= tempResultreleaseDate217 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieName:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
java.lang.String typemovieName219 = displayMovieInformation212mtemp.getMovieName();
        String tempResultmovieName219 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typemovieName219));
        %>
        <%= tempResultmovieName219 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">availableCopies:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
%>
<%=displayMovieInformation212mtemp.getAvailableCopies()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">rentAmount:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
%>
<%=displayMovieInformation212mtemp.getRentAmount()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryName:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
java.lang.String typecategoryName225 = displayMovieInformation212mtemp.getCategoryName();
        String tempResultcategoryName225 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategoryName225));
        %>
        <%= tempResultcategoryName225 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">categoryId:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
%>
<%=displayMovieInformation212mtemp.getCategoryId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">catagory:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
java.lang.String typecatagory229 = displayMovieInformation212mtemp.getCatagory();
        String tempResultcatagory229 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecatagory229));
        %>
        <%= tempResultcatagory229 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">movieId:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
%>
<%=displayMovieInformation212mtemp.getMovieId()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">buyerList:</TD>
<TD>
<%
if(displayMovieInformation212mtemp != null){
java.lang.String[] typebuyerList233 = displayMovieInformation212mtemp.getBuyerList();
        String tempbuyerList233 = null;
        if(typebuyerList233 != null){
        java.util.List listbuyerList233= java.util.Arrays.asList(typebuyerList233);
        tempbuyerList233 = listbuyerList233.toString();
        }
        %>
        <%=tempbuyerList233%>
        <%
}%>
</TD>
</TABLE>
<%
}
break;
case 237:
        gotMethod = true;
        String membershipId_45id=  request.getParameter("membershipId240");
        int membershipId_45idTemp  = Integer.parseInt(membershipId_45id);
        edu.sjsu.videolibrary.model.Transaction[] viewAccountTransactions237mtemp = sampleServiceProxyid.viewAccountTransactions(membershipId_45idTemp);
if(viewAccountTransactions237mtemp == null){
%>
<%=viewAccountTransactions237mtemp %>
<%
}else{
        String tempreturnp238 = null;
        if(viewAccountTransactions237mtemp != null){
        java.util.List listreturnp238= java.util.Arrays.asList(viewAccountTransactions237mtemp);
        tempreturnp238 = listreturnp238.toString();
        }
        %>
        <%=tempreturnp238%>
        <%
}
break;
case 242:
        gotMethod = true;
        String membershipId_46id=  request.getParameter("membershipId245");
        int membershipId_46idTemp  = Integer.parseInt(membershipId_46id);
        java.lang.String makeMonthlyPayment242mtemp = sampleServiceProxyid.makeMonthlyPayment(membershipId_46idTemp);
if(makeMonthlyPayment242mtemp == null){
%>
<%=makeMonthlyPayment242mtemp %>
<%
}else{
        String tempResultreturnp243 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makeMonthlyPayment242mtemp));
        %>
        <%= tempResultreturnp243 %>
        <%
}
break;
case 247:
        gotMethod = true;
        String membershipId_47id=  request.getParameter("membershipId250");
        int membershipId_47idTemp  = Integer.parseInt(membershipId_47id);
        String userId_48id=  request.getParameter("userId252");
            java.lang.String userId_48idTemp = null;
        if(!userId_48id.equals("")){
         userId_48idTemp  = userId_48id;
        }
        String firstName_49id=  request.getParameter("firstName254");
            java.lang.String firstName_49idTemp = null;
        if(!firstName_49id.equals("")){
         firstName_49idTemp  = firstName_49id;
        }
        String lastName_50id=  request.getParameter("lastName256");
            java.lang.String lastName_50idTemp = null;
        if(!lastName_50id.equals("")){
         lastName_50idTemp  = lastName_50id;
        }
        String address_51id=  request.getParameter("address258");
            java.lang.String address_51idTemp = null;
        if(!address_51id.equals("")){
         address_51idTemp  = address_51id;
        }
        String city_52id=  request.getParameter("city260");
            java.lang.String city_52idTemp = null;
        if(!city_52id.equals("")){
         city_52idTemp  = city_52id;
        }
        String state_53id=  request.getParameter("state262");
            java.lang.String state_53idTemp = null;
        if(!state_53id.equals("")){
         state_53idTemp  = state_53id;
        }
        String zipCode_54id=  request.getParameter("zipCode264");
            java.lang.String zipCode_54idTemp = null;
        if(!zipCode_54id.equals("")){
         zipCode_54idTemp  = zipCode_54id;
        }
        String membershipType_55id=  request.getParameter("membershipType266");
            java.lang.String membershipType_55idTemp = null;
        if(!membershipType_55id.equals("")){
         membershipType_55idTemp  = membershipType_55id;
        }
        String creditCardNumber_56id=  request.getParameter("creditCardNumber268");
            java.lang.String creditCardNumber_56idTemp = null;
        if(!creditCardNumber_56id.equals("")){
         creditCardNumber_56idTemp  = creditCardNumber_56id;
        }
        java.lang.String updateUserInfo247mtemp = sampleServiceProxyid.updateUserInfo(membershipId_47idTemp,userId_48idTemp,firstName_49idTemp,lastName_50idTemp,address_51idTemp,city_52idTemp,state_53idTemp,zipCode_54idTemp,membershipType_55idTemp,creditCardNumber_56idTemp);
if(updateUserInfo247mtemp == null){
%>
<%=updateUserInfo247mtemp %>
<%
}else{
        String tempResultreturnp248 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateUserInfo247mtemp));
        %>
        <%= tempResultreturnp248 %>
        <%
}
break;
case 270:
        gotMethod = true;
        String membershipId_57id=  request.getParameter("membershipId273");
        int membershipId_57idTemp  = Integer.parseInt(membershipId_57id);
        String oldPassword_58id=  request.getParameter("oldPassword275");
            java.lang.String oldPassword_58idTemp = null;
        if(!oldPassword_58id.equals("")){
         oldPassword_58idTemp  = oldPassword_58id;
        }
        String newPassword_59id=  request.getParameter("newPassword277");
            java.lang.String newPassword_59idTemp = null;
        if(!newPassword_59id.equals("")){
         newPassword_59idTemp  = newPassword_59id;
        }
        java.lang.String updatePassword270mtemp = sampleServiceProxyid.updatePassword(membershipId_57idTemp,oldPassword_58idTemp,newPassword_59idTemp);
if(updatePassword270mtemp == null){
%>
<%=updatePassword270mtemp %>
<%
}else{
        String tempResultreturnp271 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updatePassword270mtemp));
        %>
        <%= tempResultreturnp271 %>
        <%
}
break;
case 279:
        gotMethod = true;
        String movieId_60id=  request.getParameter("movieId282");
        int movieId_60idTemp  = Integer.parseInt(movieId_60id);
        String movieName_61id=  request.getParameter("movieName284");
            java.lang.String movieName_61idTemp = null;
        if(!movieName_61id.equals("")){
         movieName_61idTemp  = movieName_61id;
        }
        String movieBanner_62id=  request.getParameter("movieBanner286");
            java.lang.String movieBanner_62idTemp = null;
        if(!movieBanner_62id.equals("")){
         movieBanner_62idTemp  = movieBanner_62id;
        }
        String releaseDate_63id=  request.getParameter("releaseDate288");
            java.lang.String releaseDate_63idTemp = null;
        if(!releaseDate_63id.equals("")){
         releaseDate_63idTemp  = releaseDate_63id;
        }
        String availableCopies_64id=  request.getParameter("availableCopies290");
        int availableCopies_64idTemp  = Integer.parseInt(availableCopies_64id);
        String rentAmount_65id=  request.getParameter("rentAmount292");
        double rentAmount_65idTemp  = Double.parseDouble(rentAmount_65id);
        String categoryId_66id=  request.getParameter("categoryId294");
        int categoryId_66idTemp  = Integer.parseInt(categoryId_66id);
        java.lang.String updateMovieInfo279mtemp = sampleServiceProxyid.updateMovieInfo(movieId_60idTemp,movieName_61idTemp,movieBanner_62idTemp,releaseDate_63idTemp,availableCopies_64idTemp,rentAmount_65idTemp,categoryId_66idTemp);
if(updateMovieInfo279mtemp == null){
%>
<%=updateMovieInfo279mtemp %>
<%
}else{
        String tempResultreturnp280 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(updateMovieInfo279mtemp));
        %>
        <%= tempResultreturnp280 %>
        <%
}
break;
case 296:
        gotMethod = true;
        String membershipId_67id=  request.getParameter("membershipId299");
        int membershipId_67idTemp  = Integer.parseInt(membershipId_67id);
        String month_68id=  request.getParameter("month301");
        int month_68idTemp  = Integer.parseInt(month_68id);
        String year_69id=  request.getParameter("year303");
        int year_69idTemp  = Integer.parseInt(year_69id);
        java.lang.String generateMonthlyStatement296mtemp = sampleServiceProxyid.generateMonthlyStatement(membershipId_67idTemp,month_68idTemp,year_69idTemp);
if(generateMonthlyStatement296mtemp == null){
%>
<%=generateMonthlyStatement296mtemp %>
<%
}else{
        String tempResultreturnp297 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateMonthlyStatement296mtemp));
        %>
        <%= tempResultreturnp297 %>
        <%
}
break;
case 305:
        gotMethod = true;
        String membershipId_70id=  request.getParameter("membershipId308");
        int membershipId_70idTemp  = Integer.parseInt(membershipId_70id);
        String month_71id=  request.getParameter("month310");
        int month_71idTemp  = Integer.parseInt(month_71id);
        String year_72id=  request.getParameter("year312");
        int year_72idTemp  = Integer.parseInt(year_72id);
        edu.sjsu.videolibrary.model.StatementInfo[] viewStatement305mtemp = sampleServiceProxyid.viewStatement(membershipId_70idTemp,month_71idTemp,year_72idTemp);
if(viewStatement305mtemp == null){
%>
<%=viewStatement305mtemp %>
<%
}else{
        String tempreturnp306 = null;
        if(viewStatement305mtemp != null){
        java.util.List listreturnp306= java.util.Arrays.asList(viewStatement305mtemp);
        tempreturnp306 = listreturnp306.toString();
        }
        %>
        <%=tempreturnp306%>
        <%
}
break;
case 314:
        gotMethod = true;
        String membershipId_73id=  request.getParameter("membershipId323");
        int membershipId_73idTemp  = Integer.parseInt(membershipId_73id);
        String month_74id=  request.getParameter("month325");
        int month_74idTemp  = Integer.parseInt(month_74id);
        String year_75id=  request.getParameter("year327");
        int year_75idTemp  = Integer.parseInt(year_75id);
        edu.sjsu.videolibrary.model.PaymentForPremiumMemInfo generateMonthlyBillForPremiumMember314mtemp = sampleServiceProxyid.generateMonthlyBillForPremiumMember(membershipId_73idTemp,month_74idTemp,year_75idTemp);
if(generateMonthlyBillForPremiumMember314mtemp == null){
%>
<%=generateMonthlyBillForPremiumMember314mtemp %>
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
if(generateMonthlyBillForPremiumMember314mtemp != null){
java.lang.String typepaymentStatus317 = generateMonthlyBillForPremiumMember314mtemp.getPaymentStatus();
        String tempResultpaymentStatus317 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentStatus317));
        %>
        <%= tempResultpaymentStatus317 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">paymentDate:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember314mtemp != null){
java.lang.String typepaymentDate319 = generateMonthlyBillForPremiumMember314mtemp.getPaymentDate();
        String tempResultpaymentDate319 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typepaymentDate319));
        %>
        <%= tempResultpaymentDate319 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">monthlyPaymentAmount:</TD>
<TD>
<%
if(generateMonthlyBillForPremiumMember314mtemp != null){
%>
<%=generateMonthlyBillForPremiumMember314mtemp.getMonthlyPaymentAmount()
%><%}%>
</TD>
</TABLE>
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