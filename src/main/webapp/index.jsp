<%@ page import="com.example.GetText" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Java Web App</title>
</head>
<body>
    <h1>Java Web App!</h1>
    <p>Running from a WAR artifact.</p>
    <br>
    <p><%= GetText.getText() %></p>
</body>
</html>
