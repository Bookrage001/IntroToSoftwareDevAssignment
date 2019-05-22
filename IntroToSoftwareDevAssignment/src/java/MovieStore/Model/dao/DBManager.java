/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model.dao;

import java.sql.Connection;
import java.sql.*;

/**
 *
 * @author Mark Galulu
 */
public class DBManager {

    private Statement st;
    
    public DBManager(Connection conn) throws SQLException{
        st = conn.createStatement();
    }
    
    //Add a movie data into the database
    public void addMovie(int movieID, String title, String genre, String releaseDate,
            String director, String synopsis, double price, int copies) throws SQLException {

        st.executeUpdate("INSERT INTO MOVIES VALUES (" + movieID + ",'" + title + "','" + genre + "','" + releaseDate
                + "','" + director + "','" + synopsis + "'," + price + "," + copies + ")");
    }
    
}
