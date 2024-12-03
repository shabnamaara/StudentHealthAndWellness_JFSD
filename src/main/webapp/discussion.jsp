<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Discussion</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background-image: url('images/building.jpg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #5A67D8;
            margin-bottom: 30px;
            font-size: 2.5em;
            text-shadow: 1px 1px 2px rgba(255, 255, 255, 0.5);
        }

        form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            margin-bottom: 40px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }

        input[type="text"],
        input[type="submit"],
        textarea,
        select {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        textarea:focus {
            border-color: #5A67D8;
            outline: none;
        }

        input[type="submit"] {
            background-color: #5A67D8;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 1.1em;
        }

        input[type="submit"]:hover {
            background-color: #434190;
        }

        .discussion {
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid #ccc;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .discussion h3 {
            color: #4A5568;
            margin-top: 0;
        }

        .discussion p {
            line-height: 1.6;
        }

        .comments {
            margin-top: 20px;
            padding-left: 20px;
        }

        .comments h4 {
            margin-bottom: 10px;
        }

        .comment {
            background-color: rgba(220, 220, 220, 0.7);
            border-left: 4px solid #5A67D8;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
        }

        footer {
            text-align: center;
            margin-top: 40px;
            font-size: 0.9em;
            color: #888;
        }
    </style>
    <script>
        function addComment(discussionId) {
            const commentInput = document.getElementById(`comment-input-${discussionId}`);
            const commentsContainer = document.getElementById(`comments-${discussionId}`);
            const newCommentText = commentInput.value;

            if (newCommentText.trim() === '') {
                alert('Please enter a comment before submitting.');
                return;
            }

            const newCommentDiv = document.createElement('div');
            newCommentDiv.classList.add('comment');
            newCommentDiv.textContent = newCommentText;

            commentsContainer.appendChild(newCommentDiv);
            commentInput.value = ''; // Clear input field
        }
    </script>
</head>
<body>
    <h1>Start a Discussion</h1>

    <form action="submitDiscussion" method="post">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required>

        <label for="content">Content:</label>
        <textarea id="content" name="content" required></textarea>

        <input type="submit" value="Submit Discussion">
    </form>

    <h2>Previous Discussions</h2>
    <!-- Example of dynamically generated discussions -->
    <div class="discussion">
        <h3>Discussion Title 1</h3>
        <p>Discussion content goes here. This is a sample of what a previous discussion might look like.</p>
        <div class="comments" id="comments-1">
            <h4>Comments:</h4>
        </div>
        <input type="text" id="comment-input-1" placeholder="Add a comment...">
        <input type="button" value="Submit Comment" onclick="addComment(1)">
    </div>
    <div class="discussion">
        <h3>Discussion Title 2</h3>
        <p>Another discussion example with some engaging content to stimulate conversation.</p>
        <div class="comments" id="comments-2">
            <h4>Comments:</h4>
        </div>
        <input type="text" id="comment-input-2" placeholder="Add a comment...">
        <input type="button" value="Submit Comment" onclick="addComment(2)">
    </div>

    <footer>
        &copy; 2024 Discussion Forum. All rights reserved.
    </footer>
</body>
</html> create a database for the above code to store the discussions and the comments in mysql database