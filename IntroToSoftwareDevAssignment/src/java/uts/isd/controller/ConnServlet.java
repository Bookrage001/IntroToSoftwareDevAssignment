/*
 * A Servlet instance will be created once the project is deployed.
 * The init() method will create an instance of DBConnector to be used for the session.
 * database conenction will be closed automatically once the servelt is destroyed 
 * The servlet provide the application with a connection pool. 
 * One instance of the db connection to be used across the session.
 */
package uts.isd.controller;

import uts.isd.model.dao.DBConnector;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import uts.isd.model.dao.*;

public class ConnServlet extends HttpServlet {

    private DBConnector db;
    private DBManager manager;
    private Connection conn;
    
    @Override //Create and instance of DBConnector for the deployment session
    public void init() {
        try {
            db = new DBConnector();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConnServlet.class.getName()).log(Level.SEVERE, null, ex);
        }       
    }
  
    @Override //Add the DBManager instance to the session 
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");        
        HttpSession session = request.getSession();
        conn = db.openConnection();        
        try {
            manager = new DBManager(conn);
        } catch (SQLException ex) {
            Logger.getLogger(ConnServlet.class.getName()).log(Level.SEVERE, null, ex);
        }      
        //export the DB manager to the view-session (JSPs)
        session.setAttribute("manager", manager);
        
    }    
    
    @Override //Destroy the servlet and release the resources of the application
     public void destroy() {
        try {
            db.closeConnection();
        } catch (SQLException ex) {
            Logger.getLogger(ConnServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
