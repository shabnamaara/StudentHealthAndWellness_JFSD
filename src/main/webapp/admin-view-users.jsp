<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Users - Admin Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* General body styling */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building1.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        /* Main container styling */
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.70);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1000px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        /* Header style */
        h2 {
            color: #004080;
            font-size: 36px;
            margin-bottom: 20px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1.5px;
        }

        /* Table styling */
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
            padding: 15px;
            text-align: center;
        }

        th {
            background-color: #004080;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f1f9ff;
        }

        /* Button styling for 'Back to Dashboard' */
        .btn-back {
            background-color: #004080;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            display: inline-block;
            text-transform: uppercase;
            transition: all 0.3s ease;
            text-decoration: none; /* Removes underline */
            
        }

        .btn-back:hover {
            background-color: #0059b3;
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Footer styling */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #004080;
            color: white;
            position: relative;
            bottom: 0;
            width: 100%;
            font-size: 14px;
            letter-spacing: 1px;
        }

        footer p {
            margin: 0;
        }

        /* Extra subtle animation for hover effect on rows */
        tr {
            transition: background-color 0.3s ease;
        }

        /* Header design */
        header {
            padding: 20px;
            background-color: rgba(0, 64, 128, 0.8);
            color: white;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* Adding subtle card shadow */
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1000px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <header>
        Admin Dashboard - View Users
    </header>
    
    <main>
        <div class="dashboard-container">
            <h2>Users List</h2>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Email</th>
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

                            // SQL query to retrieve all users
                            String sql = "SELECT id, username, email FROM users";
                            statement = conn.prepareStatement(sql);

                            resultSet = statement.executeQuery();

                            while (resultSet.next()) {
                                int id = resultSet.getInt("id");
                                String username = resultSet.getString("username");
                                String email = resultSet.getString("email");
                    %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= username %></td>
                        <td><%= email %></td>
                        <td>
                <!--  <form action="update_user.jsp" method="post" style="display:inline;">
                    <input type="hidden" name="user_id" value="<%= id %>">
                    <button type="submit" class="btn-back">Update</button>
                </form>-->
                <form action="delete_user.jsp" method="post" style="display:inline;">
                    <input type="hidden" name="user_id" value="<%= id %>">
                    <button type="submit" class="btn-back" style="background-color:#e74c3c;">Delete</button>
                </form>
            </td>
                    </tr>
                    <% 
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                    %>
                    <tr>
                        <td colspan="3">Error retrieving user data.</td>
                    </tr>
                    <% 
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
				<!-- Add User Button -->
				<div style="text-align: right; margin-top: 20px;">
				    <a href="add_user.jsp" class="btn-back">Add User</a>
				</div>
            <a href="admin_dashboard.jsp" class="btn-back">Back to Dashboard</a>
        </div>
    </main>

    <!--  <footer>
        <p>&copy; 2024 KL University - All rights reserved</p>
    </footer> -->
</body>
</html>
