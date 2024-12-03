<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Appointments</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building1.jpg'); /* Set your background image here */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
            height: 100vh; /* Make sure it covers the full viewport height */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Main container styling */
        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.8); /* Light background for readability */
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1200px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h2 {
            color: #001a57;
            font-size: 36px;
            margin-bottom: 30px;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #004080;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eaeaea;
        }

        /* Button styling */
        .btn-confirm, .btn-reject {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 5px;
        }

        .btn-reject {
            background-color: #dc3545;
        }
        
        .btn-confirm:hover {
            background-color: #218838;
        }
        
        .btn-reject:hover {
            background-color: #c82333;
        }
        
        /* Back button */
        .btn-back {
            background-color: #001a57;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            text-decoration: none;
            font-size: 18px;
            margin-top: 30px;
            display: inline-block;
        }

        /* Notification message styling */
        .notification {
            margin: 20px 0;
            padding: 10px;
            border-radius: 5px;
        }

        .success {
            background-color: #d4edda;
            color: #155724;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
        }
    </style>
</head>
<body>
    <main>
        <div class="dashboard-container">
            <h2>Confirm Appointments</h2>

            <%-- Notification message placeholder --%>
            <%
                String message = (String) request.getAttribute("message");
                if (message != null) {
            %>
            <div class="notification <% if (message.contains("Error")) { %>error<% } else { %>success<% } %>">
                <%= message %>
            </div>
            <%
                }
            %>

            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>User ID</th>
                        <th>Service</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Database connection details
                        String url = "jdbc:mysql://localhost:3306/student_health_wellness";
                        String username = "root";
                        String password = "MadasuPrasanna@10";
                        
                        Connection conn = null;
                        Statement stmt = null;
                        ResultSet rs = null;

                        try {
                            // Load the MySQL driver
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            // Establish connection
                            conn = DriverManager.getConnection(url, username, password);
                            stmt = conn.createStatement();

                            // Execute the SQL query to fetch the appointments
                            String sql = "SELECT * FROM appointments";
                            rs = stmt.executeQuery(sql);

                            // Iterate through the result set and display each appointment
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String userId = rs.getString("user_id");
                                String service = rs.getString("service");
                                java.sql.Date date = rs.getDate("date"); // Use java.sql.Date
                                Time time = rs.getTime("time");
                    %>
                    <tr>
                        <td><%= id %></td>
                        <td><%= userId %></td>
                        <td><%= service %></td>
                        <td><%= date %></td>
                        <td><%= time %></td>
                        <td>
                            <form action="admin_confirmappointments.jsp" method="post" style="display:inline;">
                                <input type="hidden" name="confirm_id" value="<%= id %>">
                                <button type="submit" class="btn-confirm">Confirm</button>
                            </form>
                            <form action="admin_confirmappointments.jsp" method="post" style="display:inline;">
                                <input type="hidden" name="reject_id" value="<%= id %>">
                                <button type="submit" class="btn-reject">Reject</button>
                            </form>
                        </td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                    %>
                    <tr>
                        <td colspan="6">Error retrieving appointment data.</td>
                    </tr>
                    <%
                        } finally {
                            if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                            if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                        }
                    %>
                </tbody>
            </table>

            <a href="admin_dashboard.jsp" class="btn-back">Back to Dashboard</a>

            <%
                // Handle confirmation or rejection
                if (request.getMethod().equalsIgnoreCase("POST")) {
                    String confirmId = request.getParameter("confirm_id");
                    String rejectId = request.getParameter("reject_id");
                    String actionMessage = "";

                    try {
                        conn = DriverManager.getConnection(url, username, password);
                        if (confirmId != null) {
                            // Logic for confirming an appointment (e.g., update status)
                            actionMessage = "Appointment with ID " + confirmId + " confirmed successfully.";
                        } else if (rejectId != null) {
                            // Logic for deleting a rejected appointment
                            String deleteSQL = "DELETE FROM appointments WHERE id = ?";
                            PreparedStatement pstmt = conn.prepareStatement(deleteSQL);
                            pstmt.setInt(1, Integer.parseInt(rejectId));
                            pstmt.executeUpdate();
                            actionMessage = "Appointment with ID " + rejectId + " rejected successfully.";
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        actionMessage = "Error processing your request.";
                    } finally {
                        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
                    }
                    
                    request.setAttribute("message", actionMessage);
                    response.sendRedirect("admin_confirmappointments.jsp"); // Redirect to the same page
                    return; // Ensure no further processing occurs
                }
            %>
        </div>
    </main>
</body>
</html>
