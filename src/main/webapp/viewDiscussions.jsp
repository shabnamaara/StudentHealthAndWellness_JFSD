<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>View Discussions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1, h2 {
            color: #333;
        }

        .discussion {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .discussion h3 {
            margin: 0;
            color: #0056b3;
        }

        .discussion p {
            margin: 5px 0;
        }

        .reply-form {
            margin-top: 15px;
            border-top: 1px solid #ccc;
            padding-top: 10px;
        }

        input[type="text"],
        textarea,
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        textarea {
            height: 100px;
        }
    </style>
</head>
<body>
    <h1>Discussions</h1>

    <c:if test="${not empty discussions}">
        <c:forEach var="discussion" items="${discussions}">
            <div class="discussion">
                <h3>${discussion.title}</h3>
                <p>${discussion.content}</p>
                <p><strong>Posted by:</strong> ${discussion.username}</p>
                <p><strong>Posted on:</strong> ${discussion.createdAt}</p>

                <div class="reply-form">
                    <h4>Reply to this Discussion:</h4>
                    <form action="submitReply" method="post">
                        <input type="hidden" name="discussionId" value="${discussion.id}" />
                        <textarea name="content" required placeholder="Type your reply here..."></textarea>
                        <input type="submit" value="Submit Reply">
                    </form>
                </div>
            </div>
        </c:forEach>
    </c:if>

    <c:if test="${empty discussions}">
        <p>No discussions available at the moment.</p>
    </c:if>
</body>
</html>