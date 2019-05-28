package uts.isd.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Initiate connection with the jdbc derby database and initialize the super class conn field
 * 
 * @author George
 */
public class DBConnector extends DB{
     private String URL = "jdbc:derby://localhost:1527/";
     private String dbuser = "administrator";
     private String dbpass = "admin";
     private String driver ="org.apache.derby.jdbc.ClientDriver";
     private Connection conn;
    
    
    public DBConnector() throws ClassNotFoundException, SQLException {
        Class.forName(driver);
        conn = DriverManager.getConnection(URL+db, dbuser, dbpass);
    }

    public Connection openConnection(){
        return this.conn;
    }
    
    public void closeConnection() throws SQLException {
        this.conn.close();
    }
}
