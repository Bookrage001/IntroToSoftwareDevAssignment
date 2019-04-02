package uts.wsd.oms;

import java.io.Serializable;
import java.util.*;
import javax.xml.bind.annotation.*;

/**
 * History Javabean with JAXB bindings
 */
@XmlRootElement(name = "history")
@XmlAccessorType(XmlAccessType.FIELD)
//@XmlType(namespace = "http://uts/wsd/oms")
public class History implements Serializable {

    @XmlElement(name = "order")
    private ArrayList<Order> orders;

    /**
     * Constructor that sets the orders list with the provided list of orders
     *
     * @param orders
     */
    public History(ArrayList<Order> orders) {
        this.orders = orders;
    }

    public History() {
    }

    /**
     * @return List of orders in history
     */
    public List<Order> getOrders() {
        return orders;
    }

    /**
     * Set the list of orders with the provided list
     *
     * @param orders
     */
    public void setOrders(ArrayList<Order> orders) {
        this.orders = orders;
    }

    /**
     * Add an order to the list
     *
     * @param order
     */
    public void addOrder(Order order) {
        orders.add(order);
    }

    public Order getOrderByID(String ID) {
        for (Order order : orders) {
            if (String.valueOf(order.getOrderID()) == ID) {
                return order;
            }
        }
        return null;
    }

    /**
     * Get all orders matching the provided parameters
     *
     * @param id
     * @param email
     * @param title
     * @param status
     * @return The list of matching orders
     */
    public List<Order> getOrdersByParams(String id, String email, String title, String status) {
        List<Order> ordersToReturn = new ArrayList<Order>();
        ordersToReturn.addAll(orders);

        //Remove any orders that do not match id parameter
        if (id != null && !id.isEmpty()) {
            List<Order> toDelete = new ArrayList<Order>();
            for (Order order : ordersToReturn) {
                if (!String.valueOf(order.getOrderID()).equals(id)) {
                    toDelete.add(order);
                }
            }

            ordersToReturn.removeAll(toDelete);
        }

        //Remove any orders that do not match email parameter
        if (email != null && !email.isEmpty()) {
            List<Order> toDelete = new ArrayList<Order>();
            for (Order order : ordersToReturn) {
                if (!order.getEmail().equalsIgnoreCase(email)) {
                    toDelete.add(order);
                }
            }

            ordersToReturn.removeAll(toDelete);
        }

        //Remove any orders that do not match title parameter
        if (title != null && !title.isEmpty()) {
            List<Order> toDelete = new ArrayList<Order>();

            for (Order order : ordersToReturn) {
                List<Movie> movies = order.getMovies().getMovies();

                int i = 0;
                boolean isMatch = false;
                while (i < movies.size() && !isMatch) {
                    if (movies.get(i).getTitle().equalsIgnoreCase(title)) {
                        isMatch = true;
                    }
                    i++;
                }

                if (!isMatch) {
                    toDelete.add(order);
                }
            }

            ordersToReturn.removeAll(toDelete);
        }

        //Remove any orders that do not match status parameter
        if (status != null && !status.isEmpty()) {
            List<Order> toDelete = new ArrayList<Order>();

            for (Order order : ordersToReturn) {
                if (!order.getOrderStatus().equalsIgnoreCase(status)) {
                    toDelete.add(order);
                }
            }

            ordersToReturn.removeAll(toDelete);
        }

        return ordersToReturn;
    }
}
