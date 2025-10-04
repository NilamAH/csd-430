// File: src/main/java/com/example/MovieDAO.java
// Author: Nilam Abdul-Haqq
// Date: 09/29/2025

package com.example.csd430;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO {
    private static final String URL = "jdbc:mysql://localhost:3307/csd430?useSSL=false";
    private static final String USER = "root";  // I had to use a different connector in order to make it work.
    private static final String PASS = "LolaBunny^09";

    public List<Integer> getAllMovieIds() {
        List<Integer> ids = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (
                Connection conn = DriverManager.getConnection(URL, USER, PASS);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT movie_id FROM csd430.nilam_movies_data")) {
            while (rs.next()) {
                ids.add(rs.getInt("movie_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ids;
    }

    public Movie getMovieById(int id) {
        Movie movie = null;
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS);
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM csd430.nilam_movies_data WHERE movie_id=?")) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                movie = new Movie(
                        rs.getInt("movie_id"),
                        rs.getString("title"),
                        rs.getString("director"),
                        rs.getString("genre"),
                        rs.getInt("release_year"),
                        rs.getDouble("rating")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movie;
    }

    //------------------
    // NEW METHODS for module 7 added here.
    //------------------

    // Inserting a new movie record
    public void addMovie(Movie movie) {
        String sql = "INSERT INTO csd430.nilam_movies_data (title, director, genre, release_year, rating) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(URL, USER, PASS);
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, movie.getTitle());
            ps.setString(2, movie.getDirector());
            ps.setString(3, movie.getGenre());
            ps.setInt(4, movie.getReleaseYear());
            ps.setDouble(5, movie.getRating());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Retrieve all movies
    public List<Movie> getAllMovies() {
        List<Movie> movies = new ArrayList<>();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (
                Connection conn = DriverManager.getConnection(URL, USER, PASS);
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("Select * FROM csd430.nilam_movies_data")) {
            while (rs.next()) {
                movies.add(new Movie(
                        rs.getInt("movie_id"),
                        rs.getString("title"),
                        rs.getString("director"),
                        rs.getString("genre"),
                        rs.getInt("release_year"),
                        rs.getDouble("rating")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movies;
    }

    //------------------
    // NEW METHODS for module 8 added here.
    //------------------

    // Update the movie records
    public void updateMovie(Movie movie) {
        String sql = "UPDATE csd430.nilam_movies_data SET title=?, director=?, genre=?, release_year=?, rating=? WHERE movie_id=?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try (
                Connection conn = DriverManager.getConnection(URL, USER, PASS);
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, movie.getTitle());
            ps.setString(2, movie.getDirector());
            ps.setString(3, movie.getGenre());
            ps.setInt(4, movie.getReleaseYear());
            ps.setDouble(5, movie.getRating());
            ps.setInt(6, movie.getMovieId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //-----------
    // NEW METHODS for Module 9 added here
    //-----------

    //Delete a movie by ID
    public void deleteMovie(int id) {
        String sql = "DELETE from csd430.nilam_movies_data where movie_id=?";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try (
                Connection conn = DriverManager.getConnection(URL, USER, PASS);
                PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}