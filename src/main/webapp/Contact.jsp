<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Student Health and Wellness</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('images/building.jpg') no-repeat center center fixed;
            background-size: 100% 100%;
            color: #fff;
        }

        .contact-container {
            margin: 100px auto;
            max-width: 800px;
            background: rgba(0, 0, 0, 0.4);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            text-align: center;
        }

        .contact-container h2 {
            font-size: 2rem;
            color: #fff;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input, textarea, button {
            padding: 10px;
            font-size: 1rem;
            border-radius: 5px;
            border: none;
        }

        input, textarea {
            background: rgba(255, 255, 255, 0.5);
            color: #fff;
        }

        input:focus, textarea:focus {
            outline: none;
            box-shadow: 0 0 5px #f7c843;
        }

        button {
            background: #00204e;
            color: #fff;
            cursor: pointer;
        }

        button:hover {
            background: #fff;
        }
    </style>
</head>
<body>
    <div class="contact-container">
        <h2>Contact Us</h2>
        <form action="ContactServlet" method="post">
            <input type="text" name="username" placeholder="Your Name" required>
            <input type="email" name="email" placeholder="Your Email" required>
            <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>
</body>
</html>
