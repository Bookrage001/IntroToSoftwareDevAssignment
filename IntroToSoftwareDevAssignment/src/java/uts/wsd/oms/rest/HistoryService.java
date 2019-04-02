package uts.wsd.oms.rest;

import com.sun.jersey.api.provider.jaxb.XmlHeader;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.ws.rs.*;
import javax.ws.rs.core.*;
import javax.xml.bind.JAXBException;
import uts.wsd.oms.*;

/**
 * A REST web service that provides the ability to retrieve order information stored 
 * in the entire order history and filter it using URL query parameters
 * @author Christopher Fung
 */
@Path("/movieStoreApp")
public class HistoryService {

    @Context
    private ServletContext application;

    /**
     * Get reference to MovieStoreApplication assigned to the servlet or instantiate
     * one if there is not one
     * @return reference to MovieStoreApplication object
     * @throws JAXBException
     * @throws IOException 
     */
    private MovieStoreApplication getMovieStoreApp() throws JAXBException, IOException {
        synchronized (application) {
            MovieStoreApplication movieStoreApp = (MovieStoreApplication) application.getAttribute("movieStoreApp");
            if (movieStoreApp == null) {
                movieStoreApp = new MovieStoreApplication();
                movieStoreApp.setFilePath(application.getRealPath("WEB-INF"));
                application.setAttribute("movieStoreApp", movieStoreApp);
            }
            return movieStoreApp;
        }
    }

    /**
     * Returns a History object containing orders that match given parameters
     * or all orders if no parameters given. Object is returned in XML format
     * transformed by an XSL file.
     * @param id
     * @param email
     * @param title
     * @param status
     * @return History object containing matching orders in XML format
     * @throws JAXBException
     * @throws IOException 
     */
    @Path("history")
    @GET
    @Produces(MediaType.APPLICATION_XML)
    @XmlHeader("<?xml-stylesheet type=\"text/xsl\" href=\"../../xsl/historyRest.xsl\"?>")
    public History getHistoryByParams( @QueryParam("id") String id, @QueryParam("email") String email,
            @QueryParam("title") String title, @QueryParam("status") String status) throws JAXBException, IOException {
        History history = new History();
        history.setOrders((ArrayList<Order>) getMovieStoreApp().getHistory().getOrdersByParams(id, email, title, status));
        return history;
    }
}
