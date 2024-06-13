<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    // Retrieve form parameters
    String name = request.getParameter("name");

    // Create a session object if it is not already created
    HttpSession session = request.getSession(true);

    // Store the input data in the session
    session.setAttribute("name", name);

    // Redirect to the display page
    response.sendRedirect("display.jsp");
%>
