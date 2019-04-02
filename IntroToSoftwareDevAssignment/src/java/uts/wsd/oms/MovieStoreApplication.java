package uts.wsd.oms;

import java.io.*;
import java.util.*;
import javax.xml.bind.*;

/**
 * Movie Store Application controller that provides methods for manipulating
 * users, history, and movies
 */
public class MovieStoreApplication implements Serializable {

    private String filePath;
    private Movies movies;
    private Users users;
    private History history;

    public MovieStoreApplication() {
    }

    /**
     * @return The file path of the Users, History, and Movies XML files
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * Set the file path to the XML files
     *
     * @param filePath
     * @throws JAXBException
     * @throws FileNotFoundException
     * @throws IOException
     */
    public void setFilePath(String filePath) throws JAXBException, FileNotFoundException, IOException {
        this.filePath = filePath;

        JAXBContext jc = JAXBContext.newInstance(Movies.class);
        Unmarshaller u = jc.createUnmarshaller();

        FileInputStream file = new FileInputStream(filePath + "/movies.xml");
        movies = (Movies) u.unmarshal(file);
        file.close();

        jc = JAXBContext.newInstance(Users.class);
        u = jc.createUnmarshaller();

        file = new FileInputStream(filePath + "/users.xml");
        users = (Users) u.unmarshal(file);
        file.close();

        jc = JAXBContext.newInstance(History.class);
        u = jc.createUnmarshaller();

        file = new FileInputStream(filePath + "/history.xml");
        history = (History) u.unmarshal(file);
        file.close();
        Util.initOrderID(history);
    }

    /**
     * @return The movies listed within the application
     */
    public Movies getMovies() {
        return movies;
    }

    /**
     * Set the movies list in the application
     *
     * @param movies
     */
    public void setMovies(Movies movies) {
        this.movies = movies;
    }

    /**
     * @return The users listed in the application
     */
    public Users getUsers() {
        return users;
    }

    /**
     * Set the users of the application
     *
     * @param users
     */
    public void setUsers(Users users) {
        this.users = users;
    }

    /**
     * @return The history of orders in the application
     */
    public History getHistory() {
        return history;
    }

    /**
     * Set the history of orders
     *
     * @param history
     */
    public void setHistory(History history) {
        this.history = history;
    }

