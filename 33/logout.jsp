<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Logout Page</title>
</head>
<body>
    <%
        // Retrieve the session object.
        HttpSession session = request.getSession(false);

        if (session != null) {
            // Invalidate the session to logout the user.
            session.invalidate();
        }
    %>
    <p>You have been logged out. <a href="index.jsp">Login again</a>.</p>
</body>
</html>
