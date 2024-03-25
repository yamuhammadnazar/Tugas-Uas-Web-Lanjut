<%-- 
    Document   : deleteData
    Created on : Jul 8, 2023, 9:14:01 AM
    Author     : User
--%>

<%@page import = "java.sql.*" %>

<%
  String id = request.getParameter("id_buku");
  
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
    "jdbc:mysql://localhost/loginadminperpus",
    "root",
    "");
    
    Statement statement = connection.createStatement();
    String query = "DELETE FROM inputdata WHERE id_buku=" + "'" +id + "'";
    statement.executeUpdate(query);
    response.sendRedirect("menu.jsp");
  
        
    
    } catch (Exception e) {
     response.sendRedirect("menu.jsp");
    }
%>
