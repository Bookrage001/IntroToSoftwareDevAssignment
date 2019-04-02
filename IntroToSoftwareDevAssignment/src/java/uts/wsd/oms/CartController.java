package uts.wsd.oms;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Optional;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

/**
 * Controller that provides methods for manipulating an order
 * @author Mohamad Kalache
 */
public class CartController {

    private String filePath;
    private Order order;

    /**
     * Get the current order in the car
     * @return the current order
     */
    public Order getOrder() {
        return order;
    }

    /**
     * Set the current order
     * @param order
     */
    public void setOrder(Order order) {
        this.order = order;
    }

    /**
     * Get the file path of the order XML
     * @return path to the XML
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * Set the file path of the order XML
     * @param filePath
     * @throws JAXBException
     * @throws FileNotFoundException
     * @throws IOException
     */
    public void setFilePath(String filePath) throws JAXBException, FileNotFoundException, IOException {
        this.filePath = filePath;

        JAXBContext jc = JAXBContext.newInstance(Order.class);
        Unmarshaller u = jc.createUnmarshaller();

        FileInputStream file = new FileInputStream(filePath);
        order = (Order) u.unmarshal(file);
        System.out.println(order.getOrderID());
        file.close();
    }
    
    /**
     * Create and set a new order
     * @return The created order
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public Order createOrder() throws JAXBException, FileNotFoundException {
        setOrder(new Order());
        marshal();
        return getOrder();
    }

    /**
     * Add a movie to the current order
     * @param movieStoreApp
     * @param movie
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void addMovie(MovieStoreApplication movieStoreApp, Movie movie) throws JAXBException, FileNotFoundException {
        Movie tempMovie = new Movie(movie);
        tempMovie.setCopies(1);
        getOrder().addMovie(tempMovie);
        movieStoreApp.removeMovie(tempMovie);
        marshal();
    }

    /**
     * Remove a movie from the current order
     * @param movieStoreApp
     * @param movie A string describing the movie in the format remove_title_releaseDate
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void removeMovie(MovieStoreApplication movieStoreApp, String movie) throws JAXBException, FileNotFoundException {
        String[] splitString = movie.split("_");
        if (splitString.length == 3) {
            Optional<Movie> result = getOrder().getMovies().getMovies().stream().filter(m -> m.getTitle().equals(splitString[1]) && (m.getReleaseDate() + "").equals(splitString[2])).findFirst();
            if (result.isPresent()) {
                Movie tempMovie;
                tempMovie = new Movie(result.get());
                movieStoreApp.addMovie(tempMovie);
            }
            
            getOrder().removeMovie(splitString[1], splitString[2]);
            marshal();
        }
    }
    
    /**
     * Save changes to the XML file
     * @throws JAXBException
     * @throws FileNotFoundException 
     */
    private void marshal() throws JAXBException, FileNotFoundException{
        JAXBContext jc = JAXBContext.newInstance(Order.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        m.marshal(getOrder(), new FileOutputStream(filePath));
    }

    /**
     * Cancel the current order and create a new order empty order
     * @param movieStoreApp
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void cancelOrder(MovieStoreApplication movieStoreApp) throws JAXBException, FileNotFoundException {
        Util.removeOrderID(order.getOrderID());
        for(Movie movie : getOrder().getMovies().getMovies())
        {
            Movie tempMovie = new Movie(movie);
            tempMovie.setCopies(1);
            movieStoreApp.addMovie(tempMovie);
        }
        setOrder(new Order());
        marshal();
    }
    
    /**
     * Set the user details of the order based on the provided User
     * @param user User whose making the order
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void setOrderUser(User user) throws JAXBException, FileNotFoundException{
        getOrder().setUserDetails(user);
        marshal();
    }
    
    /**
     * Set the order details based on the provided parameters
     * @param firstName
     * @param lastName
     * @param email
     * @param paymentMethod
     * @throws JAXBException
     * @throws FileNotFoundException
     */
    public void setOrderDetails(String firstName, String lastName, String email, String paymentMethod) throws JAXBException, FileNotFoundException{
        getOrder().setFirstName(firstName);
        getOrder().setLastName(lastName);
        getOrder().setEmail(email);
        getOrder().setPaymentMethod(paymentMethod);
        marshal();
    }
}
