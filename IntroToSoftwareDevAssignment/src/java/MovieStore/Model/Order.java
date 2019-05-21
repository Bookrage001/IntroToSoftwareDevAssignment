
package MovieStore.Model;

import javax.xml.bind.annotation.*;

import MovieStore.Model.Items;
import MovieStore.Model.Movie;
import MovieStore.Model.dao.DBManager;

public class Order {

    private int id;
    private String customerId;
    private String OrderID;
    private String movieID;
    private String status;
    private Movie[] movies;

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
        return movies;
    }

    public void addMovies(Movie[] movies) 
    }

    public void removeMovies(Movie[] movies) {
        this.movies = movies;
    }

    public void save() {
        DBManager.sa
    }