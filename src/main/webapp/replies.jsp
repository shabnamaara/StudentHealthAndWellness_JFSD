<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Discussion Replies</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h1, h2 {
            color: #333;
        }

        .discussion, .reply {
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

        .reply p {
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
    <h1>Replies to Discussion: ${discussion.title}</h1>

    <div class="discussion">
        <h3>${discussion.title}</h3>
        <p>${discussion.content}</p>
        <p><strong>Posted by:</strong> ${discussion.username}</p>
        <p><strong>Posted on:</strong> ${discussion.createdAt}</p>
    </div>

    <h2>Replies:</h2>
    <c:if test="${not empty replies}">
        <c:forEach var="reply" items="${replies}">
            <div class="reply">
                <p>${reply.content}</p>
                <p><strong>Posted by:</strong> ${reply.username}</p>
                <p><strong>Posted on:</strong> ${reply.createdAt}</p>
            </div>
        </c:forEach>
    </c:if>

    <c:if test="${empty replies}">
        <p>No replies available for this discussion yet.</p>
    </c:if>

    <div class="reply-form">
        <h4>Reply to this Discussion:</h4>
        <form action="submitReply" method="post">
            <input type="hidden" name="discussionId" value="${discussion.id}" />
            <textarea name="content" required placeholder="Type your reply here..."></textarea>
            <input type="submit" value="Submit Reply">
        </form>
    </div>
</body>
</html>
