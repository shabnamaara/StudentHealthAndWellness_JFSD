<!DOCTYPE html>
<html>
<head>
    <title>Help Center - Student Health and Wellness</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/building.jpg'); /* Add your background image here */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the image */
            color: #fff; /* Change text color to white for better contrast */
        }

        .container {
            max-width: 1200px; /* Increase max-width to your desired value */
            margin: auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9); /* White background with transparency */
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3); /* Shadow effect */
            border-radius: 8px;
            margin-top: 50px; /* Space from the top */
        }

        h1 {
            color: #00204e; /* Change title color */
        }

        .faq {
            margin-bottom: 20px;
        }

        .faq h2 {
            color: #001a57; /* Darker color for FAQs */
        }

        .faq p {
            color: #333; /* Darker color for text */
        }

        a {
            color: #00204e; /* Link color */
            text-decoration: underline; /* Underline for links */
        }

        a:hover {
            color: #0056b3; /* Hover effect for links */
        }

        .contact-info {
            color: #r; /* Change contact info text color to blue */
            font-size: 16px; /* Increase font size for better readability */
        }

        .contact-info a {
            color: #0000FF; /* Change link color to blue */
            text-decoration: underline; /* Underline for links */
        }

        .contact-info a:hover {
            color: #0056b3; /* Hover effect for links */
        }

        /* Optional: Add some padding to the body for better appearance */
        .body-padding {
            padding: 20px;
        }

        .back-button {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px; /* Space from the FAQs section */
            background-color: #00204e; /* Button color */
            color: #fff; /* Button text color */
            text-decoration: none; /* Remove underline from link */
            border-radius: 5px; /* Rounded corners */
            transition: background-color 0.3s; /* Transition effect */
        }

        .back-button:hover {
            background-color: #0056b3; /* Change color on hover */
        }
    </style>
</head>
<body class="body-padding">
    <div class="container">
        <h1>Help Center</h1>

        <div class="faq">
            <h2>Frequently Asked Questions</h2>
            <p><strong>1. How do I schedule an appointment?</strong><br>
               You can schedule an appointment by clicking on the 'Schedule Online' button on the home page or by visiting the <a href="schedule.jsp">scheduling page</a>. You will need to log in to your account to access the scheduling features.</p>
            <p><strong>2. What should I do in case of a mental health emergency?</strong><br>
               If you are in crisis or need immediate support, please call the emergency hotline at (insert emergency contact number) or visit the nearest emergency room. Our mental health professionals are available to help you during business hours.</p>
            <p><strong>3. Where can I find more resources on health and wellness?</strong><br>
               You can find additional resources in the 'Care and Support Services' section of our website, which includes articles, videos, and links to external resources on various health topics.</p>
            <p><strong>4. What services are available at the health center?</strong><br>
               Our health center offers a variety of services, including medical consultations, mental health support, nutrition counseling, and wellness programs. For a full list of services, please visit our <a href="services.jsp">services page</a>.</p>
            <p><strong>5. How do I access my medical records?</strong><br>
               You can access your medical records by logging into your patient portal. If you need assistance, contact our records department at <a href="mailto:records@university.edu">records@university.edu</a>.</p>
        </div>

        <div class="faq">
            <h2>Emergency Services</h2>
            <p>For emergencies after hours, please contact the campus security at (insert security contact number) or dial 911. For urgent mental health support, the crisis hotline is available 24/7 at (insert crisis hotline number).</p>
        </div>

        <div class="faq">
            <h2>Feedback and Suggestions</h2>
            <p>We value your feedback! If you have suggestions for improving our services or website, please share them with us at <a href="mailto:feedback@university.edu">feedback@university.edu</a>.</p>
        </div>

        <!-- Back to Dashboard Button -->
        <a href="index1.jsp" class="back-button">Back to Dashboard</a>
    </div>
</body>
</html>
