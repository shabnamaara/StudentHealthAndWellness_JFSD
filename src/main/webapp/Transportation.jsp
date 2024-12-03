<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transportation Accommodations - University of Virginia</title>
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
        <h1>Transportation Accommodations</h1>
        <p>Students with existing SDAC accommodations who need transportation accommodations should reach out to their SDAC Advisor or email <a href="mailto:sdac@virginia.edu">sdac@virginia.edu</a>. SDAC will make referrals for students requiring either temporary or long-term accommodations for accessible transportation around Grounds.</p>
        <p>UVA works with the University Transit Service (UTS) to ensure that accessible transportation options are available for students with disabilities, including:</p>
        <ul>
            <li>Accessible fixed-route bus services</li>
            <li>Paratransit Services for students who are unable to access fixed-route services</li>
        </ul>
        <p>For information about UTS accessibility services, visit <a href="https://parking.virginia.edu/accessible-transportation">Accessible Transportation</a> on the UVA Parking and Transportation website.</p>
    </div>

    <footer>
        &copy; 2024 University of Virginia | Student Disability Access Center
    </footer>
</body>
</html>