<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apply for Event</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/building.jpg'); /* Add your background image URL here */
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            text-align: center;
        }

        h1 {
            color: #004080;
            margin-bottom: 20px;
            font-size: 28px;
        }

        h3 {
            margin-top: 20px;
            font-size: 20px;
            color: #d9534f; /* Bootstrap danger color for errors */
        }

        p {
            margin: 10px 0;
            font-size: 16px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: white;
            background-color: #004080;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #0056a1;
        }

        /* For spacing */
        .message {
            margin: 20px 0;
        }

        /* Add responsive design */
        @media (max-width: 600px) {
            .container {
                padding: 20px;
                width: 90%;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Event Application Status</h1>
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");

            String url = "jdbc:mysql://localhost:3306/student_health_wellness";
            String username = "root";
            String password = "MadasuPrasanna@10";

            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, username, password);

                String sql = "INSERT INTO applications (name, email, phone) VALUES (?, ?, ?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, phone);

                int rowsInserted = pstmt.executeUpdate();
                if (rowsInserted > 0) {
                    out.println("<div class='message'><h3>Application submitted successfully!</h3><p>Thank you, " + name + ", for applying. We will contact you soon.</p></div>");
                } else {
                    out.println("<div class='message'><h3>Failed to submit application.</h3><p>Please try again later.</p></div>");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("<div class='message'><h3>Error occurred:</h3><p>" + e.getMessage() + "</p></div>");
            } finally {
                if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        %>
        <a href="index.jsp">Back to Home</a>
    </div>
</body>
</html>
