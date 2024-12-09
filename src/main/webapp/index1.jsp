<!DOCTYPE html>
<html>
<head>
    <title>Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

        /* Additional styling for overlay */
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

        /* Flexbox styling for button container */
        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px; /* Optional: space between buttons */
            max-width: 600px; /* Optional: limit the container width */
            margin: 0 auto; /* Center the buttons container */
        }

        .button-container button {
            padding: 20px 40px;
            background-color: #00204e;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
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
            border: none;
            font-size: 16px;
            cursor: pointer;
            box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.1);
        }

        .sticky-button a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .sticky-button:hover {
            background-color: #004080;
        }

        /* Dropdown content - hidden by default */
        .dashboard-content{
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 200px;
            z-index: 1;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
        }
        .nested-dropdown-content {
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
            left: 100%; /* Position nested dropdown to the right */
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
                        <a href="Contact.jsp">Contact</a>
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
                        <a href="#">Mental Health FAQ's</a>
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
                        <div class="nested-dropdown">
                            <a href="faculty-staff.jsp">Faculty Guidance</a>
                            <div class="nested-dropdown-content">
                                <a href="#">Instrumental Guidance</a>
                            </div>
                        </div>
                        <div class="nested-dropdown">
                            <a href="#">Resources</a>
                            <div class="nested-dropdown-content">
                                <a href="#">Assistive Technology</a>
                                <a href="#">Evaluation for ADHD/LD</a>
                                <a href="#">Financial Resources</a>
                                <a href="#">Scholarships</a>
                            </div>
                        </div>
                        <a href="#">SDAC Portal</a>
                        <a href="apply-sdac-services.jsp">Apply for Services</a>
                        <a href="exam.jsp">Exam Proctoring Center</a>
                        <a href="meet-our-team.jsp">Meet Our Team</a>
                        <a href="prospective.jsp">Prospective Students</a>
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
                                <a href="#">Finding Meaning and Purpose</a>
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
                <h2>SHW Operating Hours: Monday - Friday: 8am - 4:30pm , location : RND Block 5th floor</h2>

                <!-- Button Container for Schedule and Emergency buttons -->
                <div class="button-container">
                    <form action="schedule.jsp">
                        <button type="submit">Schedule Online</button>
                    </form>
                    <form action="feedback.jsp">
                        <button type="submit">Feedback and Ratings</button>
                    </form>
                    <form action="discussion.jsp">
                        <button type="submit">Discussion Forum</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- WELCOME Section -->
        <section class="welcome-section">
            <h3>WELCOME</h3>
            <p>
                Our goal is to help students reach their <strong>full potential</strong> by optimizing their
                <strong>health and well-being</strong> during their time at the University of Virginia and beyond.
                We work to accomplish this through excellent medical, mental health, accessibility and well-being services,
                public health education and leadership, and our nationally renowned research and institutional partnerships.
                Our services are available to all registered students who are charged the mandatory fee with their tuition.
            </p>
        </section>

        <!-- New Hoos Section with gold color -->
        <section class="new-hoos-section">
            <h3>New Hoos! Check out our Orientation website and resources!</h3>
            <p>
                We're thrilled to have you join our community dedicated to fostering holistic well-being among our students.
                At SHW, we prioritize your physical and mental health throughout your academic journey. Our team of experienced
                healthcare professionals is here to provide comprehensive medical, counseling, and support services tailored
                to your individual needs. Whether you're seeking routine medical care, mental health resources, or guidance on
                healthy living, we're here to empower you to thrive. Explore our services, connect with our caring staff, and
                embark on a path towards optimal health and academic success.            </p>
        </section>
    </main>

    <!-- Sticky Button -->
    <button class="sticky-button">
        <a href="chatbot-container.jsp">Questions? Ask UVaChat</a>
    </button>
</body>
</html>