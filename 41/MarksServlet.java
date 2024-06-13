package com.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/calculate")
public class MarksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int subject1 = Integer.parseInt(request.getParameter("subject1"));
        int subject2 = Integer.parseInt(request.getParameter("subject2"));
        int subject3 = Integer.parseInt(request.getParameter("subject3"));
        int subject4 = Integer.parseInt(request.getParameter("subject4"));
        int subject5 = Integer.parseInt(request.getParameter("subject5"));

        int totalMarks = subject1 + subject2 + subject3 + subject4 + subject5;
        double averageMarks = totalMarks / 5.0;
        String division;

        if (averageMarks >= 60) {
            division = "First Division";
        } else if (averageMarks >= 45) {
            division = "Second Division";
        } else if (averageMarks > 33) {
            division = "Third Division";
        } else {
            division = "Fail";
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h2>Results</h2>");
        out.println("<p>Total Marks: " + totalMarks + "</p>");
        out.println("<p>Average Marks: " + averageMarks + "</p>");
        out.println("<p>Division: " + division + "</p>");
        out.println("</body></html>");
    }
}
