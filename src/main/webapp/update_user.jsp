<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User</title>
    <!-- Add CSS or Bootstrap for styling -->
</head>
<body>
    <h2>Update User Information</h2>
    
    <%
        // Retrieving form data
        String userId = request.getParameter("id");
        String username = request.getParameter("username");
        String email = request.getParameter("email");

        // Validate if userId is null or empty
        if (userId == null || userId.trim().isEmpty()) {
            out.println("<p>Error: User ID cannot be empty.</p>");
            return;
        }

        // Database connection parameters
        String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness"; // Update with your database info
        String dbUser = "root"; // Update with your database username
        String dbPassword = "Shab*1809"; // Update with your database password

        Connection conn = null;
        PreparedStatement statement = null;
        
        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare the SQL query to update user details
            String sql = "UPDATE users SET username = ?, email = ? WHERE id = ?";
            statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, email);

            // Attempt to parse userId as integer
            try {
                statement.setInt(3, Integer.parseInt(userId)); // Ensure userId is an integer
            } catch (NumberFormatException e) {
                out.println("<p>Error: Invalid User ID. It must be a valid integer.</p>");
                return;
            }

            // Execute the update
            int rowsAffected = statement.executeUpdate();
            
            // Check if the update was successful
            if (rowsAffected > 0) {
                out.println("<p>User updated successfully.</p>");
            } else {
                out.println("<p>No user found with the provided ID. Update failed.</p>");
            }
        } catch (Exception e) {
            // Display error if there is an issue
            out.println("<p>Error updating user: " + e.getMessage() + "</p>");
            e.printStackTrace();
        } finally {
            // Close resources to avoid memory leak
            try {
                if (statement != null) statement.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>

    <!-- Redirecting back to the user list or another page -->
    <br>
    <a href="user-list.jsp">Back to User List</a>
</body>
</html>
