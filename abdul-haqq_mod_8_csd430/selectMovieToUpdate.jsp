<%--
  User: Nilam Abdul-Haqq
  Date: 10/3/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDAO, java.util.List" %>
<html>
<head>
    <title>Select Movie to Update</title>
</head>
<body>
<h1>Select a Movie to update</h1>
<form action="editMovie.jsp" method="get">
    <label for="movieId">Choose Movie ID:</label>
    <select name="movieId" id="movieId" required>
        <%
            MovieDAO dao = new MovieDAO();
            List<Integer> ids = dao.getAllMovieIds();
            for (Integer id : ids) {
        %>
            <option value="<%= id %>"><%= id %></option>
        <%
            }
        %>
    </select>
    <input type="submit" value="Edit Movie">
</form>
</body>
</html>
