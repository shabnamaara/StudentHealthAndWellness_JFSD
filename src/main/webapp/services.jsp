<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Health and Wellness Services</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Main content styling */
        .services-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .services-header {
            text-align: center;
            padding: 20px 0;
            color: #00204e;
        }

        .services-header h2 {
            font-size: 36px;
            color: #001a57;
        }

        .services-description {
            text-align: center;
            margin-bottom: 40px;
            font-size: 18px;
            color: #333;
        }

        /* Service section styling */
        .service-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .service-item {
            background-color: #f9f9f9;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            text-align: center;
            padding: 20px;
            transition: transform 0.3s;
        }

        .service-item:hover {
            transform: scale(1.05);
        }

        .service-item img {
            width: 80px;
            margin-bottom: 15px;
        }

        .service-item h3 {
            font-size: 22px;
            color: #00204e;
        }

        .service-item p {
            font-size: 16px;
            color: #555;
        }

        .service-item a {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #001a57;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }

        .service-item a:hover {
            background-color: #003366;
        }

        /* Responsive for smaller screens */
        @media (max-width: 768px) {
            .service-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>
    <header>
        <div class="header-container">
            <div class="logo-container">
                <img src="images/university-logo.png" alt="University Logo" class="logo" />
                <h1>KL UNIVERSITY</h1>
            </div>
            <div class="heading-container">
                <h2>STUDENT HEALTH AND WELLNESS</h2>
            </div>
        </div>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="appointments.jsp">Appointments</a></li>
                <li><a href="events.jsp">Events</a></li>
                <li><a href="LogoutServlet">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="services-container">
            <div class="services-header">
                <h2>Health and Wellness Services</h2>
            </div>
            <div class="services-description">
                <p>Explore our variety of health and wellness services designed to support students’ well-being during their time at KL University.</p>
            </div>

            <div class="service-grid">
                <!-- Service 1 -->
                <div class="service-item">
                    <img src="images/mental-health-icon.png" alt="Mental Health Services">
                    <h3>Mental Health Services</h3>
                    <p>Our mental health services offer counseling, therapy, and group sessions to help students manage stress and personal challenges.</p>
                    <a href="mental-health.jsp">Learn More</a>
                </div>

                <!-- Service 2 -->
                <div class="service-item">
                    <img src="images/physical-health-icon.png" alt="Physical Health Services">
                    <h3>Physical Health Services</h3>
                    <p>Our on-campus clinic provides medical care, including routine checkups, vaccinations, and injury treatment.</p>
                    <a href="physical-health.jsp">Learn More</a>
                </div>

                <!-- Service 3 -->
                <div class="service-item">
                    <img src="images/nutrition-icon.png" alt="Nutrition Counseling">
                    <h3>Nutrition Counseling</h3>
                    <p>We offer personalized nutrition plans and advice to help students maintain a healthy diet and lifestyle during their studies.</p>
                    <a href="nutrition.jsp">Learn More</a>
                </div>

                <!-- Service 4 -->
                <div class="service-item">
                    <img src="images/stress-management-icon.png" alt="Stress Management">
                    <h3>Stress Management</h3>
                    <p>Workshops and one-on-one sessions on stress relief techniques, mindfulness practices, and relaxation strategies.</p>
                    <a href="stress-management.jsp">Learn More</a>
                </div>

                <!-- Service 5 -->
                <div class="service-item">
                    <img src="images/workshops-icon.png" alt="Workshops and Programs">
                    <h3>Workshops and Programs</h3>
                    <p>Join our weekly workshops and events covering a variety of topics on health, wellness, and academic success.</p>
                    <a href="workshops.jsp">Learn More</a>
                </div>

                <!-- Service 6 -->
                <div class="service-item">
                    <img src="images/pharmacy-icon.png" alt="SHW Pharmacy">
                    <h3>SHW Pharmacy</h3>
                    <p>Our pharmacy provides prescription medications, over-the-counter products, and health consultations on campus.</p>
                    <a href="pharmacy.jsp">Learn More</a>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <div class="footer-container">
            <p>&copy; 2024 KL University Student Health and Wellness. All rights reserved.</p>
        </div>
    </footer>
</body>

</html>
