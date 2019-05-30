package MovieStore.Model;

import MovieStore.Model.Movie;
import MovieStore.Model.dao.*;
import MovieStore.Model.Order;
import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
    private ArrayList<Order> orders;
    private String username;

    public Cart() {

    }

    public Cart(ArrayList<Order> orders) {
        this.orders = orders;
    }

    public void addOrder(Movie movie, int amount, String username) {
        Order order = new Order(movie, amount, username);
        orders.add(order);
    }

    public void addOrder(Movie movie, int amount) {
        this.username = "annonomous";
        Order order = new Order(movie, amount, username);
        orders.add(order);
    }

    public void removeItem(Order order) {
        orders.remove(order);
    }

    public void setAmount(Movie movie, int amount) {
        for (Order order : orders) {
            if (order.getMovie().getID() == movie.getID()) {
                order.setAmount(amount);
                break;
            }
        }
    }
}