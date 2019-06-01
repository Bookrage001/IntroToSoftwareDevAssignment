
package MovieStore.Model;

import java.io.Serializable;
import java.math.BigInteger;

public class Order implements Serializable {

    private BigInteger orderId;
    private String username; // PK
    private int amount;
    private String status;
    private Movie movie;

    public Order() {
    }

    // As Intager

    public Order(BigInteger orderId, String username, String status, Movie movie) {
        this.orderId = orderId;
        this.username = username;
        this.status = status;
        this.movie = movie;
    }

    public Order(BigInteger orderId, String username, int amount, String status, Movie movie) {
        this.orderId = orderId;
        this.username = username;
        this.amount = amount;
        this.status = status;
        this.movie = movie;
    }     

    public Order(Movie movie, int amount, String username) {
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

    public BigInteger getOrderId() {
        return orderId;
    }

    public void setOrderId(BigInteger orderId) {
        this.orderId = orderId;
    }

    
}