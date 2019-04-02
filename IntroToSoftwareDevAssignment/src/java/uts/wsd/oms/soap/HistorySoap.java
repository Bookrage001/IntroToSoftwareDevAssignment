package uts.wsd.oms.soap;

import java.io.IOException;
import java.util.ArrayList;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;
import uts.wsd.oms.*;

/**
 * A SOAP service that provides access to view all orders currently held in history
 * @author Mohamad Kalache
 */
@WebService(serviceName = "History")
public class HistorySoap {

    @Resource
    private WebServiceContext context;
    
    
    /**
     * Get a reference to the previously instantiated MovieStoreApplication
     * Or instantiate a new one if null
     * @return Reference to the instantiated MovieStoreApplication
     */
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
    
    /**
     * Return all orders if no parameters provided 
     * or return orders matching parameters.
     * @param orderID
     * @param email
     * @param title
     * @param status
     * @return Orders matching the provided parameters
     */
    @WebMethod()
    public History ViewAllOrders(@WebParam(name = "orderID") String orderID, @WebParam(name = "email") String email, @WebParam(name = "title") String title, @WebParam(name = "status") String status) {
        History history = new History();
        history.setOrders((ArrayList<Order>)getMovieStoreApp().getHistory().getOrdersByParams(orderID, email, title, status));
        return history;
    }
}
