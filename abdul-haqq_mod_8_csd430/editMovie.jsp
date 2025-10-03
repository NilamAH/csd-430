<%--
  User: Nilam Abdul-Haqq
  Date: 10/3/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDAO, com.example.csd430.Movie" %>
<html>
<head>
    <title>Edit Movie</title>
</head>
<body>
<h1>Edit Movie Record</h1>
<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    MovieDAO dao = new MovieDAO();
    Movie movie = dao.getMovieById(movieId);
%>
<form action="processUpdateMovie.jsp" method="post">
    Movie ID: <input type="text" name="movieId" value="<%= movie.getMovieId() %>" readonly><br><br>
    Title: <input type="text" name="title" value="<%= movie.getTitle() %>" required><br><br>
    Director: <input type="text" name="director" value="<%= movie.getDirector() %>" required><br><br>
    Genre: <input type="text" name="genre" value="<%= movie.getGenre() %>" required><br><br>
    Release Year: <input type="number" name="releaseYear" value="<%= movie.getReleaseYear() %>" required><br><br>
    Rating: <input type="number" step="0.1" name="rating" value="<%= movie.getRating() %>" required><br><br>
    <input type="submit" value="Update Movie">
</form>
</body>
</html>
