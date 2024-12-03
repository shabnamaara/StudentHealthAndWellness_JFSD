<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accommodations - University of Virginia</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        /* Sidebar styling */
        .sidebar {
            width: 220px;
            background-color: rgba(244, 244, 244, 0.9);
            padding: 20px;
            position: fixed;
            height: 100%;
            left: 0;
            top: 0;
            overflow-y: auto;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar h2 {
            color: #E87722;
            text-transform: uppercase;
            font-size: 1.2em;
            margin-bottom: 15px;
        }

        .sidebar a {
            text-decoration: none;
            color: #012D85;
            display: block;
            padding: 10px 15px;
            margin-bottom: 10px;
            border-radius: 4px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #E87722;
            color: white;
        }

        /* Main content styling */
        .content-section {
            max-width: 1600px;
            width: 80%;
            margin-left: 260px;
            padding: 30px;
            background: rgba(255, 255, 255, 0.85);
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
            overflow-y: auto;
            padding-bottom: 80px;
            margin-top: 20px;
        }

        .content-section h1, .content-section h2, .content-section h3 {
            color: #012D85;
            border-bottom: 2px solid #E87722;
            padding-bottom: 5px;
        }

        .content-section p {
            line-height: 1.8;
            font-size: 1.1em;
        }

        .content-section ul {
            padding-left: 30px;
            margin-bottom: 20px;
            list-style-type: disc;
            color: #333;
        }

        .content-section ul li {
            margin-bottom: 15px;
            font-size: 1.05em;
        }

        /* Footer styling */
        footer {
            text-align: center;
            padding: 15px;
            background-color: #003366;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
            font-size: 0.9em;
            letter-spacing: 1px;
        }

        /* Toggle button styling */
        .toggle-button {
            background-color: #00008B;
            color: white;
            padding: 12px;
            border: none;
            cursor: pointer;
            width: 100%;
            text-align: left;
            font-size: 1.1em;
            outline: none;
            margin-bottom: 15px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .toggle-button:hover {
            background-color: #D6651F;
        }

        .toggle-content {
            display: none;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 15px;
            margin-top: 10px;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
        }

        /* Styling for hover effects on content elements */
        .toggle-content ul li:hover {
            background-color: rgba(0, 0, 139, 0.1);
            border-left: 3px solid #E87722;
            padding-left: 12px;
        }

        /* Add subtle animations */
        .content-section, .toggle-content, .sidebar {
            animation: fadeIn 0.6s ease-in-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
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
        <a href="accomodation.jsp">Accommodations and Services</a>
        <button class="toggle-button" onclick="toggleContent('accomodation-dropdown')">Accommodation Options</button>
        <div id="accomodation-dropdown" class="toggle-content">
            <a href="Deaf-Hard.jsp">Deaf and Hard of Hearing Services</a>
            <a href="Dietary-Requests.jsp">Dietary Accommodation Requests</a>
            <a href="Reasonable-Modifications.jsp">Reasonable Modifications</a>
            <a href="Transportation.jsp">Transportation Accommodations</a>
        </div>
    </div>

    <!-- Main content -->
    <div class="content-section">
        <h1>Accommodations and Services</h1>
        <p>In accordance with the ADA, as amended, and Section 504 of the Rehabilitation Act, the University of Virginia offers an array of individualized accommodations and services to qualified students with disabilities. Accommodations are determined using an interactive process between the student and SDAC staff. Most students will have to submit documentation to be eligible for accommodations. If you have questions or would like to find out more information, please feel free to contact SDAC.</p>

        <h2>Information for Prospective Students</h2>
        <p>Whether you are a high school student in the early stages of considering colleges, a student at another college considering transfer, or you have applied and been offered admission - indeed whether you are a prospective student or the parent/guardian of a prospective student, we offer a warm welcome and invite you to contact us (<strong>(434) 243-5180</strong> or <a href="mailto:sdac@virginia.edu">sdac@virginia.edu</a>) if there is any issue you would like to discuss.</p>

        <h2>Available Accommodations</h2>
        <ul>
            <li>Alternative course materials (e.g., eText, braille)</li>
            <li>ASL-English interpreting</li>
            <li>Assistive Technology</li>
            <li>Captioning (live and post-production captioning services)</li>
            <li>Consultations with prospective and incoming students</li>
            <li>Exam accommodations (extra time, reduced-distraction environment, etc.)</li>
        </ul>

        <!-- Emotional Support Animal Question Section -->
        <button class="toggle-button" onclick="toggleContent('esa-content')">Emotional Support Animal on University Property</button>
        <div id="esa-content" class="toggle-content">
            <p>University policy (SEC-044: Use and Access of Service Animals, Service Dogs in Training, and Emotional Support Animals on University Property or with Respect to University Programs and Activities) “has established requirements that provide consistency in the use and access of service animals, including those in training, and emotional support animals on University property, and with respect to all University programs and activities in the Academic Division.”</p>
            <p>SDAC receives requests, reviews documentation, and works with Housing & Residence Life to facilitate accommodations for students with medical conditions or disabilities who are requesting to bring a service animal or emotional support animal to live in on-Grounds housing.</p>
            <p>Students with disabilities requesting to bring an Emotional Support Animal into University-Operated Housing should follow the steps below and submit the following forms to determine approval prior to bringing the animal on Grounds:</p>
            <ul>
                <li>To be completed by the student:
                    <ul>
                        <li>Apply for SDAC Services</li>
                        <li>Student Request for Housing Accommodation Form</li>
                        <li>Animal in On-Grounds Housing Information Form</li>
                    </ul>
                </li>
                <li>To be completed by a health care provider:
                    <ul>
                        <li>Verification of Disability Form</li>
                        <li>Addendum to Documentation: Support for Request for an Emotional Support Animal in University-Operated Housing</li>
                    </ul>
                </li>
            </ul>
        </div>

        <!-- World Language Question Section -->
        <button class="toggle-button" onclick="toggleContent('world-language-content')">World Language Substitution</button>
        <div id="world-language-content" class="toggle-content">
            <p>World language substitutions are available to students with a disability that substantially limits their ability to learn a foreign language. Students must be approved for a substitution by SDAC in order to enroll in courses which satisfy the substitution.</p>
            <p>Students seeking a world language substitution should submit an application for services, along with any related documentation. Students may submit additional documentation related specifically to their request for a substitution.</p>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        &copy; University of Virginia | Student Disability Access Center (SDAC)
    </footer>

</body>

</html>
