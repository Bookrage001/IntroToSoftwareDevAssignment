
package MovieStore.Model;

import javax.xml.bind.annotation.*;

import MovieStore.Model.Items;
import MovieStore.Model.Movie;

public class Order {

    private int id; // PK
    private int movieID; // Secondary PK
    private int amount;
    private String customerId;
    private String status;
    private Movie[] movies; // ?

    public Order() {
    }

    public Order(int id, String customerId, String movieListId) {
        this.id = id;
        this.customerId = customerId;
        this.movieListId = movieListId;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getMovieListId() {
        return movieListId;
    }

    public void setMovieListId(String movieListId) {
        this.movieListId = movieListId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {

    }

    public Movie[] getMovies() {
        Items
        return movies;
    }

    public void addMovies(Movie[] movies) {
        movies = SET[... this.movies , movies ]
    }

    public void removeMovies(Movie[] movies) {
		this.movies = movies;
	}