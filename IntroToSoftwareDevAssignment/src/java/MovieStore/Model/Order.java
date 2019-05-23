
package MovieStore.Model;

import java.math.BigInteger;

import javax.xml.bind.annotation.*;

import MovieStore.Model.Movie;
import MovieStore.Model.dao.DBManager;

public class Order {

    private BigInteger orderId; // PK
    private BigInteger customerId; // PK
    private BigInteger movieId;
    private int amount;
    private String username;
    private String status;
    private Movie[] movies; // if i get a chance to do a get for these ...

    public Order() {
    }

    public Order(BigInteger OrderId, BigInteger customerId, BigInteger movieID, int amount, String username,
            String status) {
        this.OrderId = OrderId;
        this.customerId = customerId;
        this.movieID = movieListId;
        this.amount = amount;
        this.username = username;
        this.status = status;
    }

    public BigInteger getOrderId() {
        return orderId;
    }

    public void setOrderId(BigInteger orderId) {
        this.orderId = orderId;
    }

    public BigInteger getCustomerId() {
        return customerId;
    }

    public void setCustomerId(BigInteger customerId) {
        this.customerId = customerId;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}