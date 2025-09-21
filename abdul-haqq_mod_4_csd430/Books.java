// File: src/main/java/com/example/Books.java
package com.example.csd430;

import java.io.Serializable;

/**
 * JavaBean class representing a Book record.
 */
public class Books implements Serializable {
    private String title;
    private String author;
    private String genre;
    private int year;
    private double rating;

    public Books() {
        // no-arg constructor required for Javabean
    }

    public Books(String title, String author, String genre, int year, double rating) {
        this.title = title;
        this.author = author;
        this.genre = genre;
        this.year = year;
        this.rating = rating;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }
    public int getYear() {
        return year;
    }
    public void setYear(int year) {
        this.year = year;
    }
    public double getRating() {
        return rating;
    }
    public void setRating(double rating) {
        this.rating = rating;
    }
}
