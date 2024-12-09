<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, java.text.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Events</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #333;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 15px;
            padding: 40px;
            margin: 50px auto;
            max-width: 1200px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
            transition: transform 0.3s;
        }

        .container:hover {
            transform: translateY(-5px);
        }

        h1 {
            color: #004080;
            font-size: 36px;
            margin-bottom: 30px;
            font-weight: bold;
            text-align: center;
        }

        .home-btn {
            background-color: #004080;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            display: inline-block;
            margin-bottom: 20px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .home-btn:hover {
            background-color: #0056a1;
        }

        .event-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .event-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            text-align: center;
            transition: transform 0.3s;
        }

        .event-card:hover {
            transform: scale(1.05);
        }

        .event-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .event-details {
            padding: 20px;
        }

        .event-title {
            font-size: 22px;
            color: #004080;
            font-weight: bold;
            margin: 10px 0;
        }

        .event-date {
            color: #666;
            margin: 10px 0;
            font-size: 16px;
        }

        .event-description {
            font-size: 14px;
            color: #777;
            margin-bottom: 20px;
            max-height: 50px; /* Limit the initial display size */
            overflow: hidden;
            transition: max-height 0.3s;
        }

        .learn-more-btn, .apply-btn {
            background-color: #004080;
            color: white;
            padding: 10px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            display: inline-block;
            margin-bottom: 10px;
            transition: background-color 0.3s;
        }

        .apply-btn {
            background-color: #28a745;
        }

        .learn-more-btn:hover, .apply-btn:hover {
            background-color: #0056a1;
        }

        .apply-btn:hover {
            background-color: #218838;
        }

        /* Modal styling */
        .modal {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.2);
            justify-content: center;
            align-items: center;
        }
        .modal-content {
        background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent background for the modal content */
        padding: 30px;
        border-radius: 10px;
        max-width: 500px;
        width: 90%;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        animation: modalIn 0.3s;
        }

        @keyframes modalIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h2 {
            color: #004080;
            margin-bottom: 20px;
            text-align: center;
        }

        label {
            font-weight: bold;
            color: #004080;
        }

        input[type="text"],
        input[type="email"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="email"]:focus {
            border-color: #004080;
            outline: none;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .close-btn {
            color: dark blue;
            font-size: 24px;
            cursor: pointer;
            float: right;
        }

        /* Transparent box styling for detailed description */
        .transparent-box {
            display: none; /* Hidden by default */
            position: fixed;
            z-index: 2; /* On top of other elements */
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.9); /* Slightly more opaque */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.8);
            width: 80%;
            max-width: 500px;
            transition: opacity 0.3s ease;
            opacity: 0; /* Start hidden */
            animation: fadeIn 0.3s forwards; /* Fade in animation */
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translate(-50%, -40%); /* Slight upward movement */
            }
            to {
                opacity: 1;
                transform: translate(-50%, -50%);
            }
        }
        .video-section h2 {
            margin-bottom: 30px;
            font-size: 28px;
            color: #001a57;
        }

        .video-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .video-item {
            flex: 1 1 calc(50% - 40px);
            max-width: 600px;
        }

        .video-item iframe {
            width: 100%;
            height: 350px;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .video-description {
            font-size: 16px;
            color: #333;
            margin-top: 10px;
        }
    </style>
    <script>
        function openModal() {
            document.getElementById('applyModal').style.display = 'flex';
        }

        function closeModal() {
            document.getElementById('applyModal').style.display = 'none';
        }

        function openTransparentBox(description) {
            document.getElementById('detailedDescription').innerHTML = description;
            const transparentBox = document.getElementById('transparentBox');
            transparentBox.style.display = 'block';
            transparentBox.style.opacity = '1'; // Ensure it's visible
        }
    </script>
</head>
<body>
    <div class="container">
        <!-- Home button -->
        <a href="index1.jsp" class="home-btn">Home</a>

        <h1>Upcoming Events</h1>

        <div class="event-grid">
            <%
                String url = "jdbc:mysql://localhost:3306/student_health_wellness";
                String username = "root";
                String password = "Shab*1809";

                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, username, password);
                    stmt = conn.createStatement();

                    String sql = "SELECT id, title, event_date, description,room_no FROM events WHERE event_date >= CURDATE()"; // Removed detailed_description
                    rs = stmt.executeQuery(sql);

                    while (rs.next()) {
                        int eventId = rs.getInt("id");
                        String title = rs.getString("title");
                        String eventDate = new SimpleDateFormat("dd MMM yyyy").format(rs.getDate("event_date"));
                        String description = rs.getString("description");
                        String roomNo = rs.getString("room_no");

                        out.println("<div class='event-card'>");
                        out.println("<img src='images/health-wellness.png' alt='" + title + "'>");
                        out.println("<div class='event-details'>");
                        out.println("<h3 class='event-title'>" + title + "</h3>");
                        out.println("<p class='event-date'>" + eventDate + "</p>");
                        out.println("<p class='event-room'>Room: " + roomNo + "</p>");
                        //out.println("<p class='event-description'>" + description + "</p>");
                        out.println("<a href='#' class='learn-more-btn' onclick=\"openTransparentBox('" + description + "')\">Learn More</a>");
                        out.println("<a href='#' class='apply-btn' onclick='openModal()'>Apply Now</a>");
                        out.println("</div></div>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
        </div>

        <!-- Transparent box for detailed description -->
        <div id="transparentBox" class="transparent-box">
            <span class="close-btn" onclick="document.getElementById('transparentBox').style.display='none'">&times;</span>
            <h2>Event Description</h2>
            <p id="detailedDescription"></p>
        </div>

        <!-- Modal for application form -->
        <div id="applyModal" class="modal">
            <div class="modal-content">
                <span class="close-btn" onclick="closeModal()">&times;</span>
                <h2>Apply for Event</h2>
                <form action="apply.jsp" method="post">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                    <input type="submit" value="Submit Application">
                </form>
            </div>
        </div>
    </div>
    <div class="video-section">
        <h2>Related Videos</h2>
        <div class="video-list">
            <div class="video-item">
                <iframe src="https://www.youtube.com/embed/rXsPpYXBKWo" allowfullscreen></iframe>
                <p class="video-description">Video about managing mental health and well-being.</p>
            </div>
            <div class="video-item">
                <iframe src="https://www.youtube.com/embed/QhKdbBCLWzo" allowfullscreen></iframe>
                <p class="video-description">Tips for boosting overall wellness and physical health.</p>
            </div>
            <div class="video-item">
                <iframe src="https://www.youtube.com/embed/Aa0mVQgoWLg" allowfullscreen></iframe>
                <p class="video-description">Insightful discussion on the importance of regular exercise.</p>
            </div>
        </div>
    </div>
</body>
</html>
