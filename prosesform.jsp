<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
    String serviceName = request.getParameter("service_name");
    String nama = request.getParameter("nama");
    String email = request.getParameter("email");
    String nomorHp = request.getParameter("nomor_hp");
    String pesan = request.getParameter("pesan");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(
        "jdbc:mysql://localhost/loginadminperpus",
        "root",
        "");

        String sql = "INSERT INTO formulir_data (service_name, nama, email, nomor_hp, pesan) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setString(1, serviceName);
        statement.setString(2, nama);
        statement.setString(3, email);
        statement.setString(4, nomorHp);
        statement.setString(5, pesan);
        statement.executeUpdate();

        statement.close();
        connection.close();

        out.println("Data berhasil disimpan");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Terjadi kesalahan: " + e.getMessage());
    }
%>
