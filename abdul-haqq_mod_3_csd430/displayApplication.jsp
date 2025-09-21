<%--
  User: Nilam Abdul-Haqq
  Date: 9/21/2025
  Display Submitted Job Aplication Data
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Job Application Details</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Application Received</h1>
    <p>Below is a summary of the information you submitted:</p>

    <table>
        <thead>
            <tr>
                <th>Field</th>
                <th>Submitted Value</th>
            </tr>
    </thead>
    <tbody>
    <%
         // Retrieve form data
         String name = request.getParameter("name");
         String email = request.getParameter("email");
         String experience = request.getParameter("experience");
         String position = request.getParameter("position");
         String coverLetter = request.getParameter("coverLetter");
    %>
        <tr>
            <td>Full Name</td>
            <td><%= name %></td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>Years of Experience</td>
            <td><%= experience %></td>
        </tr>
        <tr>
            <td>Position Applied For</td>
            <td><%= position %></td>
        </tr>
        <tr>
            <td>Cover Letter</td>
            <td><%= coverLetter %></td>
        </tr>
     </tbody>
    </table>

   <footer>
       <p>Data submitted by applicant. Display generated using JSP.</p>
   </footer>
</body>
</html>
