<%--
  User: Nilam Abdul-Haqq
  Date: 10/3/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDAO, com.example.csd430.Movie" %>
<html>
<head>
    <title>Movie Updated</title>
</head>
<body>
<h1>Movie Updated Successfully</h1>
<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String genre = request.getParameter("genre");
    int releaseYear = Integer.parseInt(request.getParameter("releaseYear"));
    double rating = Double.parseDouble(request.getParameter("rating"));

    MovieDAO dao = new MovieDAO();
    Movie updatedMovie = new Movie(movieId, title, director, genre, releaseYear, rating);
    dao.updateMovie(updatedMovie);

    Movie movie = dao.getMovieById(movieId);
%>
<h2>Updated Record</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th><th>Title</th><th>Director</th>
        <th>Genre</th><th>Year</th><th>Rating</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td><%= movie.getMovieId() %></td>
        <td><%= movie.getTitle() %></td>
        <td><%= movie.getDirector() %></td>
        <td><%= movie.getGenre() %></td>
        <td><%= movie.getReleaseYear() %></td>
        <td><%= movie.getRating() %></td>
    </tr>
    </tbody>
</table>
</body>
</html>
