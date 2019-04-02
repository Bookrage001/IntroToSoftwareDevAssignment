/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.oms.soap;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import javax.annotation.Resource;
import javax.jws.*;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;
import uts.wsd.oms.*;

/**
 *
 * @author caleb
 */
@WebService(serviceName = "PlaceOrder")
public class PlaceOrder {

    @Resource
    private WebServiceContext context;

    private MovieStoreApplication getMovieStoreApp() {
        ServletContext application = (ServletContext) context.getMessageContext().get(MessageContext.SERVLET_CONTEXT);
        MovieStoreApplication movieStoreApp = (MovieStoreApplication) application.getAttribute("movieStoreApp");
        try {
            if (movieStoreApp == null) {
                movieStoreApp = new MovieStoreApplication();
                movieStoreApp.setFilePath(application.getRealPath("WEB-INF"));
                application.setAttribute("movieStoreApp", movieStoreApp);
            }
        } catch (JAXBException | IOException ex) {
        }
        return movieStoreApp;
    }
    private CartController getCartController() {
        ServletContext application = (ServletContext) context.getMessageContext().get(MessageContext.SERVLET_CONTEXT);
        CartController CartControllerApp = (CartController) application.getAttribute("cartControllerApp");
        try {
            if (CartControllerApp == null) {
                CartControllerApp = new CartController();
                CartControllerApp.setFilePath(application.getRealPath("WEB-INF/order.xml"));
                application.setAttribute("cartControllerApp", CartControllerApp);
            }
        } catch (JAXBException | IOException ex) {
        }
        return CartControllerApp;
    }

    /**
     *
     * @param email the Users email
     * @param firstName the Users First name
     * @param lastName the Users Last name
     * @param movies the array of movies that are to be ordered
     * @param paymentMethod The payment method for the transaction
     */
    @WebMethod()
    public void AddOrder(@WebParam(name="email") String email, @WebParam(name="firstName") String firstName, @WebParam(name="lastName") String lastName, @WebParam(name="movies") ArrayList<Movie> movies, @WebParam(name="paymentMethod")String paymentMethod ){
        try {
            //        Order order = new Order();
            CartController cart = getCartController();
            Order cartorder = cart.createOrder();
            cart.setOrderDetails(firstName, lastName, email, paymentMethod);
            if(movies != null)
            {
                for (Movie movie : movies) {
                    cart.addMovie(getMovieStoreApp(), movie);
                }
            }
            getMovieStoreApp().addOrder(cartorder);
        } catch (JAXBException | FileNotFoundException ex) {
        }
    }
    @WebMethod()
    public Movie getMovie(@WebParam(name="Title") String Title,@WebParam(name="releaseDate") String releaseDate){
        return getMovieStoreApp().getMovie("Checkout"+ "_" + Title + "_" + releaseDate);
    }
//    public void RemoveOrder(@WebParam(name="OrderID") int id, @WebParam(name="email"))
}