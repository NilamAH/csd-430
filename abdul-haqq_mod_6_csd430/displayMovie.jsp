<%--
  User: Nilam Abdul-Haqq
  Date: 9/30/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDOA, com.example.csd430.Movie" %>
<html>
<head>
    <title>Movie Details</title>
</head>
<body>
    <h1>Movie Details</h1>
    <%
        String idParam = request.getParameter("movieId");
        if (idParam != null) {
            int id = Integer.parseInt(idParam);
            MovieDAO dao = new MovieDAO();
            Movie movie = dao.getMovieById(id);
            if (movie != null) {
    %>
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
    <%
            } else {
                out.println("<p> No movie found for ID " + id + "</p>");
            }
        }
    %>
</body>
</html>
