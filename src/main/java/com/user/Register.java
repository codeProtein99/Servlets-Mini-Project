package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Register extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("HttpServlet class'es Service Method:");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();

        try {
            // Retrieve form data as a map
            Map<String, String[]> formData = request.getParameterMap();
            
            // Assuming the form data has keys "user_name", "user_email", "user_password"
            String name = formData.get("user_name")[0];
            String email = formData.get("user_email")[0];
            String password = formData.get("user_password")[0];
            
         
            Thread.sleep(2000);
            
            // Save the given details into the database
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/servlets";
            Connection con = DriverManager.getConnection(url, "root", "123pari$$");

            // Query
            String query = "INSERT INTO users(name, email, password) VALUES (?, ?, ?);";

            try (PreparedStatement pstmt = con.prepareStatement(query)) {
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, password);

                // Fire the query
                pstmt.executeUpdate();
            }

            // Send a JSON response indicating success
            out.println("{");
            out.println("\"message\": \"Data received and saved successfully.\",");
            out.println("\"name\": \"" + name + "\",");
            out.println("\"email\": \"" + email + "\",");
            out.println("\"password\": \"" + password + "\"");
            out.println("}");


        } catch (Exception e) {
            // Handle exception
            e.printStackTrace();
            // Send a JSON response indicating an error
            out.print("{\"error\": \"An error occurred while processing the request.\"}");
        }
    }
}

	
