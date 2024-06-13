<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.naming.*" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    String dbURL = "jdbc:mysql://localhost:3306/userdb";
    String dbUser = "root";
    String dbPass = "password"; // Replace with your MySQL password

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        
        rs = pstmt.executeQuery();
        
        if (rs.next()) {
            out.println("<h1>Login successful!</h1>");
        } else {
            out.println("<h1>Login failed. Invalid username or password.</h1>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h1>Database connection error.</h1>");
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
