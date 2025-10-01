// File: src/main/java/com/example/Movies.java
// Author: Nilam Abdul-Haqq
// Date: 09/29/2025

package com.example.csd430;

import java.io.Serializable;

public class Movie implements Serializable {
    private int movieId;
    private String title;
    private String director;
    private String genre;
    private int releaseYear;
    private double rating;

    public Movie() {
    }

    public Movie(int movieId, String title, String director, String genre, int releaseYear, double rating) {
        this.movieId = movieId;
        this.title = title;
        this.director = director;
        this.genre = genre;
        this.releaseYear = releaseYear;
        this.rating = rating;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public int getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(int releaseYear) {
        this.releaseYear = releaseYear;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }
}
