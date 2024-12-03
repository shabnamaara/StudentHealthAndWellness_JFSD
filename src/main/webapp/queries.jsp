<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Student Health and Wellness</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/health_background.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }

        /* Header Styles */
        header {
            background: linear-gradient(45deg, rgba(34, 139, 34, 0.6), rgba(0, 0, 0, 0.7));
            padding: 10px;
            position: fixed;
            width: 100%;
            height: 5%;
            z-index: 1000;
            top: 0;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.7);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .header-container {
            max-width: 2400px;
            margin: 0 auto;
            padding: 0 20px;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo-container {
            display: flex;
            align-items: center;
            margin-right: 30px;
        }

        .logo-container img {
            width: 60px;
            margin-right: 15px;
        }

        .logo-container h1 {
            margin: 0;
            font-size: 28px;
            background: linear-gradient(45deg, #32CD32, #3CB371);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientText 3s ease-in-out infinite;
        }

        @keyframes gradientText {
            0%, 100% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
        }

        /* Navigation Menu */
        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav ul li {
            position: relative; /* Positioning for the underline effect */
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #EAEAEA;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s, transform 0.3s;
            font-size: 18px;
            position: relative;
        }

        nav ul li a.active {
            color: #32CD32;
        }

        nav ul li a:hover {
            color: #32CD32;
            background-color: rgba(50, 205, 50, 0.2);
            transform: scale(1.05);
        }

        /* Contact section */
        .contact-section {
            padding: 80px;
            background-color: rgba(255, 255, 255, 0.1);
            text-align: center;
            border-radius: 15px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
            margin: 200px auto;
            max-width: 1000px;
            display: flex;
            align-items: center;
            position: relative;
        }

        .contact-image {
            width: 500px;
            margin-right: 30px;
            animation: jump 0.8s ease infinite;
        }

        @keyframes jump {
            0%, 100% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        .contact-heading {
            font-size: 2.5rem;
            color: #3CB371;
            margin-bottom: 20px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.7);
        }

        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .contact-form input, .contact-form textarea {
            padding: 10px;
            border-radius: 10px;
            border: none;
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
            font-size: 16px;
        }

        .contact-form button {
            padding: 10px;
            border: none;
            border-radius: 10px;
            background-color: #32CD32;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #228B22;
        }

        /* Contact details */
        .contact-details {
            margin-top: 20px;
            font-size: 18px;
            color: #EAEAEA;
        }

        .contact-details p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
<header>
    <div class="header-container">
        <div class="logo-container">
            <img src="images/health_logo.jpeg" alt="Health Logo" class="logo" />
            <h1>Student Health & Wellness</h1>
        </div>
        <nav>
            <ul>
                <li><a href="dashboard.jsp">About</a></li>
                <li><a href="wellness_activities.jsp">Activities</a></li>
                <li><a href="resources.jsp">Resources</a></li>
                    <div class="contact-details">
        <p><strong>Email:</strong> wellness@university.edu</p>
        <p><strong>Phone:</strong> +987 654 3210</p>
        <p><strong>Address:</strong> 456 Wellness Street, Health City, Country</p>
    </div>
    <br>   
    <br>                                          
     <div style="display: flex; justify-content: center; align-items: center; gap: 15px; padding-bottom: 10px;">
          <a href="#"><img src="images/telegram_icon.png"  width="45"></a>
          <a href="https://www.instagram.com/university_wellness/"><img src="images/instagram_icon.png"  width="45"></a>
    </div>
</div>

