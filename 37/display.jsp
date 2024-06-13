<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Display Page</title>
</head>
<body>
    <h2>Display Information</h2>
    <%
        // Retrieve the session object
        HttpSession session = request.getSession(false);
        String name = null;

        if (session != null) {
            // Get the attributes from the session
            name = (String) session.getAttribute("name");
        }

        if (name != null) {
    %>
            <p><strong>Name:</strong> <%= name %></p>
    <%
        } else {
    %>
            <p>Session data not found. Please <a href="input.jsp">fill out the form</a> again.</p>
    <%
        }
    %>
</body>
</html>
