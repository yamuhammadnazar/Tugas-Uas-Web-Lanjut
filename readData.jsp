<%-- 
    Document   : menu
    Created on : Jul 7, 2023, 2:35:05 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
    <%@page import = "java.sql.*" %>
    
      <%

        try {
        String databaseUrl = "jdbc:mysql://localhost/data_perpus";
        String userNameDB = "root";
        String passWordDB = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(databaseUrl, userNameDB,
        passWordDB);
        
        Statement statement = connection.createStatement();
        String query = "SELECT * FROM input";
        ResultSet resultSet = statement.executeQuery(query);
        
        
        %>
        <table class="table" border="1">
            <thead class="thead-dark">
             <tr>
             <th scope="col">Id Buku</th>
             <th scope="col">Nama Buku</th>
             <th scope="col">Kategori</th>
             <th scope="col">Penerbit</th>
             <th scope="col">Tahun Rilis</th>
             <th scope="col">Update</th>
             <th scope="col">Hapus</th>
             </tr>
            
            </thead>
                <tbody>
                  <%
                  while(resultSet.next()) {
                  %>
                    
                    <tr>
                         <td><% out.println(resultSet.getString("id_buku")); %></td>
                         <td><% out.println(resultSet.getString("nama_buku")); %></td>
                         <td><% out.println(resultSet.getString("kategori")); %></td>
                         <td><% out.println(resultSet.getString("penerbit")); %></td>
                         <td><% out.println(resultSet.getString("tahun_rilis")); %></td>
                         <td><a href="updateData.jsp?id_buku=<%out.println(resultSet.getString("id_buku"));%>" class="btn btn-success btn-xs">UPDATE</a></td>
                         <td><a href="deleteData.jsp?id_buku=<%out.println(resultSet.getString("id_buku"));%>" class="btn btn-danger btn-xs">DELETE</a></td>
                    </tr>
                <%
                    }
                resultSet.close();
                statement.close();
                connection.close();
                } catch (Exception e) {}
                %>
                </tbody>
        </table>
        
    <center><a href="createData.jsp" class="btn btn-warning btn-xs">Create Data</a></center>
    
    
    </body>
</html>
