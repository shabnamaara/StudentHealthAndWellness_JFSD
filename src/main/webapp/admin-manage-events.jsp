<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Events - Admin Dashboard</title>
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

        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.70);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1500px;
            min-height: 800px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            color: #001a57;
            font-size: 32px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 16px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
            color: #001a57;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eaeaea;
        }

        .btn-create {
            background-color: #001a57;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease;
        }

        .btn-create:hover {
            background-color: #004080;
        }

        .btn-edit {
            background-color: green; /* Change to green */
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin: 0 5px;
            transition: background-color 0.3s ease;
        }

        .btn-edit:hover {
            background-color: darkgreen; /* Darker green on hover */
        }

        .btn-delete {
            background-color: red; /* Change to red */
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin: 0 5px;
            transition: background-color 0.3s ease;
        }

        .btn-delete:hover {
            background-color: darkred; /* Darker red on hover */
        }

        .video-section {
            margin: 50px auto;
            max-width: 1500px;
            text-align: center;
        }

        .video-section h2 {
            margin-bottom: 30px;
        }

        .video-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .video-item {
            flex: 1 1 calc(50% - 40px); /* Each video takes 50% of the row, minus the gap */
            max-width: 800px;
        }

        .video-item iframe {
            width: 100%;
            height: 450px;
            border: none;
        }

        .video-description {
            font-size: 16px;
            color: #333;
            margin-top: 10px;
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

        /* Increase the width of the action column */
        th:last-child, td:last-child {
            width: 200px; /* Set the width of the action column */
        }
    </style>
</head>
<body>
    <header>
        <!-- Include your header here, if applicable -->
    </header>
    
    <main>
        <div class="dashboard-container">
            <h2>Manage Events</h2>

            <!-- Button to Create New Event -->
            <a href="create-event.jsp" class="btn-create">Create New Event</a>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Date</th>
                        <th>Room No.</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Database connection details
                        String dbURL = "jdbc:mysql://localhost:3306/student_health_wellness";
                        String dbUser = "root";
                        String dbPassword = "Shab*1809";
                        
                        Connection conn = null;
                        PreparedStatement statement = null;
                        ResultSet resultSet = null;

                        try {
                            // Load JDBC driver
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            // Connect to the database
                            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

                            // SQL query to retrieve all events
                            String sql = "SELECT id, title, event_date, room_no, description FROM events";
                            statement = conn.prepareStatement(sql);

                            resultSet = statement.executeQuery();

                            while (resultSet.next()) {
                                int id = resultSet.getInt("id");
                                String title = resultSet.getString("title");
                                java.sql.Date eventDate = resultSet.getDate("event_date");
                                String roomNo = resultSet.getString("room_no");
                                String description = resultSet.getString("description");
                    %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= title %></td>
                        <td><%= eventDate %></td>
                        <td><%= roomNo %></td> 
                        <td><%= description %></td>
                        <td>
                            <form action="update-event.jsp" method="get" style="display:inline;">
                                <input type="hidden" name="id" value="<%= id %>">
                                <button type="submit" class="btn-edit">Edit</button>
                            </form>
                            <form action="delete-event.jsp" method="post" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this event?')">
                                <input type="hidden" name="id" value="<%= id %>">
                                <button type="submit" class="btn-delete">Delete</button>
                            </form>
                        </td>
                    </tr>
                    <% 
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            out.println("<tr><td colspan='6'>Error retrieving event data.</td></tr>");
                        } finally {
                            // Close resources
                            try {
                                if (resultSet != null) resultSet.close();
                                if (statement != null) statement.close();
                                if (conn != null) conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    %>
                </tbody>
            </table>

            <a href="admin_dashboard.jsp" class="btn-create">Back to Dashboard</a>
        </div>

        <!-- Video Section -->
        <div class="video-section">
            <h2>Educational Videos</h2>
            <div class="video-list">
                <div class="video-item">
                    <iframe src="https://www.youtube.com/embed/CTarCtHR_6g" allowfullscreen></iframe>
                    <p class="video-description">This video discusses effective strategies for managing stress.</p>
                </div>
                <div class="video-item">
                    <iframe src="https://www.youtube.com/embed/E1yc1DP6Qk4" allowfullscreen></iframe>
                    <p class="video-description">Learn about the benefits of mindfulness and relaxation techniques in this video.</p>
                </div>
            </div>
        </div>
    </main>

    <!--  <footer>
        <p>&copy; 2024 Your Institution Name. All rights reserved.</p>
    </footer> -->
</body>
</html>
