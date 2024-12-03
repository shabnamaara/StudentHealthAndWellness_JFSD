<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Blockchain Hub</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* General styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }

        /* Header Styles */
        header {
            background: linear-gradient(45deg, rgba(0, 32, 78, 0.4), rgba(0, 0, 0, 0.6));
            padding: 10px;
            position: fixed;
            width: 100%;
            height: 5%;
            z-index: 1000;
            top: 0;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.7);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .header-container {
            max-width: 2400px;
            margin: 0 auto;
            padding: 0 20px;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo-container {
            display: flex;
            align-items: center;
            margin-right: 30px;
        }

        .logo-container img {
            width: 60px;
            margin-right: 15px;
        }

        .logo-container h1 {
            margin: 0;
            font-size: 32px;
            background: linear-gradient(45deg, #f4d03f, #1DBF73);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: gradientText 3s ease-in-out infinite;
        }

        @keyframes gradientText {
            0%, 100% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
        }

        /* Navigation Menu */
        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        nav ul li {
            position: relative; /* Positioning for the underline effect */
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #EAEAEA;
            font-weight: bold;
            padding: 8px 15px;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s, transform 0.3s;
            font-size: 20px; /* Increased text size */
            position: relative; /* Necessary for pseudo-element positioning */
        }

        nav ul li a.active {
            color: #00bcd4; /* Change text color to match the underline */
        }

        nav ul li a.active::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: -4px; /* Position the underline below the text */
            width: 100%; /* Full width underline */
            height: 2px; /* Thickness of the underline */
            background: #00bcd4; /* Underline color */
        }

        nav ul li a:hover {
            color: #00bcd4;
            background-color: rgba(29, 191, 115, 0.2); /* Subtle hover background */
            transform: scale(1.05); /* Slightly enlarges the link on hover */
        }

        nav ul li a:hover::after {
            width: 100%; /* Full width underline on hover */
        }

        /* Contact section */
        .contact-section {
            padding: 90px;
            background-color: rgba(255, 255, 255, 0.1);
            text-align: center;
            border-radius: 15px;
            box-shadow: 0px 4px 20px rgba(255, 255, 255 0.1);
            margin: 200px auto; /* Center the section vertically */
            max-width: 1000px; /* Limit the width */
            display: flex; /* Flexbox for image and content alignment */
            align-items: center; /* Center vertically */
            position: relative; /* For absolute positioning of image */
        }
        @keyframes jump {
        0%, 100% {
        transform: translateY(0); /* Start and end at original position */
        }
        50% {
        transform: translateY(-20px); /* Move up */
        }
      }

         .contact-image {
         width: 500px; /* Set width of the image */
         margin-right: 30px; /* Space between image and text */
         animation: jump 0.8s ease infinite; /* Apply the jump animation */
         }


        .contact-heading {
            font-size: 2.5rem;
            color: #f7c843;
            margin-bottom: 30px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.7);
        }

        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .contact-form input, .contact-form textarea {
            padding: 10px;
            border-radius: 10px; /* Rounded corners */
            border: none;
            font-size: 16px;
            transition: box-shadow 0.3s;
        }

        .contact-form input[type="text"],
        .contact-form input[type="email"] {
            background-color: rgba(255, 255, 255, 0.1);
            color: #fff;
        }

        .contact-form textarea {
            background-color: rgba(255, 255, 255, 0.1);
            color: #fff;
            resize: none; /* Prevents resizing */
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            box-shadow: 0 0 5px #1DBF73; /* Highlight on focus */
            outline: none; /* Remove default outline */
        }

        .contact-form button {
            padding: 10px;
            border: none;
            border-radius: 10px; /* Rounded corners */
            background-color: #1DBF73;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        .contact-form button:hover {
            background-color: #17a45d;
            transform: scale(1.05); /* Slightly enlarge on hover */
        }

        /* Contact details */
        .contact-details {
            margin-top: 30px;
            font-size: 18px;
            color: #EAEAEA;
        }
        /* Placeholder color */
        .contact-form input::placeholder,
        .contact-form textarea::placeholder {
        color: rgba(255, 255, 255, 0.7); /* Adjust the color as needed */
        opacity: 1; /* Ensures the color is applied as specified */
        }
        
        .contact-details p {
            margin: 5px 0;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
<header>
    <div class="header-container">
        <div class="logo-container">
            <img src="images/tbh_logo.jpeg" alt="University Logo" class="logo" />
            <h1>The Blockchain Hub</h1>
        </div>
        <!--  <nav>
            <ul>
                <li><a href="dashboard1.jsp">About</a></li>
                <li><a href="tech team.jsp">Technical</a></li>
                <li><a href="non tech team.jsp">Non-Technical</a></li>
                <li><a href="Activities.jsp">Activities</a></li>
                <li><a href="Gallery.jsp">Gallery</a></li>
                <li><a href="Contact.jsp" class="active">Contact</a></li>
            </ul>
        </nav>-->
    </div>
</header>

<div class="contact-section">
    <img src="images/email_sending.png" alt="Contact Image" class="contact-image"> <!-- Add your PNG image here -->
    <div>
        <h2 class="contact-heading">Contact Us</h2>
        <form class="contact-form" method="post" action="ContactServlet">
            <input type="text" name="name" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
            <button type="submit">Send Message</button>
       </form>

        
        <br>   
        <br>                                          
         
    </div>
</div>

</body>
</html>
