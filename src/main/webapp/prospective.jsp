<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prospective and Incoming Students</title>
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
            max-width: 900px;
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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
     <div class="sidebar">
        <h2>Menu</h2>
        <a href="index1.jsp">Home</a>
       
        <a href="#">Prospective Students</a>
        
    </div>
    <!-- Main content -->
    <div class="content-section">
        <h1>Information for Prospective and Incoming Students</h1>
        <p>The Student Disability Access Center (SDAC) offers a warm welcome to students in the early stages of considering colleges, transferring, or those offered admission.</p>

        <p>The University of Virginia offers an array of individualized accommodations and services to qualified students with disabilities. The SDAC office regularly acts as a liaison between students with disabilities and their instructors, and other University offices, which may include Housing & Residence Life, Parking & Transportation, and Dining Services.</p>

        <p>This page includes important information regarding the timeline process, the difference between having accommodations in K-12 versus higher education, and other resources that may be helpful during the college transition and for prospective students.</p>

        <p>Please contact SDAC at <a href="mailto:sdac@virginia.edu">sdac@virginia.edu</a> or call 434-243-5180 with any questions or to learn more.</p>

        <h2>Transition Steps</h2>
        <ol>
            <li><strong>Review Documentation Guidelines:</strong> Review the SDAC Documentation Guidelines to ensure students submit all necessary documentation. Please note that an Individualized Education Plan (IEP) or Section 504 Plan often does not provide enough information to meet the documentation requirements.</li>
            <li><strong>Apply for Services and Upload Documentation:</strong> Submit an SDAC Application once students have been accepted to UVA and receive a UVA student computing ID. Students can set up their computing ID from the Student IT Checklist through Orientation.</li>
            <li><strong>SDAC Reviews Application and Documentation:</strong> Reviews will typically begin after the academic semester has ended (Fall and Spring). See important deadlines as listed.</li>
            <li><strong>SDAC Contacts the Student for a Meeting:</strong> Once the application review is complete, an SDAC Advisor will contact the student through their UVA email address (i.e., @virginia.edu) with instructions to set up an initial meeting.</li>
        </ol>
    </div>

    <footer>
        &copy; 2024 University of Virginia | Student Disability Access Center
    </footer>
</body>
</html>