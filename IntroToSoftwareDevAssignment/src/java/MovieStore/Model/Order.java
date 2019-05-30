
package MovieStore.Model;

import java.math.BigInteger;
import java.io.Serializable;
import java.util.ArrayList;

public class Order implements Serializable {

    private BigInteger orderId;
    private String username; // PK
    private BigInteger movieId; // PK
    private int amount;
    private String status;
    private Movie movie;

    public Order() {
    }

    // As BigInteger
    public Order(BigInteger orderId, BigInteger movieId, int amount, String username, String status) {
        this.orderId = orderId;
        this.username = username;
        this.movieId = movieId;
        this.amount = amount;
        this.status = status;
    }

    // As Intager
    public Order(int orderId, int movieId, int amount, String username, String status) {
        this.orderId = BigInteger.valueOf(orderId);
        this.movieId = BigInteger.valueOf(movieId);
        this.username = username;
        this.amount = amount;
        this.status = status;
    }

    public Order(Movie movie, int amount, String username) {
        this.movie = movie;
        this.status = "In Cart";
        this.amount = amount;
        this.username = username;
    }

    public BigInteger getOrderId() {
        return orderId;
    }

    public void setOrderId(BigInteger orderId) {
        this.orderId = orderId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public BigInteger getMovieId() {
        return movieId;
    }

    public void setMovieId(BigInteger movieId) {
        this.movieId = movieId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }
}