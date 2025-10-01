<%--
  User: Nilam Abdul-Haqq
  Date: 9/29/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDOA" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>Select Movie</title>
</head>
<body>
    <h1>Select a Movie Record</h1>
    <form action="displayMovie.jsp" method="get">
      <label for="movieId">Chooses Movie ID:</label>
      <select name="movieId" ID="movieId">
        <%
          MovieDOA doa = new MovieDOA();
          List<Integer> ids = doa.getAllMovieIds();
          for (Integer id : ids) {
        %>
          <option value="<%= id %>"><%= id %></option>
        <%
          }
        %>
      </select>
      <input type="submit" value="View Movie">
    </form>
</body>
</html>
