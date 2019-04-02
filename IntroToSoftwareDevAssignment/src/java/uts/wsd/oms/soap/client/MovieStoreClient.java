package uts.wsd.oms.soap.client;

import java.util.ArrayList;
import java.util.Scanner;
import uts.wsd.oms.soap.client.history.*;

/**
 * A SOAP Client that allows access to the SOAP service through the command line
 */
public class MovieStoreClient {

    static final History_Service HISTORY_LOCATOR = new History_Service();
    static HistorySoap history = HISTORY_LOCATOR.getHistorySoapPort();
    static final PlaceOrder_Service ORDER_LOCATOR = new PlaceOrder_Service();
    static PlaceOrder order = ORDER_LOCATOR.getPlaceOrderPort();
    static final LoginSoap_Service LOGIN_LOCATOR = new LoginSoap_Service();
    static LoginSoap login = LOGIN_LOCATOR.getLoginSoapPort();
    static Scanner in = new Scanner(System.in);

    /**
     * Print out a menu that allows the user to access the SOAP service
     *
     * @param args
     */
    public static void main(String[] args) {
        boolean cont = true;
        while(cont)
        {
            System.out.println("-------------------------------------------------------------");
            System.out.println("Select an option");
            System.out.println("1. Login");
            System.out.println("2. Place order");
            System.out.println("3. View orders");
            System.out.println("4. Exit");
            
            String input = in.nextLine();
            try {
                int numInput = Integer.parseInt(input);
                switch(numInput){
                    case 1:
                        Login();
                        break;
                    case 2:
                        PlaceOrder();
                        break;
                    case 3:
                        ViewOrders();
                        break;
                    case 4:
                        cont = false;
                        break;
                    default:
                        throw new NumberFormatException();
                }
            } catch (NumberFormatException ex) {
                System.out.println("Invalid Input");
            }
        }
    }

    /**
     * Prompt the user for order details to query and the display matching
     * orders
     */
    private static void ViewOrders() {
        String email, id, title, status;
        System.out.println("Please provide the filter parameters, leave blank for all");
        System.out.print("Enter email: ");
        email = in.nextLine();
        System.out.print("Enetr Order ID: ");
        id = in.nextLine();
        System.out.print("Enter Movie Title: ");
        title = in.nextLine();
        System.out.print("Enter Order status: ");
        status = in.nextLine();
        
        History h = history.viewAllOrders(id, email, title, status);
        System.out.println("");
        for (Order order : h.getOrder()) {
            System.out.println("----------------------------------------------------");
            System.out.println(getOrderString(order));
        }
    }

    /**
     * Build a string for the order so that it can be printed
     *
     * @param order
     * @return A string representing the contents of the order
     */
    private static String getOrderString(Order order) {
        String orderString = "Order ID: " + order.getOrderID() + "\n";
        orderString += "└ Movies:\n";
        for (uts.wsd.oms.soap.client.history.Movie m : order.getMovies().getMovie()) {
            orderString += "└- Title: " + m.getTitle() + "\n";
            orderString += "└- Genre: " + m.getGenre() + "\n";
            orderString += "└- Release Year: " + m.getReleaseDate() + "\n";
            orderString += "└- Price: " + m.getPrice() + "\n";
            orderString += "└- Copies: " + m.getCopies() + "\n";
        }
        orderString += "└ Name: " + order.getFirstName() + " " + order.getLastName() + "\n";
        orderString += "└ Email: " + order.getEmail() + "\n";
        orderString += "└ Payment Method: " + order.getPaymentMethod() + "\n";
        orderString += "└ Sale Totale: $" + order.getSaleTotal() + "\n";
        orderString += "└ Order Status: " + order.getOrderStatus();
        return orderString;
    }

    private static void PlaceOrder() {
        String email, firstName, lastName, MovieTitle,releaseDate, paymentMethod;
        System.out.print("Enter email: ");
        email = in.nextLine();
        System.out.print("Enter First Name: ");
        firstName = in.nextLine();
        System.out.print("Enter last Name: ");
        lastName = in.nextLine();
        System.out.print("Enter payment method: ");
        paymentMethod = in.nextLine();
        Boolean AddMovies = true;
        ArrayList<Movie> movies = new ArrayList<Movie>();
        while (AddMovies == true){
            String add = "";
            System.out.print("What is the title of the Movie would you like to Buy: ");
            MovieTitle = in.nextLine();
            System.out.print("What is the releaseDate of the Movie would you like to Buy: ");
            releaseDate = in.nextLine();
            Movie movie = order.getMovie(MovieTitle, releaseDate );
            if (movie == null){
                System.out.println("Hey You need to enter a valid movie");
            }
            else { // Add another movie ?
                movies.add(movie);
                while (!add.equalsIgnoreCase("n") && !add.equalsIgnoreCase("y")) {
                    System.out.print("Would you like to add another movie? (y/n)");
                    add = in.nextLine();
                    if (!"y".equals(add) && !"n".equals(add)){
                        System.out.print("Please enter a 'y' or an 'n'");
                    }
                    else if ("n".equals(add)){
                        AddMovies = false;
                    }
                }
            }
        }

        System.out.println("Finalising your order");
        order.addOrder(email, firstName, lastName, movies, paymentMethod);
    }

    private static void Login() {
        String email, password;
        System.out.println("Enter email: ");
        email = in.nextLine();
        System.out.println("Enter Password: ");
        password = in.nextLine();
        
        System.out.println("logging in");
        login.login(email, password);
    }
    
    private static void Logout(){
        login.logout();
    }
}
