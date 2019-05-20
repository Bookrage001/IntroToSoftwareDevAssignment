
package MovieStore.Model;

import javax.xml.bind.annotation.*;

import MovieStore.Model.Items;
import MovieStore.Model.Movie;

public class Order {

    private int id;
    private String customerId;
    private String movieListId;
    private String status;
    private Movie[] movies;

    public Order() {
    }

    public Order(String id, String customerId, String movieListId) {
        this.id = id;
        this.customerId = customerId;
        this.movieListId = movieListId;

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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
        return movies;
    }

    public void addMovies(Movie[] movies, i

    public Items item = new Items();

    }

    public void removeMovies(Movie[] movies) {
		this.movies = movies;
	}