<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KL University - Documentation Guidelines</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content:center;
            align-items:center;
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
            max-width : 2000px;
            width: 80%;
            margin-left: 270px; /* Adjusting for sidebar width */
            padding: 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: calc(100% - 270px); /* Adjust width based on sidebar */
            overflow-y: auto; /* Ensure scroll if content is long */
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
            background-color:#003366;
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
        <a href="#">Documentation Guidelines</a>
       
        
    </div>

    <!-- Main content -->
    <div class="content-section">
        <h1>University of Virginia Documentation Guidelines</h1>
        <p>The University of Virginia recognizes a student with a disability as anyone whose impairment substantially limits one or more major life activities. Students who wish to obtain accommodations must submit documentation that reflects the unique functional impact of a student's disability.</p>

        <h2>General Documentation Guidelines</h2>
        <p>Documentation must:</p>
        <ul>
            <li>Establish that the student is a person with a disability and reflect a student’s present level of functioning.</li>
            <li>Provide current evidence that the condition significantly impacts one or more major life functions.</li>
            <li>Demonstrate a direct nexus between the nature of the condition, the requested accommodation, and the need for equal access.</li>
        </ul>

        <h2>Potential Documentation Types</h2>
        <ul>
            <li>Neuropsychological Report</li>
            <li>Psychoeducational Report</li>
            <li>Evaluation Report</li>
            <li>Verification of Disability Form</li>
            <li>A detailed letter addressing all components of the Verification of Disability Form</li>
            <li>Post-operative report</li>
        </ul>

        <h2>Potential Documentation Providers</h2>
        <ul>
            <li>Licensed clinician</li>
            <li>Psychologist</li>
            <li>Psychiatrist</li>
            <li>Primary care physician</li>
            <li>Specialist</li>
            <li>Mental health practitioner</li>
        </ul>
        <p>The provider should know the student well, have diagnosed the disorder, and/or be responsible for treatment of the disorder.</p>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 University of Virginia. All rights reserved.</p>
    </footer>
</body>
</html>