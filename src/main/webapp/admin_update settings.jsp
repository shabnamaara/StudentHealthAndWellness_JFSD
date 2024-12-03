<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Security Settings</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        .message-container {
            max-width: 800px;
            margin: 100px auto;
            padding: 40px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h2 {
            color: #001a57;
            font-size: 26px;
        }

        p {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .btn-back {
            background-color: #001a57;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            text-decoration: none;
            font-size: 16px;
            margin-top: 20px;
            display: inline-block;
        }

        .btn-back:hover {
            background-color: #004080;
        }

        .success {
            color: green;
        }

        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <%
            String passwordPolicy = request.getParameter("passwordPolicy");
            String enable2FA = request.getParameter("enable2FA");
            Connection conn = null;
            PreparedStatement pstmt = null;
            String message = "";
            String messageClass = "success"; // By default, consider it a success

            try {
                // Database connection
                String url = "jdbc:mysql://localhost:3306/student_health_wellness";
                String username = "root";
                String password = "MadasuPrasanna@10";
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);

                // Example SQL query to update security settings (adapt based on your actual schema)
                String sql = "UPDATE security_settings SET password_policy=?, enable_2fa=?";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, passwordPolicy);
                pstmt.setBoolean(2, enable2FA != null && enable2FA.equals("yes")); // Check if 2FA is enabled
                int rowsUpdated = pstmt.executeUpdate();

                if (rowsUpdated > 0) {
                    message = "Security settings updated successfully.";
                } else {
                    message = "No changes were made.";
                }
            } catch (Exception e) {
                e.printStackTrace();
                message = "Error occurred while updating security settings.";
                messageClass = "error";
            } finally {
                if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>

        <h2>Security Settings Update</h2>
        <p class="<%= messageClass %>"><%= message %></p>

        <a href="admin_dashboard.jsp" class="btn-back">Back to Dashboard</a>
    </div>
</body>
</html>
