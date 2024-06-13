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
        // Retrieve the session object.
        HttpSession session = request.getSession(false);
        if (session != null) {
            String name = (String) session.getAttribute("name");
            String age = (String) session.getAttribute("age");
            String marks = (String) session.getAttribute("marks");

            if (name != null && age != null && marks != null) {
    %>
                <p><strong>Name:</strong> <%= name %></p>
                <p><strong>Age:</strong> <%= age %></p>
                <p><strong>Marks:</strong> <%= marks %></p>
    <%
            } else {
    %>
                <p>Session data not found. Please <a href="input.jsp">fill out the form</a> again.</p>
    <%
            }
        } else {
    %>
            <p>No session found. Please <a href="input.jsp">fill out the form</a> again.</p>
    <%
        }
    %>
</body>
</html>
