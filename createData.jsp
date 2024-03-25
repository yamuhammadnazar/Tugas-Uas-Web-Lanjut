<%-- 
    Document   : createData
    Created on : Jul 7, 2023, 5:57:11 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Create Costumer</title>

        <style>
            .latar {
            background: rgb(211,236,234);
            background: linear-gradient(120deg, rgba(211,236,234,1) 39%, rgba(167,251,241,1) 94%);
            }
            .form {
                width: 700px;
                margin: 10% auto;
                border: 2px solid black;
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

    <div class="container" style="margin: 20px;">
        <h1>Selamat datang</h1>
        <p>Jika anda ingin membuat Data Baru silahkan di tambahkan melalui Form di bawah ini :</p>
        <form action="" method="post">
            <div class="form-group">
            
            <div class="form-group">
            <label>Nama Buku:
                <input type="text" name="namaBuku" class="form-control warnainput">
            </label>
            </div>
            
            <div class="form-group" style="width: 100%;">
            <label>Kategori:
                <input type="text" name="kategori" class="form-control warnainput">
            </label>    
            </div>    
            
            <div class="form-group">    
            <label>Penerbit:
                <input type="text" name="penerbit" class="form-control warnainput">
            </label>  
            </div>    
            
            <div class="form-group">
            <label>Tahun Rilis:
                <input type="text" name="tahunRilis" class="form-control warnainput">
            </label>   
            </div>    
                
            
            <input type="submit" name="createCostumer"class="btn btn-primary">
            <a href="menu.jsp" class="btn btn-warning btn-xs">kembali</a>   
            
        </form>


        
    </div>   
    </body>
    
    <%@page import="java.sql.*" %>
    <%@page import="javax.swing.*" %>
    
    <%
        String namaBuku= request.getParameter("namaBuku");
        String kategori = request.getParameter("kategori");
        String penerbit = request.getParameter("penerbit");
        String tahunRilis = request.getParameter("tahunRilis"); 
        
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         Connection connection = null;
         PreparedStatement statement = null;
         
         int updatedQuery = 0;
         
    if( namaBuku != null && kategori != null && penerbit != null && tahunRilis !=null) {
    try {
       connection = DriverManager.getConnection(
        "jdbc:mysql://localhost/loginadminperpus",
        "root",
        "");
        
        String query = "INSERT INTO inputdata VALUES(?,?,?,?,?)";
        statement = connection.prepareStatement(query);
        
        int min =1; int max = 99; int range = max - min + 1;
        int randomNum = (int) (Math.random() * range) + min;
        
        
            statement.setInt(1, randomNum);
            statement.setString(2, namaBuku);
            statement.setString(3, kategori);
            statement.setString(4, penerbit);
            statement.setString(5, tahunRilis) ;
            
            updatedQuery = statement.executeUpdate();
    
            if(updatedQuery != 0) {
            response.sendRedirect("menu.jsp");
        }
        
        } catch(Exception e) {
                response.sendRedirect("menu.jsp");
        } finally {
                statement.close();
                connection.close();
                }
        
        }
        %>
        
</html>
