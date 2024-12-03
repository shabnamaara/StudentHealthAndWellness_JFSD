<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Password Reset Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: #333;
        }
        p {
            color: #555;
        }
        a {
            color: #0047ab;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Password Reset Confirmation</h2>
    <p>
        <% 
            String message = (String) request.getAttribute("message");
            if (message != null) {
                out.print(message);
            } else {
                out.print("An unexpected error occurred.");
            }
        %>
    </p>
    <p><a href="login.jsp">Go back to login</a></p>
</div>

</body>
</html>
