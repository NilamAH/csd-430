<%--
  User: Nilam Abdul-Haqq
  Date: 10/4/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDAO, com.example.csd430.Movie, java.util.List" %>
<html>
<head>
    <title>Delete Movie</title>
</head>
<body>
<h1>Delete a Movie Record</h1>
<%
    MovieDAO dao = new MovieDAO();
    List<Movie> movies = dao.getAllMovies();
%>

<h2>Current Movies In List</h2>
<table border="1">
    <thead>
    <tr>
        <th>ID</th><th>Title</th><th>Director</th>
        <th>Genre</th><th>Year</th><th>Rating</th>
    </tr>
    </thead>
    <tbody>
    <%
        if (movies.isEmpty()) {
    %>
        <tr>
            <td colspan="6">No movies available.</td>
        </tr>
    <%
        } else {
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
       }
    %>
    </tbody>
</table>

<h2>Delete a Record</h2>
<form action="processDelete.jsp" method="post">
    <label for="movieId">Select Movie ID to Delete:</label>
    <select name="movieId" id="movieId" <%= movies.isEmpty() ? "disabled" : "" %>>
        <%
            for (Movie movie : movies) {
        %>
        <option value="<%= movie.getMovieId() %>"><%= movie.getMovieId() %> - <%= movie.getTitle() %></option>
        <%
            }
        %>
    </select>
    <input type="submit" value="Delete" <%= movies.isEmpty() ? "disabled" : "" %>>
</form>
</body>
</html>
