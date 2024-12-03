<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Tutorials</title>
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
       
        <a href="#">Resources</a>
    </div>

    <!-- Main content -->
    <div class="content-section">
        <h1>Resources</h1>
        
        
       
        <p>
            SDAC is not only here to support students with disabilities on Grounds, but we also act as a liaison and support for UVA faculty and staff. 
            As always, SDAC staff members are available to answer questions or address any concerns.
        </p>
        
       <p>Many resources exist at the University of Virginia as well as in our local community in Charlottesville. Please feel free to ask an SDAC advisor about anything listed!</p> 
<ul>
			<li>How to Navigate the Faculty Portal: Faculty Portal Video Tutorial</li>
			<li>Using the Portal for SDAC-Proctored Exams: Faculty SDAC Exams Video Tutorial</li>
			<li>How to Add an Additional Instructor or TA to a course: Adding Additional Instructors Word Tutorial</li>
			<li>How to Download Exams taken at SDAC: Downloading Completed Exams Word Tutorial</li>
			<li>How to Complete an Agreement with Instructors Related to “Reasonable Modification” Accommodations: Video Tutorial </li>
</ul>
        <!-- Toggle button and content for each section -->
        <h2>Working with SDAC and Accommodations</h2>
        

        <button class="toggle-button" onclick="toggleContent('Advising')">Advising in each school</button>
        <div id="Advising" class="toggle-content">
  
           <p> Advising works a little bit differently in each school, but all undergraduate students have access to advisors who can help them plan classes and choose majors. Every student has an assigned academic advisor, listed on SIS. Each school also has a central office that students can turn to for information about course scheduling, academic requirements, and many other issues related to academic planning and scheduling.</p>

        <p>Students in the College of Arts and Sciences: Association Deans provide broad academic support; they can advise on academic matters, help think broadly about long-term plans, and connect students with the appropriate support services at the University.</p>
        </div>
        
         <button class="toggle-button" onclick="toggleContent(' Arts-and-Science')">College of Arts and Science</button>
        <div id=" Arts-and-Science" class="toggle-content">
          <p>As the College Life Skills Coach, Christy is here to support students in anything related to your academics and making the most of your time here at UVA. There are workshops offered on topics like time management and study strategies; she also works with students one-on-one to hear their story, goals, dreams, challenges, and frustrations. Potential discussion topics include time management, procrastination, study strategies, habits, transitioning to UVA, goal setting, assertiveness, social support, making connections on Grounds, exploring majors or careers, motivation and more.</p>
        </div>
         <button class="toggle-button" onclick="toggleContent('support-services')">Care and support services</button>
        <div id="support-services" class="toggle-content">
        <p>Care and Support Services (CASS) at Student Health and Wellness provides free inclusive support for all students with unmet needs to increase students’ ability to identify, reduce, and navigate barriers to their growth and well-being. They do this by providing direct student services and programming, and by creating and expanding support infrastructures.</p>
          </div>
         
       
    </div>

    <footer>
        &copy; 2024 University of Virginia | Student Disability Access Center
    </footer>

</body>
</html>