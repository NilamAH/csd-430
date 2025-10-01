// File: src/main/java/com/example/Books.java
// Author: Nilam Abdul-Haqq
// Date: 09/29/2025

package com.example.csd430;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieDOA {
        private static final String URL = "jdbc:mysql://localhost:3307/csd430";
        private static final String USER = "root";  // I had to use a different connector inorder to make it work.
        private static final String PASS = "LolaBunny^09";

        public List<Integer> getAllMovieIds() {
            List<Integer> ids = new ArrayList<>();
            try (Connection conn = DriverManager.getConnection(URL, USER, PASS);
                 Statement stmt = conn.createStatement();
                 ResultSet rs = stmt.executeQuery("SELECT movie_id FROM nilam_movies_data")) {
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
                 PreparedStatement ps = conn.prepareStatement("SELECT * FROM nilam_movies_data WHERE movie_id=?")) {
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
    }
