package uts.wsd.oms;

import java.io.Serializable;
import javax.xml.bind.Marshaller;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

/**
 * Order Javabean with JAXB bindings
 */
@XmlRootElement(name = "order")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(namespace="http://uts/wsd/oms")
public class Order implements Serializable {

    @XmlElement(name = "orderID")
    private int orderID;

    @XmlElement(name = "movies")
    private Movies movies;

    @XmlElement(name = "firstName")
    private String firstName;
    
    @XmlElement(name = "lastName")
    private String lastName;

    @XmlElement(name = "email")
    private String email;

    @XmlElement(name = "paymentMethod")
    private String paymentMethod;

    @XmlElement(name = "saleTotal")
    private int saleTotal;

    @XmlElement(name = "orderStatus")
    private String orderStatus;
    
    /**
     * Constructor that initialises fields and sets the order ID
     */
    public Order() {
        this.orderID = Util.generateOrderID();
        this.movies = new Movies();
        this.firstName = "";
        this.lastName = "";
        this.email = "";
        this.paymentMethod = "";
        this.saleTotal = 0;
        this.orderStatus = "";
    }

    /**
     * Constructor that initialises fields with the provided parameters
     * @param orderID
     * @param movies
     * @param firstName
     * @param lastName
     * @param email
     * @param paymentMethod
     * @param saleTotal
     * @param orderStatus
     */
    public Order(int orderID, Movies movies, String firstName, String lastName, String email, String paymentMethod, int saleTotal, String orderStatus) {
        this.orderID = orderID;
        this.movies = movies;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.paymentMethod = paymentMethod;
        this.saleTotal = saleTotal;
        this.orderStatus = orderStatus;
    }
    
    /**
     * Set the user details
     * @param user
     */
    public void setUserDetails(User user){
        this.firstName = user.getFirstName();
        this.lastName = user.getLastName();
        this.email = user.getEmail();
    }
    
    /**
     * @return The order ID
     */
    public int getOrderID() {
        return orderID;
    }

    /**
     * Set the order ID
     * @param orderID
     */
    public void setOrderID(int orderID) {
        this.orderID = orderID;
    }

    /**
     * @return The movies in the order
     */
    public Movies getMovies() {
        return movies;
    }

    /**
     * Set the movies in the order
     * @param movies
     */
    public void setMovies(Movies movies) {
        this.movies = movies;
    }

    /**
     * @return The first name
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Set the first name for the order
     * @param firstName
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return The last name
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Set the last name for the order
     * @param lastName
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    /**
     * @return The Email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Set the email for the order
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return The payment method of the order
     */
    public String getPaymentMethod() {
        return paymentMethod;
    }

    /**
     * Set the payment method of the order
     * @param paymentMethod
     */
    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    /**
     * @return The sales total
     */
    public int getSaleTotal() {
        return saleTotal;
    }

    /**
     * Set the sales total
     * @param saleTotal
     */
    public void setSaleTotal(int saleTotal) {
        this.saleTotal = saleTotal;
    }

    /**
     * @return The order status
     */
    public String getOrderStatus() {
        return orderStatus;
    }

    /**
     * Set the order status
     * @param orderStatus
     */
    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }
    
    /**
     * Update the sales total based on the list of movies
     */
    private void updateTotal(){
        saleTotal = 0;
        for(Movie movie : movies.getMovies())
            saleTotal += movie.getCopies() * movie.getPrice();
    }
    
    /**
     * Add a movie to the order
     * @param movie
     */
    public void addMovie(Movie movie){
        movies.addMovie(movie);
        updateTotal();
    }
    
    /**
     * Remove a movie from the order
     * @param movie
     */
    public void removeMovie(Movie movie){
        movies.removeMovie(movie);
        updateTotal();
    }
    
    /**
     * Remove a movie from the order using a title and release date
     * @param title
     * @param releaseDate
     */
    public void removeMovie(String title, String releaseDate){
        movies.removeMovie(title, releaseDate);
        updateTotal();
    }
    
}
