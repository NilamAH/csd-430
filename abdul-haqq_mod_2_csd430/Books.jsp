<%--
  User: Nilam Abdul-Haqq
  Date: 8/20/2025
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Books I Enjoyed Reading</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Books I have Enjoyed Reading</h1>
    <p>This table lists a few books that I have personally enjoyed, categorized by title, author, and genre.</p>

    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Genre</th>
            </tr>
        </thead>
        <tbody>
        <%
            // Java arrays for book data
            String[] titles = {
                    "The 39 Clues",
                    "The Infinity Ring",
                    "White Rose the Novel",
                    "The Missing Series",
                    "Pride and Prejudice"
            };

            String[] authors = {
                    "Rick Riordan, etc",
                    "James Dashner, etc",
                    "Kip Wilson",
                    "Margaret Peterson Haddix",
                    "Jane Austen"
            };

            String[] genres = {
                    "Adventure",
                    "Science Fiction",
                    "Historical Fiction",
                    "Science Fiction",
                    "Romance"
            };

            // Loop to print table rows dynamically
            for (int i = 0; i < titles.length; i++) {
        %>
            <tr>
                <td><%= titles[i] %></td>
                <td><%= authors[i] %></td>
                <td><%= genres[i] %></td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>

    <footer>
        <p>Data source: Personal favorite. Created for JSP assignment.</p>
    </footer>
</body>
</html>

