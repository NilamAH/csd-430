<%--
  User: Nilam Abdul-Haqq
  Date: 9/21/2025
  JSP page to display book data from JavaBean
--%>
<%@ page import="java.util.*, com.example.csd430.Books" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Books I have Enjoyed Reading</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Books I Have Enjoyed Reading</h1>
    <p>This table lists some books that I personally enjoyed, with details about title, author, genre, year, and rating.</p>

    <table>
        <thead>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Rating</th>
        </tr>
        </thead>
        <tbody>
        <%
            // Create list of Book objects
            List<Books> books = new ArrayList<>();
            books.add(new Books("The 39 Clues", "Rick Riordan, etc", "Adventure", 2008, 4.5));
            books.add(new Books("The Infinity Ring", "James Dashner, etc", "Science Fiction", 2012, 4.2));
            books.add(new Books("White Rose", "Kip Wilson", "Historical Fiction", 2019, 4.7));
            books.add(new Books("The Missing Series", "Margaret Peterson Haddix", "Science Fiction", 2008, 4.4));
            books.add(new Books("Pride and Prejudice", "Jane Austen", "Romance", 1813, 4.8));

            // Loop through and display in table
            for (Books book : books) {
        %>
            <tr>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getGenre() %></td>
                <td><%= book.getYear() %></td>
                <td><%= book.getRating() %></td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <footer>
        <p>Data source: Personal favorites. Created for JSP and JavaBean assingment.</p>
    </footer>
</body>
</html>
