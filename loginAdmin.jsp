<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="Style.css">
         <title>LoginAdmin</title>
   </head>
   <body class="bodylogin">
      <header>

            <nav>
               <input type="checkbox" id="check">
               <label for="check" class="btn">
               <i class="fas fa-bars"></i>
               </label>
          
              <div class="logo">
                <div><img src="img/logo-perpus.png" alt="logo perpustakaan"></div>
              </div>
              <ul>
                <li><a href="index.html">Beranda</a></li>
                <li><a href="about.html">Tentang</a></li>
                <li><a href="contact.html">Kontak</a></li>
                <li><a href="form.jsp">Layanan Publik</a></li>
                <li><a href="Jambuka.html">Jadwal Layanan</a></li>
                <li><a href="loginAdmin.jsp">Login</a></li>
              </ul>
            </nav>
          
            <p class="padding1"><b>~Selamat Datang Di Halaman Login~</b></p>
          
          </header>


         <%
              String login_msg=(String) request.getAttribute("login_msg");
              if (login_msg!=null) { 
                     out.print(login_msg);
                     }
             %>
               <a href="index.html" target="_blank" style="color: white"></a></h1>
               <!-- Form Login -->
               <form action="processLogin.jsp" method="post">
                   <div class="kotak-login">
                      <h2 class="tulisanlogin">Silahkan Login</h2>
                      <label>Username : </label>
                      <input class="inputlogin" type="text" name="username" placeholder="Masukan Username" required>
                      <label>Password : </label>
                      <input class="inputlogin" type="password" name="password" placeholder="Masukan Password" required>
                      <button type="submit" name="submit" >Login</button>
                      <input class="inputlogin" type="checkbox" checked="checked"> Remember me
                      <span class="psw">Forgot <a href="#">password?</a></span>
                   </div>
               </form>

               <div class="jarakadmin">

               </div>

            <footer>
            <p><em> Copyright 2023</em> | Perpustakaan Kalimantan Barat</p>
            </footer>


   </body>