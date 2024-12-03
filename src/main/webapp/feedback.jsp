<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-image: url('images/building.jpg'); /* Change to your background image path */
            background-size: cover;
            background-position: center;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            background-color: rgba(255, 255, 255, 0.9); /* White background with transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .feedback-form label {
            display: block;
            margin: 15px 0 5px;
            color: #555;
        }

        .feedback-form textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            resize: none; /* Prevents resizing */
        }

        .star-rating {
            display: flex;
            flex-direction: row-reverse;
            justify-content: center;
            margin: 10px 0;
        }

        .star-rating input[type="radio"] {
            display: none;
        }

        .star-rating label {
            font-size: 30px;
            color: #ccc;
            cursor: pointer;
            transition: color 0.2s;
        }

        .star-rating input:checked ~ label {
            color: gold; /* Selected star color */
        }

        .star-rating input:checked + label,
        .star-rating label:hover,
        .star-rating label:hover ~ label {
            color: gold; /* Hover star color */
        }

        .feedback-form input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 10px;
            background-color: #4CAF50; /* Green background */
            color: white; /* White text */
            border: none; /* No border */
            cursor: pointer; /* Pointer cursor on hover */
            font-weight: bold; /* Bold text */
        }

        .feedback-form input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Feedback Form</h2>
        <form action="submitFeedback" method="post" class="feedback-form">
            <input type="hidden" name="appointment_id" value="${appointmentId}"/> <!-- Pass appointment ID -->
            <input type="hidden" name="user_id" value="${userId}"/> <!-- Pass user ID -->
            
            <label for="feedback_text">Your Feedback:</label>
            <textarea name="feedback_text" required></textarea>
            
            <label for="rating">Rating:</label>
            <div class="star-rating">
                <input type="radio" id="star5" name="rating" value="5" required />
                <label for="star5">&#9733;</label>
                <input type="radio" id="star4" name="rating" value="4" />
                <label for="star4">&#9733;</label>
                <input type="radio" id="star3" name="rating" value="3" />
                <label for="star3">&#9733;</label>
                <input type="radio" id="star2" name="rating" value="2" />
                <label for="star2">&#9733;</label>
                <input type="radio" id="star1" name="rating" value="1" />
                <label for="star1">&#9733;</label>
            </div>

            <input type="submit" value="Submit Feedback" class="submit-btn"/>
        </form>
    </div>
</body>
</html>
