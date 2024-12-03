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
       
        <a href="#">Faculty Tutorials</a>
    </div>

    <!-- Main content -->
    <div class="content-section">
        <h1>Faculty Tutorials</h1>
        
        
       
        <p>
            SDAC is not only here to support students with disabilities on Grounds, but we also act as a liaison and support for UVA faculty and staff. 
            As always, SDAC staff members are available to answer questions or address any concerns.
        </p>
        
       <p>If faculty and staff are new to working with SDAC, please start by reviewing the PowerPoint presentation: Online Guide to Student Accommodations.</p> 
<ul>
			<li>How to Navigate the Faculty Portal: Faculty Portal Video Tutorial</li>
			<li>Using the Portal for SDAC-Proctored Exams: Faculty SDAC Exams Video Tutorial</li>
			<li>How to Add an Additional Instructor or TA to a course: Adding Additional Instructors Word Tutorial</li>
			<li>How to Download Exams taken at SDAC: Downloading Completed Exams Word Tutorial</li>
			<li>How to Complete an Agreement with Instructors Related to “Reasonable Modification” Accommodations: Video Tutorial </li>
</ul>
        <!-- Toggle button and content for each section -->
        <h2>Working with SDAC and Accommodations</h2>
        

        <button class="toggle-button" onclick="toggleContent('Confidentiality')">Confidentiality</button>
        <div id="Confidentiality" class="toggle-content">
            <p>SDAC advises instructors that disability matters are confidential and should not be shared with others, and that discussion and implementation of academic accommodations should be handled in a discreet manner.</p>
            
        </div>
        
         <button class="toggle-button" onclick="toggleContent('Disability Disclosure')">Disability Disclosure</button>
        <div id="Disability Disclosure" class="toggle-content">
          <li> Students who wish to receive disability accommodations and services are encouraged to initially disclose their disability status directly to SDAC.</li>
          <li>Students need not disclose the specific nature of their disability to their instructor, nor does SDAC encourage the instructor to inquire about a potential disability. Students are advised against sharing documentation of their disability directly with their instructor, as instructors are not responsible for interpreting, evaluating, or responding to disability documentation.</li> 
          <li>When the student discloses their disability status to their instructor rather than SDAC, instructors should immediately refer the student to SDAC to determine the student’s eligibility to receive accommodations.</li>
            
        </div>
         <button class="toggle-button" onclick="toggleContent('Referring Students to SDAC')">Referring Students to SDAC</button>
        <div id="Referring Students to SDAC" class="toggle-content">
           <p>If you are working with a student whom you believe would benefit from our services, then feel free to suggest that they contact SDAC. You could also send them the direct link to submit an application for SDAC services.</p>
        </div>
         <button class="toggle-button" onclick="toggleContent('Syllabus Statements')">Syllabus Statements</button>
        <div id="Syllabus Statements" class="toggle-content">
          <p>Faculty are required to incorporate information for students with disabilities in their syllabi. We have provided sample wording for statements below:</p>

           <h3>Syllabi Statement Option</h3>

           <p>UVA is committed to creating a learning environment that meets the needs of its diverse student body. 
            If you anticipate or experience any barriers to learning in this course, please feel welcome to discuss your concerns with me. If you have a disability, or think you may have a disability, you may also want to meet with the Student Disability Access Center (SDAC), to request an official accommodation. You can find more information about SDAC, including how to apply online, through their website at www.studenthealth.virginia.edu/SDAC. If you have already been approved for accommodations through SDAC, 
              please make sure to send me your accommodation letter and meet with me so we can develop an implementation plan together.</p>
        </div>
       
    </div>

    <footer>
        &copy; 2024 University of Virginia | Student Disability Access Center
    </footer>

</body>
</html>