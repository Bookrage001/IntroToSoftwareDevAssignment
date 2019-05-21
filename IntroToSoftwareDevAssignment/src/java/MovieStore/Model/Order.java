
package MovieStore.Model;

import javax.xml.bind.annotation.*;

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

    public Order(int id, String movieID, String movieListId) {
        this.id = id;
        this.customerId = customerId;
        this.movieID = movieListId;

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

    public String getOrderID() {
        return OrderID;
    }

    public void setOrderID(String orderID) {
        OrderID = orderID;
    }

    public String getMovieID() {
        return movieID;
    }

    public void setMovieID(String movieID) {
        this.movieID = movieID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Movie[] getMovies() {
        return movies;
    }

    public void setMovies(Movie[] movies) {
        this.movies = movies;
    }
}