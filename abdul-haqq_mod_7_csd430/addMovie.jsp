<%--
  User: Nilam Abdul-Haqq
  Date: 10/06/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a New Movie</title>
</head>
<body>
<h1>Add a New Movie Record</h1>
<p>Fill in the form to add a new movie to the database.</p>

<form action="processAddMovie.jsp" method="post">
    Title: <input type="text" name="title" required><br><br>
    Director: <input type="text" name="director" required><br><br>
    Genre: <input type="text" name="genre" required><br><br>
    Release Year: <input type="number" name="releaseYear" required><br><br>
    Rating: <input type="number" step="0.1" name="rating" required><br><br>
    <input type="submit" value="Add Movie">
</form>
</body>
</html>
