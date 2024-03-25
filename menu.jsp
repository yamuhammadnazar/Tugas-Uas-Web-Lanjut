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
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
    .logo{
            height : 70px;
            width : 280px;
                
            }

    .logo img {
            height : 70px;
            width : 280px;
            }

    .h1menu {
            margin:10px;
            font-size: 30px;
            font-style: italic;
            text-align: center;
        }

    .jarakcontact{
            margin: 80px;
            margin-bottom:  250px;
        }

        .kanan {
            float: right;
            margin: 25px;
    }  

    </style>
    </head>
    <body class>
    <%@page import = "java.sql.*" %>

    <nav>
        <label for="check" class="btn">
            <i class="fas fa-bars"></i>
        </label>

        <div class="logo">
            <div><img src="img/logo-perpus.png" alt="logo perpustakaan"></div>
        </div>
    </nav>
    <p class="h1menu"><b>~Selamat Datang Di Portal Admin~</b></p>
    
      <%
        

        try {
        String databaseUrl = "jdbc:mysql://localhost/loginadminperpus";
        String userNameDB = "root";
        String passWordDB = "";
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(databaseUrl, userNameDB,
        passWordDB);
        
        Statement statement = connection.createStatement();
        String query = "SELECT * FROM inputdata";
        ResultSet resultSet = statement.executeQuery(query);
        
        
        %>
        <table class="table table-bordered table-striped table-hover" border="1">
            <thead class="">
            <tr>
            <th style="text-align: center;" scope="col">Id Buku</th>
            <th style="text-align: center;" scope="col">Nama Buku</th>
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
                    <td><a href="updateData.jsp?id_buku=<%out.println(resultSet.getString("id_buku"));%>" class="btn btn-success">UPDATE</a></td>
                    <td><a href="deleteData.jsp?id_buku=<%out.println(resultSet.getString("id_buku"));%>" class="btn btn-secondary">DELETE</a></td>
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
    <a href="loginAdmin.jsp" class="btn btn-warning btn-xs kanan">Log Out</a>   
    <a href="createData.jsp" class="btn btn-info kanan">Create Data</a>

    <div class="jarakcontact">

    </div>
    
    
    </body>
</html>
