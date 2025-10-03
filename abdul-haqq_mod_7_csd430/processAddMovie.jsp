<%--
  User: Nilam Abdul-Haqq
  Date: 10/06/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDAO, com.example.csd430.Movie, java.util.List" %>
<html>
<head>
    <title>Movie Added</title>
</head>
<body>
<h1>Movie Added Successfully</h1>
<%
    // Read form data
    String title = request.getParameter("title");
    String director = request.getParameter("director");
    String genre = request.getParameter("genre");

    int releaseYear = 0;
    double rating = 0.0;

    try {
        releaseYear = Integer.parseInt(request.getParameter("releaseYear"));
    } catch (Exception e) {
        out.println("<p style='color:red;'>Invalid year value!</p>");
    }

    try {
        rating = Double.parseDouble(request.getParameter("rating"));
    } catch (Exception e) {
        out.println("<p style=' color:red;'>Invalid rating value!</p>");
    }

    // Create Movie object
    Movie newMovie = new Movie(0, title, director, genre, releaseYear, rating);

    // Insert into DB
    MovieDAO dao = new MovieDAO();
    dao.addMovie(newMovie);

    // Fetch all movies
    List<Movie> movies = dao.getAllMovies();
%>

<h2>All Movies in Database</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th><th>Title</th><th>Director</th>
        <th>Genre</th><th>Year</th><th>Rating</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (Movie movie : movies) {
    %>
    <tr>
        <td><%= movie.getMovieId() %></td>
        <td><%= movie.getTitle() %></td>
        <td><%= movie.getDirector() %></td>
        <td><%= movie.getGenre() %></td>
        <td><%= movie.getReleaseYear() %></td>
        <td><%= movie.getRating() %></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
