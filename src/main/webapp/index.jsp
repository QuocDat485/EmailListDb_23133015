<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Join Our Email List</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<div class="container">
    <h1>Join Our Email List</h1>
    <form action="emailList" method="post">

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="firstName">First name:</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="lastName">Last name:</label>
        <input type="text" id="lastName" name="lastName" required>

        <input type="submit" value="Submit">
    </form>
</div>
</body>
</html>