    /**
     * Add a movie to the movie list
     *
     * @param movie
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void addMovie(Movie movie) throws JAXBException, FileNotFoundException {
        getMovies().addMovie(movie);
        marshalMovies();
    }

    /**
     * Save changes to the Movies XML
     *
     * @throws FileNotFoundException
     * @throws PropertyException
     * @throws JAXBException
     */
    private void marshalMovies() throws FileNotFoundException, PropertyException, JAXBException {
        JAXBContext jc = JAXBContext.newInstance(Movies.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        m.marshal(getMovies(), new FileOutputStream(filePath + "/movies.xml"));
    }

    /**
     * Register a user
     *
     * @param user
     * @return true if the user was registered, false if not.
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public boolean registerUser(User user) throws JAXBException, FileNotFoundException {
        if (users.registerUser(user)) {
            marshalUsers();
            return true;
        } else {
            return false;
        }
    }

    /**
     * Save changes to the Users XML
     *
     * @throws PropertyException
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    private void marshalUsers() throws PropertyException, JAXBException, FileNotFoundException {
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        m.marshal(users, new FileOutputStream(filePath + "/users.xml"));
    }

    /**
     * Add an order to history
     *
     * @param order
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void addOrder(Order order) throws JAXBException, FileNotFoundException {
        if(!order.getOrderStatus().equals("cancelled"))
            order.setOrderStatus("submitted");
        getHistory().addOrder(order);
        marshalHistory();
    }

    /**
     * Remove a movie from the movie list
     *
     * @param movie
     * @throws FileNotFoundException
     * @throws JAXBException
     */
    public void removeMovie(Movie movie) throws FileNotFoundException, JAXBException {
        Movie tempMovie = new Movie(movie);
        tempMovie.setCopies(1);
        getMovies().removeMovie(tempMovie);
        marshalMovies();
    }

    /**
     * Save changes to the History XML
     *
     * @throws JAXBException
     * @throws FileNotFoundException
     * @throws PropertyException
     */
    private void marshalHistory() throws JAXBException, FileNotFoundException, PropertyException {
        JAXBContext jc = JAXBContext.newInstance(History.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        m.marshal(getHistory(), new FileOutputStream(filePath + "/history.xml"));
    }

    /**
     * Cancel an order in history
     *
     * @param orderId
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void cancelOrder(int orderId) throws JAXBException, FileNotFoundException {
        if (getHistory().getOrders().stream().filter(u -> u.getOrderID() == orderId).findFirst().isPresent()) {
            Order order = getHistory().getOrders().stream().filter(u -> u.getOrderID() == orderId).findFirst().get();
            if(!order.getOrderStatus().equals("cancelled"))
            {
                order.setOrderStatus("cancelled");

                order.getMovies().getMovies().forEach((movie) -> {
                    getMovies().addMovie(movie);
                });
            }

            marshalHistory();
            marshalMovies();
        }
    }

    /**
     * Look for the movie matching the provided string in the format for
     * Checkout_title_releaseDate
     *
     * @param movie
     * @return The matching movie
     */
    public Movie getMovie(String movie) {
        String[] splitString = movie.split("_");
        if (splitString.length == 3) {
            Optional<Movie> result;
            result = getMovies().getMovies().stream().filter(m -> m.getTitle().equals(splitString[1]) && ("" + m.getReleaseDate()).equals(splitString[2])).findFirst();
            if (result.isPresent()) {
                return result.get();
            }
        }
        return null;
    }

    /**
     * Validate the provided name
     *
     * @param name
     * @return true if the name is valid, false if not.
     */
    public boolean validateName(String name) {
        return name.matches("[A-Z]([a-zA-]*)");
    }

    /**
     * Validate the provided phone number
     *
     * @param phoneNo
     * @return true if the phone number is valid, false if not
     */
    public boolean validatePhoneNo(String phoneNo) {
        return phoneNo.matches("([0-9]{10})");
    }

    /**
     * Validate the provided city
     *
     * @param city
     * @return true if the city is valid, false if not
     */
    public boolean validateCity(String city) {
        return city.matches("([a-zA-Z\\s]+)");
    }

    /**
     * Validate the provided post code
     *
     * @param postCode
     * @return true if the post code is valid, false if not
     */
    public boolean validatePostCode(String postCode) {
        return postCode.matches("([0-9]{4})");
    }

    /**
     * Validate the provided email
     *
     * @param email
     * @return true if the email is valid, false if not
     */
    public boolean validateEmail(String email) {
        return email.matches("[A-z][A-z\\._]*@[A-z]+(\\.[A-z]+)+");
    }

    /**
     * Validate the provided password
     *
     * @param password
     * @return true if the password is valid, false if not
     */
    public boolean validatePassword(String password) {
        return password.matches("([a-zA-Z0-9]{8,})");
    }

    public Order getOrder(String orderID) {
        String[] splitString = orderID.split("_");
        int ID = Integer.parseInt(splitString[1]);
        if (splitString.length == 2) {
            if (getHistory().getOrders().stream().filter(m -> m.getOrderID() == Integer.parseInt((splitString[1]))).findFirst().isPresent()) {
                return getHistory().getOrderByID(splitString[1]);
            }
        }
        return null;
    }

    /**
     * Updates users.xml with deletion or update
     *
     * @param users
     * @throws Exception
     */
    public void updateUsers(Users users) throws Exception {
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        m.marshal(users, new FileOutputStream(filePath + "/users.xml"));
    }

    /*
     *  Updates the user account information
     */
    public void editUser(User user, String firstName, String lastName, String email, String password, String phoneNo, String address, String city, String state, String postCode) throws Exception {
        users.removeUser(user);
        user.updateUser(firstName, lastName, email, password, phoneNo, address, city, state, postCode);
        users.addUser(user);
        updateUsers(users);
    }
}
