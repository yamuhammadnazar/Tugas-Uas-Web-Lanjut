<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Contoh Form</title>
    <link rel="stylesheet" href="Style.css">
</head>
<body class="body">

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
        <div class="containerabout">
            <div class="text-container-about "> <p class="padding1"><b>~Berikut Beberapa Informasi Terkait Perpustakaan Kalimantan Barat~</b></p></div>
        </div>
    </header>

    <div class="bodyform">
        
    <div class="containerform">
        <h2>Form Layanan Publik</h2>
        <form action="prosesform.jsp" method="POST">
            <div class="form-group-layanan">
                <label for="service_name">Jenis Layanan</label>
                <input class="panjanginput" type="text" name="service_name" placeholder="Masukkan layanan yang diperlukan" required>
            </div>
            <div class="form-group-layanan">
                <label for="nama">Nama:</label>
                <input type="text" name="nama" placeholder="Masukkan nama" required>
            </div>
            <div class="form-group-layanan">
                <label for="email">Email:</label>
                <input type="email" name="email" placeholder="Masukkan email" required>
            </div>

            <div class="form-group-layanan">
                <label for="pesan">No Ponsel:</label>
                <input type="text" name="nomor_hp" placeholder="Masukkan Nomor Telpon" required>
            </div>

            <div class="form-group-layanan">
                <label for="pesan">Pesan:</label>
                <textarea name="pesan" placeholder="Masukkan pesan" required></textarea>
            </div>
            <div class="form-group-layanan">
                <button type="submit">Kirim</button>
            </div>
        </form>
    </div>

    </div>

</body>
</html>
