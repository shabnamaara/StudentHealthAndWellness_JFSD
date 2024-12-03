<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Deleted - Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building1.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        .message-container {
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 600px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            color: #001a57;
            font-size: 32px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .btn-back {
            background-color: #001a57;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            margin-top: 20px;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #004080;
        }

        footer {
            text-align: center;
            padding: 20px;
            background-color: #001a57;
            color: white;
            position: absolute;
            width: 100%;
            bottom: 0;
        }

        footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <header>
        <!-- Include your header here, if applicable -->
    </header>
    
    <main>
        <div class="message-container">
            <h2>Event Deletion</h2>
            <% 
                String eventId = request.getParameter("id");

                // Validate event ID
                if (eventId == null || eventId.isEmpty()) {
                    out.println("<p>Event ID is missing.</p>");
                } else {
                    String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness";
                    String dbUser = "root";
                    String dbPassword = "MadasuPrasanna@10";

                    Connection conn = null;
                    PreparedStatement statement = null;

                    try {
                        // Load JDBC driver
                        Class.forName("com.mysql.cj.jdbc.Driver");

                        // Connect to the database
                        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                        // SQL query to delete the event by ID
                        String sql = "DELETE FROM events WHERE id = ?";
                        statement = conn.prepareStatement(sql);
                        statement.setInt(1, Integer.parseInt(eventId));

                        int rowsAffected = statement.executeUpdate();

                        if (rowsAffected > 0) {
                            out.println("<p>The event has been deleted successfully.</p>");
                        } else {
                            out.println("<p>Event not found or could not be deleted.</p>");
                        }
                    } catch (NumberFormatException e) {
                        out.println("<p>Invalid event ID format.</p>");
                        e.printStackTrace();
                    } catch (Exception e) {
                        out.println("<p>An error occurred while deleting the event.</p>");
                        e.printStackTrace();
                    } finally {
                        // Close resources
                        try {
                            if (statement != null) statement.close();
                            if (conn != null) conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            %>
            <a href="admin-manage-events.jsp" class="btn-back">Back to Event List</a>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 KL University. All Rights Reserved.</p>
    </footer>
</body>
</html>