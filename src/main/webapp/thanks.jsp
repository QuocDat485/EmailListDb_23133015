<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank You</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<div class="container">
    <h1>Thanks for joining our email list</h1>
    <div class="thanks">
        <p>Here is the information you entered:</p>
        <ul>
            <li>Email: ${user.email}</li>
            <li>First Name: ${user.firstName}</li>
            <li>Last Name: ${user.lastName}</li>
        </ul>
        <a href="index.jsp">Back to form</a>
    </div>
</div>
</body>
</html>