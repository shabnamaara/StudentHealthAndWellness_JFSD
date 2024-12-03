<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dietary Accommodation Requests - University of Virginia</title>
    <link rel="stylesheet" href="style.css">
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
            padding-bottom: 80px;  /* Ensure scroll if content is long */
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
        <a href="accomodation.jsp">Accommodations and Services</a>
        <!-- Dropdown -->
        <button class="toggle-button" onclick="toggleContent('accomodation-dropdown')">Accommodation Options</button>
        <div id="accomodation-dropdown" class="toggle-content">
            <a href="Deaf-Hard.jsp">Deaf and Hard of Hearing Services</a>
            <a href="Dietary-Requests.jsp">Dietary Accommodation Requests</a>
            <a href="Reasonable-Modifications.jsp">Reasonable Modifications</a>
            <a href="Transportation.jsp">Transportation Accommodations</a>
        </div>
    </div>

    <div class="content-section">
        <h1>Dietary Accommodation Requests</h1>
        <p>The learning environment and residential living, including dining and the University Meal Plans, are central to the University experience, particularly for our First Year students. Students seeking support services from the Student Disability Access Center (SDAC) on the basis of a medically-based disability condition that results in severe food allergies or need for a strictly maintained special diet are required to submit formal documentation.</p>
        <p>To request accommodations, students should submit:</p>
        <ul>
            <li><a href="#">Student Request for Dietary Accommodation Form</a></li>
            <li><a href="#">Verification of Disability Form</a></li>
        </ul>
        <p>SDAC needs documentation to accurately and equitably evaluate dietary requests based on food allergy and/or medically based dietary requirements. Documentation consists of a personal explanation of why the dietary accommodations are necessary and an evaluation by a clinician.</p>
    </div>

    <footer>
        &copy; 2024 University of Virginia | Student Disability Access Center
    </footer>
</body>
</html>