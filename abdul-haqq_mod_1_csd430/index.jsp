<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My First JSP Page</title>
</head>
<body>
<h1>Welcome to JSP!</h1>
<%
    String name = "Nilam";
    out.println("<p>Hello, " + name + "! This is Java running inside JSP.</p>");
%>
</body>
</html>
