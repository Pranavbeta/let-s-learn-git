<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <%
        // Retrieve the session object.
        HttpSession session = request.getSession(false);
        String username = null;

        if (session != null) {
            // Get the username from the session.
            username = (String) session.getAttribute("username");
        }

        if (username == null) {
    %>
        <p>You are not logged in. Please <a href="index.jsp">login</a>.</p>
    <%
        } else {
    %>
        <h2>Welcome, <%= username %>!</h2>
        <p>This is your personalized welcome page.</p>
        <p><a href="logout.jsp">Logout</a></p>
    <%
        }
    %>
</body>
</html>
