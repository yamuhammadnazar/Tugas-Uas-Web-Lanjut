<%-- 
    Document   : processUpdateData
    Created on : Jul 8, 2023, 8:41:06 AM
    Author     : User
--%>

<%@page import="java.sql.*" %>

<%
    String id = request.getParameter("id");
    String namebuku = request.getParameter("nama_buku");
    String kategori = request.getParameter("kategori");
    String penerbit = request.getParameter("penerbit");
    String tahunrilis = request.getParameter("tahun_rilis");
    
    String connectionURL = "jdbc:mysql://localhost/loginadminperpus";
    Connection connection = null; 
    
    if (id != null) {
    try {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(connectionURL, "root", "");
        String query = "UPDATE inputdata SET id_buku=?, nama_buku=?, kategori=?, penerbit=?, tahun_rilis=?   WHERE id_buku=" + id + "";
        PreparedStatement statement = connection.prepareStatement(query);
        statement.setString(1, id);
        statement.setString(2, namebuku);
        statement.setString(3, kategori);
        statement.setString(4, penerbit);
        statement.setString(5, tahunrilis);
        int updatedQuery = statement.executeUpdate();
        if(updatedQuery != 0) {
            response.sendRedirect("menu.jsp");
                }
    } catch (Exception e) {
    out.println(e.getMessage());
    }
   }
%>