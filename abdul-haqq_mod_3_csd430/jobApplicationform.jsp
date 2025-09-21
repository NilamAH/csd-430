<%--
  User: Nilam Abdul-Haqq
  Date: 9/21/2025
  Job Application Form Page
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Form</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Job Application</h1>
    <p>Please fill out the form below to apply for a position.</p>

    <form action="displayApplication.jsp" method="post">
        <label for="name">Full Name:</label><br>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email Address</label><br>
        <input type="email" id="email" name="email" required><br><br>

        <label for="experience">Years of experience:</label><br>
        <input type="number" id="experience" name="experience" min="0" required><br><br>

        <label for="position">Position Applied For:</label><br>
        <select id="position" name="position">
            <option value="Software Engineer">Software Engineer</option>
            <option value="Web Developer">Web Developer</option>
            <option value="Data Analyst">Data Analyst</option>
            <option value="Project Manager">Project Manager</option>
        </select><br><br>

        <label for="coverLetter">Cover Letter / Notes:</label><br>
        <textarea id="coverLetter" name="coverLetter" rows="5" cols="40"></textarea><br><br>

        <input type="submit" value="Submit Application">
    </form>
</body>
</html>
