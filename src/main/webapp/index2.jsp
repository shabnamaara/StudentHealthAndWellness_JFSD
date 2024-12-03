<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* Sliding background effect */
        .banner {
            position: relative;
            height: 100vh;
            background-size: cover;
            background-position: center;
            animation: slideBackground 15s infinite;
        }

        @keyframes slideBackground {
            0% { background-image: url('images/building5.jpg'); }
            33% { background-image: url('images/building2.jpg'); }
            66% { background-image: url('images/building4.jpg'); }
            100% { background-image: url('images/building5.jpg'); }
        }

        /* Overlay for welcome text on the banner */
        .overlay {
            position: absolute;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 10px;
            border-radius: 5px;
            text-align: center;
        }

        /* Flexbox styling for the buttons in the banner */
        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
            max-width: 600px;
            margin: 20px auto;
        }

        .button-container button {
            padding: 20px 40px;
            background-color: #00204e;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .button-container button:hover {
            background-color: #003366;
        }

        /* Welcome and New Hoos section styling */
        .welcome-section h3, .new-hoos-section h3 {
            color: #001a57;
        }

        .welcome-section p, .new-hoos-section p {
            color: #333;
        }

        .new-hoos-section h3 {
            color: gold;
        }

        /* Sticky Button */
        .sticky-button {
            position: sticky;
            bottom: 0;
            width: 100%;
            background-color: #001a57;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.1);
        }

        .sticky-button a {
            color: white;
            text-decoration: none;
        }

        .sticky-button:hover {
            background-color: #004080;
        }

        /* Dropdown content - hidden by default */
        .dashboard-content, .nested-dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 200px;
            z-index: 1;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
        }

        .dashboard-content a, .nested-dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dashboard-content a:hover, .nested-dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        /* Show dropdown on hover */
        .dashboard-dropdown:hover .dashboard-content {
            display: block;
        }

        .nested-dropdown:hover .nested-dropdown-content {
            display: block;
            left: 100%;
            top: 0;
        }

        /* Media Query for Responsive Navigation */
        @media (max-width: 768px) {
            nav ul li {
                display: block;
                text-align: left;
            }

            .dashboard-content, .nested-dropdown-content {
                position: relative;
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
                <li class="dashboard-dropdown">
                    <a href="#">Account</a>
                    <div class="dashboard-content">
                        <a href="profile.jsp">Profile</a>
                        <a href="appointments.jsp">Appointments</a>
                        <a href="#">Help Center</a>
                        <a href="LogoutServlet">Logout</a>
                    </div>
                </li>
                <li><a href="user_events1.jsp">Events</a></li>
                <li class="dashboard-dropdown">
                    <a href="#">Care and Support Services</a>
                    <div class="dashboard-content">
                        <a href="basic.jsp">Basic Needs and Resources</a>
                        <a href="support.jsp">Care and Support: FAQs</a>
                        <a href="meet-our-team1.jsp">Meet our Team</a>
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Mental Health</a>
                    <div class="dashboard-content">
                        <div class="nested-dropdown">
                            <a href="#">Our Services</a>
                            <div class="nested-dropdown-content">
                                <a href="caps-groups.jsp">CAPS Groups</a>
                                <a href="#">Care Manager</a>
                                <a href="#">Embedded Counselors</a>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <a href="#">Emergency Care</a>
                            <div class="nested-dropdown-content">
                                <a href="suicide-awareness.jsp">Suicide Awareness and Prevention</a>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <a href="#">Mental Health Resources</a>
                            <div class="nested-dropdown-content">
                                <a href="#">For Students</a>
                                <a href="#">For Faculty and Staff</a>
                            </div>
                        </div>
                        <a href="meet-our-team.jsp">Meet Our Team</a>
                        <a href="#">Mental Health FAQs</a>
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Disability Services</a>
                    <div class="dashboard-content">
                        <div class="nested-dropdown">
                            <a href="#">Procedures and Guidelines</a>
                            <div class="nested-dropdown-content">
                                <a href="documentation.jsp">Documentation Guidelines</a>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <a href="accomodation.jsp">Accommodations and Services</a>
                            <div class="nested-dropdown-content">
                                <a href="Deaf-Hard.jsp">D/Deaf and Hard of Hearing</a>
                                <a href="Dietary-Requests.jsp">Dietary Request</a>
                                <a href="Reasonable-Modifications.jsp">Reasonable Modifications</a>
                                <a href="Transportation.jsp">Transportation</a>
                            </div>
                        </div>
                        <a href="faculty-staff.jsp">Faculty Guidance</a>
                        <a href="#">Resources</a>
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Medical Services</a>
                    <div class="dashboard-content">
                        <a href="scheduling.jsp">Scheduling</a>
                        <a href="medicalservices.jsp">Medical Services Care Manager</a>
                        <a href="SHWPharmacy.jsp">SHW Pharmacy</a>
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Research</a>
                    <div class="dashboard-content">
                        <a href="studies.jsp">Studies, Projects, and Publications</a>
                        <a href="FAQ's.jsp">Clinical Trials</a>
                    </div>
                </li>
                <li class="dashboard-dropdown">
                    <a href="#">Well-Being</a>
                    <div class="dashboard-content">
                        <a href="well-being-coaching.jsp">Well-Being Coaching</a>
                        <div class="nested-dropdown">
                            <a href="#">Well-Being Guidelines</a>
                            <div class="nested-dropdown-content">
                                <a href="taking-care.jsp">Take Care of Yourself</a>
                                <a href="healthy-sleep.jsp">Healthy Sleep</a>
                                <a href="social-connectedness.jsp">Social Connectedness</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="banner">
            <div class="overlay">
                <h2>SHW Operating Hours: Monday - Friday: 8am - 4:30pm</h2>
                <div class="button-container">
                    <form action="schedule.jsp">
                        <button type="submit">Schedule an Appointment</button>
                    </form>
                    <form action="services.jsp">
                        <button type="submit">Health and Wellness Services</button>
                    </form>
                </div>
            </div>
        </div>

        <section class="welcome-section">
            <h3>Welcome to KL University Student Health and Wellness!</h3>
            <p>We are dedicated to supporting the health and well-being of all students on campus...</p>
        </section>

        <section class="new-hoos-section">
            <h3>New Hoos Information</h3>
            <p>Whether you're starting your journey or just need to stay informed, we have resources available...</p>
        </section>
    </main>

    <footer>
        <div class="sticky-button">
            <a href="help-center.jsp">Visit our Help Center</a>
        </div>
    </footer>
</body>

</html>
