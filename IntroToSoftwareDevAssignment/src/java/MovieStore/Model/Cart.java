package MovieStore.Model;

import MovieStore.Model.Movie;
import MovieStore.Model.Order;
import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {
    private ArrayList<Order> orders = new ArrayList<Order>();
    private String username;
    private int id;

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
        if (!exists(movie)) {
            this.username = "anonymous";
            Order order = new Order(movie, amount, this.username);
            orders.add(order);
        }
    }

    public void addOrder(Movie movie) {
        if (!exists(movie)) {
            this.username = "anonymous";
            Order order = new Order(movie, 1, this.username);
            orders.add(order);
        }
    }

    private boolean exists(Movie movie) {
        for (Order order : orders) {
            if (order.getMovie().getID() == movie.getID()) {
                return true;
            }
        }
        return false;
    }

    public void removeOrder(Movie movie) {
        for (Order order : orders) {
            if (order.getMovie().getID() == movie.getID()) {
                orders.remove(order);
            }
        }
    }

    public ArrayList<Order> getOrders() {
        return this.orders;
    }

    public boolean isOrders() {
        return orders.size() == 0;
    }

    public void setAmount(Movie movie, int amount) {
        for (Order order : orders) {
            if (order.getMovie().getID() == movie.getID()) {
                order.setAmount(amount);
                break;
            }
        }
    }

    public void deleteCart() {
        ArrayList<Order> blankList = new ArrayList<Order>();
        orders = blankList;
    }
}