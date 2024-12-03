<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Details</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="container">
        <h1>Event Details</h1>
        <div class="event-detail">
            <%
                String eventId = request.getParameter("eventId");
                String url = "jdbc:mysql://localhost:3306/student_health_wellness";
                String username = "root";
                String password = "MadasuPrasanna@10";
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, username, password);

                    String sql = "SELECT title, event_date, detailed_description FROM events WHERE id = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setInt(1, Integer.parseInt(eventId));
                    rs = pstmt.executeQuery();

                    if (rs.next()) {
                        String title = rs.getString("title");
                        java.sql.Date eventDate = rs.getDate("event_date");
                        String detailedDescription = rs.getString("detailed_description");
            %>
            <h2><%= title %></h2>
            <p><strong>Date:</strong> <%= eventDate %></p>
            <p><%= detailedDescription %></p>
            <%
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
        </div>
        <a href="user_events1.jsp" class="home-btn">Back to Events</a>
    </div>
</body>
</html>
