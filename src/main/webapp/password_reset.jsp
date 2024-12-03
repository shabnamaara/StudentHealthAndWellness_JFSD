<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reset Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        /* Basic styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/building.jpg'); /* Add your background image path here */
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }

        .content {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
        }

        h2 {
            color: #0047ab;
            border-bottom: 2px solid #0047ab;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .reset-password-container {
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }

        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #f9f9f9;
        }

        button {
            background-color: #0047ab;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #003080;
        }

        a {
            color: #0047ab;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .content {
                margin: 20px;
                padding: 15px;
            }

            h2 {
                font-size: 1.2em;
            }
        }
    </style>
</head>
<body>

    <div class="content">
        <div class="reset-password-container">
            <h2>Reset Password</h2>
            <form action="ProcessPasswordReset" method="post">
                <input type="hidden" name="token" value="<%= request.getParameter("token") %>" />
                <label for="newPassword">New Password:</label>
                <input type="password" id="newPassword" name="newPassword" required>
                <button type="submit">Reset Password</button>
            </form>
        </div>
    </div>
    
</body>
</html>
