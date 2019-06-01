
package MovieStore.Model;

import java.io.Serializable;

public class Order implements Serializable {

    private int orderId;
    private String username; // PK
    private int amount;
    private String status;
    private int movieId;
    private Movie movie;
    

    public Order() {
    }

    // As Intager
    public Order(int orderId, int movieId, int amount, String username, String status) {
        this.orderId = orderId;
        this.username = username;
        this.amount = amount;
        this.status = status;
        this.movieId = movieId;
    }

    public Order(Movie movie, int amount, String username) {
        this.movieId = movie.getID();
        this.movie = movie;
        this.status = "In Cart";
        this.amount = amount;
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
}