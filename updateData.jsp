<%-- 
    Document   : updateData
    Created on : Jul 7, 2023, 5:52:58 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update COstumer</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
        crossorigin="anonymous">
        <style>
            html {
                margin: 0;
                padding: 0;
                font-family: Arial;
            }
            .form {
                width: 700px;
                margin: 4% auto;
            }
            p{
                text-align: justify;
            }

            .logo{
                height : 70px;
                width : 280px;
                
            }

            .logo img {
                height : 70px;
                width : 280px;
            }

            .warnainput {
                background-color: rgb(200, 251, 252);
            }
            

        </style>
    </head>
    <body>

        <div class="logo">
            <div><img src="img/logo-perpus.png" alt="logo perpustakaan"></div>
        </div>
        
        
        <%@page import="java.sql.*" %>
        <%
            String id = request.getParameter("id_buku");
            
            String connectionURL = "jdbc:mysql://localhost/loginadminperpus";
            Connection connection = null;  
            try {
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(connectionURL, "root", "");
                Statement statement = connection.createStatement();
                String query = "SELECT * FROM inputdata WHERE id_buku=" + id + "";
                ResultSet resultSet = statement.executeQuery(query);
                while (resultSet.next()) {
                
                %>
                
        <form class="form" action="processUpdateData.jsp" method="post">  
            <h1 class="text-center">Update Data</h1>
            <p class="text-center" style="font-size: 19px; text-align: justify;">Selamat datang Di Portal Update Data, silahkan untuk 
                memperbarui data menggunakan form dibawah ini.</p>
            <div class="form-group">
                <input type="hidden" name="id" value="<% out.println(resultSet.getString("id_buku"));%>">
                <label>Nama Buku</label>
                <input class="form-control warnainput" type="text" name="nama_buku" value="<% out.println(resultSet.getString("nama_buku"));%>">
            </div>
            <div class="form-group">
                <label>Kategori</label>
                <input class="form-control warnainput" type="text" name="kategori" value="<% out.println(resultSet.getString("kategori"));%>">
            </div>
            
            <div class="form-group">
                <label>penerbit</label>
                <input class="form-control warnainput" type="text" name="penerbit" value="<% out.println(resultSet.getString("penerbit"));%>">
            </div>
            
            <div class="form-group">
                <label></label>
                <input class="form-control warnainput" type="text" name="tahun_rilis" value="<% out.println(resultSet.getString("tahun_rilis"));%>">
            </div>
            
            <div class="form-group">
                <input class="form-control btn btn-success" type="submit" name="createCostumer">
                <br><br>
                <a href="menu.jsp" class="btn btn-warning btn-xs" style="width: 700px;">kembali</a>  
            </div>
        </form>
        <%
                }
                resultSet.close();
                statement.close();
                connection.close();
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %>
    </body>
    </body>
</html>
