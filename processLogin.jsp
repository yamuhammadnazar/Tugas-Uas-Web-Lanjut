<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>ProcessLogin</title>
   </head>
   
      <%@page import="LoginDatabaseAdmin.login" %>
      <jsp:useBean id="gacor" class="LoginDatabaseAdmin.mlogin" />
      <jsp:setProperty property="*" name="gacor" />
      <%@page import="java.sql.*"%>
      
      <% 
          boolean status=login.validate(gacor);
          if (status) {
               out.println("<center>Anda Berhasil Login</center>");
               session.setAttribute("session", "TRUE");
               %>
               <jsp:forward page="menu.jsp" />
               <%
             } else {
               out.println("<center><font color='red'<b>Maap, ussername dan password salah!!</b></font></center>");
               %>
               <jsp:include page="index.jsp"></jsp:include>
               <%
             }

       %>
       
</html>