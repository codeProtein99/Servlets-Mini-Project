package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Cookie;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String userEmail = request.getParameter("user_email");
        String userPassword = request.getParameter("user_password");

        // Validate user credentials using JDBC
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/servlets";
            Connection con = DriverManager.getConnection(url, "root", "123pari$$");

            // Query
            String query = "SELECT * FROM users WHERE email = ? AND password = ?";

            try (PreparedStatement pstmt = con.prepareStatement(query)) {
                pstmt.setString(1, userEmail);
                pstmt.setString(2, userPassword);

                // Execute the query
                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    // Valid credentials, create a cookie with the user's email
                    Cookie userCookie = new Cookie("user_email", userEmail);
                    response.addCookie(userCookie);

                    // Redirect to another servlet
                    response.sendRedirect("DisplayCookieServlet");
                } else {
                    // Invalid credentials, show an error message
                    out.print("<p style='color:red;'>Invalid email or password</p>");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.print("<p style='color:red;'>Error validating credentials</p>");
        }
    }
}

