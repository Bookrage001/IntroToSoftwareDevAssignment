/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd.oms.soap;

import java.io.IOException;
import javax.annotation.Resource;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.handler.MessageContext;
import uts.wsd.oms.*;

/**
 *
 * @author Zhong
 */
@WebService(serviceName = "LoginSoap")
public class LoginSoap {

    @Resource
    private WebServiceContext context;

    /**
     * Get a reference to the previously instantiated MovieStoreApplication Or
     * instantiate a new one if null
     *
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

    @WebMethod()
    public void login(@WebParam(name = "email") String email, @WebParam(name = "password") String password) {
        MessageContext mc = context.getMessageContext();
        HttpSession session = ((javax.servlet.http.HttpServletRequest) mc.get(MessageContext.SERVLET_REQUEST)).getSession();
        if (session
                == null) {
            throw new WebServiceException("No session found");
        }
        User user = (User) session.getAttribute("user");
        if (user
                == null) {
            user = getMovieStoreApp().getUsers().login(email, password);
            session.setAttribute("user", user);
        }
    }

    public void logout() {
        MessageContext mc = context.getMessageContext();
        HttpSession session = ((javax.servlet.http.HttpServletRequest) mc.get(MessageContext.SERVLET_REQUEST)).getSession();
        session.invalidate();
    }

}
