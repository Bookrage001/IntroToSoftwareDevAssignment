
package MovieStore.Model;

import java.math.BigInteger;
import java.io.Serializable;
import java.util.ArrayList;

public class Order implements Serializable {

    private BigInteger orderId;
    private String username; //PK
    private BigInteger movieId; //PK
    private int amount;
    private String status;
    private ArrayList<Movie> movies; // if i get a chance to do a get for these ...

    public Order() {
    }

    //MARK CHANGED THIS ORDER
    public Order(BigInteger orderId, BigInteger movieId, int amount, String username, String status) {
        this.orderId = orderId;
        this.username = username;
        this.movieId = movieId;
        this.amount = amount;
        this.status = status;
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

}