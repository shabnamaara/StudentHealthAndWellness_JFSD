<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SDAC Services - University of Virginia</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Sidebar styling */
        .sidebar {
            width: 200px;
            background-color: rgba(244, 244, 244, 0.7);
            padding: 15px;
            position: fixed;
            height: 100%;
            left: 0;
            top: 0;
            overflow-y: auto; /* Ensure scroll if content is long */
        }

        .sidebar h2 {
            color: #E87722;
        }

        .sidebar a {
            text-decoration: none;
            color: #012D85;
            display: block;
            padding: 8px;
            margin-bottom: 5px;
        }

        .sidebar a:hover {
            background-color: #E87722;
            color: white;
        }

        /* Main content styling */
        .content-section {
            max-width: 2000px;
            width: 80%;
            margin-left: 270px; /* Adjusting for sidebar width */
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: calc(100% - 270px); /* Adjust width based on sidebar */
            overflow-y: auto;
            padding-bottom: 70px; /* Ensure scroll if content is long */
        }

        .content-section h1, .content-section h2, .content-section h3 {
            color: #012D85;
        }

        .content-section p {
            line-height: 1.6;
        }

        .content-section ul {
            padding-left: 20px;
            margin-bottom: 20px;
            list-style-type: square;
        }

        .content-section ul li {
            margin-bottom: 10px;
        }

        /* Footer styling */
        footer {
            text-align: center;
            padding: 10px;
            background-color: #003366;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Menu</h2>
        <a href="index1.jsp">Home</a>    
        <a href="#">Apply for Services</a>
        
        
    </div>

    <!-- Main content -->
    <div class="content-section">
        <h1>Requesting SDAC Accommodations</h1>
        <p>SDAC facilitates the provision of approved accommodations for students with a disability who meet the academic and/or technical standards requisite for admission and continued participation in a University program or activity. Please note: Students who are employed by the University and seeking workplace accommodations should do so through the <a href="#">Procedures for Employees with Disabilities to Request Workplace Accommodations</a>.</p>

        <h2>Interested in meeting with SDAC?</h2>
        <p>If you're interested in meeting with SDAC to discuss any educational barriers and potential accommodations, the process for requesting SDAC accommodations includes the following:</p>

        <h2>Application Issues?</h2>
        <p>SDAC has created a walkthrough for completing and submitting the updated application:</p>
        <ul>
            <li><a href="#">Walkthrough Word Version</a></li>
            <li><a href="#">Walkthrough PDF Version</a></li>
        </ul>
        <p>If further assistance is needed in completing, submitting, or verifying the status of your submission, please reach out to SDAC via email or by calling <strong>(434) 243-5180</strong>.</p>

        <h2>Questions or Concerns?</h2>
        <p>We know that questions, challenges, and concerns may arise throughout the semester. The SDAC Advisor you initially met with would be happy to answer any follow-up questions. Please do not wait too long to address any concerns; we would rather know earlier than later.</p>
        <p>If you don’t remember who you met with, you can log into <a href="#">SDAC Online Services</a> to obtain the Advisor's name and contact information. You can also email SDAC, call <strong>(434) 243-5180</strong>, or stop by our office.</p>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 University of Virginia. All rights reserved.</p>
    </footer>
</body>
</html>