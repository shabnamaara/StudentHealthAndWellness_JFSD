<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Proctoring Center</title>
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
        .sidebar {
            width: 150px;
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
            max-width: 900px;
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding-bottom: 80px;
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
        
        .toggle-button {
            background-color: #00008B;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            width: 100%;
            text-align: left;
            font-size: 16px;
            outline: none;
            margin-bottom: 20px;
        }

        .toggle-button:hover {
            background-color: #D6651F;
        }

        .toggle-content {
            display: none;
            background-color: rgba(255, 255, 255, 0.7);
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        
    </style>
     
    <script>
        function toggleContent(contentId) {
            var content = document.getElementById(contentId);
            if (content.style.display === "none") {
                content.style.display = "block";
            } else {
                content.style.display = "none";
            }
        }
    </script>
</head>
<body>
     <!-- Sidebar -->
    <div class="sidebar">
        <h2>Menu</h2>
        <a href="index1.jsp">Home</a>
       
        <a href="#">Exam Proctoring Center</a>
        
    </div>

    <!-- Main content -->
    <div class="content-section">
        <h1>Test Proctoring Center at SDAC</h1>
        <p>The Test Proctoring Center at SDAC is reserved for students with disabilities who have approved testing-related accommodations.</p>
        <p> The Testing Center has a set of best practices available for review:</p>
        <ul>
            <li><a href="guidelines-word.docx">Guidelines in Word</a></li>
            <li><a href="guidelines-pdf.pdf">Guidelines in PDF</a></li>
        </ul>

        <h2>Guidelines for Taking Exams at SDAC</h2>
        <p>Students must coordinate with their instructor prior to scheduling exams at SDAC. In general, students are expected to take their exam at the same date/time as the rest of the class. If a student has scheduling conflicts due to their testing accommodations and will be taking an exam at a different time than their classmates, they must obtain the course instructor’s permission prior to scheduling the exam at SDAC.</p>

        <p>SDAC requests that students schedule exams as far in advance as possible; the recommendation is to schedule them all at the beginning of the semester. SDAC will not be able to accept late requests within 48 hours of an exam (except in the case of true emergencies or if students are eligible for certain accommodations such as Exam Reschedule).</p>

        <p>Please arrive on time and ready to start – the exam time begins at the time scheduled, and arriving late may impact the amount of time available to complete the exam.</p>

        <p>SDAC testing rooms are only for SDAC students with approved exam-related accommodations.</p>
        
        <h2> General FAQs </h2>
        
        <button class="toggle-button" onclick="toggleContent('can-i-take-any-exam')">Can I take any exam in SDAC?</button>
        <div id="can-i-take-any-exam" class="toggle-content">
            <p>The Exam Proctoring Center at SDAC is reserved for UVA students with disabilities who have approved course-related testing accommodations.</p>
            <p>This is NOT a location for standardized testing such as the GRE, LSAT, or MCAT. This is NOT a location for students without SDAC testing accommodations to take exams. This is NOT a location for tests for non-UVA courses.</p>
        </div>
        
        <button class="toggle-button" onclick="toggleContent('how-to-signup')">How do i sign up to take an exam at SDAC?</button>
        <div id="how-to-signup" class="toggle-content">
            <p>You can reserve a spot in our test proctoring center online through your SDAC Portal. If you would like instructions for how to do this, please see our Tutorials page, specifically focusing on How to Sign up for Exams at SDAC.</p>
        </div>
        
        <button class="toggle-button" onclick="toggleContent('hours-location')">What are the SDAC testing hours and location?</button>
        <div id="hours-location" class="toggle-content">
           
        <p>Typically, our hours are <strong>Monday through Thursday</strong>,<strong>8am to 8:30pm</strong> , and <strong>Fridays</strong>,<strong>8am to 4:30 pm</strong>. We are open extended hours during final exams, and we will have more limited hours during the summer semester and J-term. We are located at 550 Brandon Ave, on the first floor of the Student Health and Wellness Building.</p>
       </div>
       
       
       
       <button class="toggle-button" onclick="toggleContent('what-can-i-take')">What can i take into the testing room?</button>
        <div id="what-can-i-take" class="toggle-content">
       <p>We allow food and drink inside the testing rooms, as long as it’s not distracting to other students. Otherwise, you only need to take in what is needed for the exam. Absolutely no electronic devices (e.g., phones, tablets, or smart watches) are allowed unless you have an approved accommodation to have access to your phone at all times for medical purposes.</p>
       </div>
    </div>

    <footer>
        &copy; 2024 University of Virginia | Student Disability Access Center
    </footer>
</body>
</html>