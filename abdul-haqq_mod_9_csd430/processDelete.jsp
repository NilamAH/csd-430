<%--
  User: Nilam Abdul-Haqq
  Date: 10/4/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.csd430.MovieDAO" %>
<html>
<head>
    <title>Deleting Movie</title>
    <meta http-equiv="refresh" content="2;URL=deleteMovie.jsp">
</head>
<body>
<%
    String idParam = request.getParameter("movieId");

    if (idParam != null) {
        int id = Integer.parseInt(idParam);
        MovieDAO dao = new MovieDAO();
        dao.deleteMovie(id);
        // Redirect back to deleteMovie.jsp to refresh list
        response.sendRedirect("deleteMovie.jsp");
    } else {
        out.println("<p style='color:red; '>No movie ID provided for deletion.</p>");
    }
%>
</body>
</html>
