/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model.dao;

import java.sql.*;

/**
 *
 * @author Mark Galulu
 */
public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    // Add a movie data into the database
    public void addMovie(String ID, String title, String genre, String releaseDate, String director, String sympnosis,
            String price, String copies) throws SQLException {
        st.executeUpdate("INSERT INTO MOVIES VALUES ('" + ID + "','" + title + "','" + genre + "','" + releaseDate
                + "','" + director + "','" + sympnosis + "','" + price + "','" + copies + "')");
    }

    public void addItem(int listId, int movieId, int amount) throws SQLException {
        try {
            System.out.println("ListID:  " + listId + " MovieId: " + movieId + " Amount: " + amount);
            // st.executeUpdate("INSERT INTO ITEMSORDERD (ListID, MovieID, Amount )" +
            // "VALUES (" + listId + "," + movieId
            // + "," + amount + ")");
            st.executeUpdate("INSERT INTO Orders (ListID, MovieID, Amount ) VALUES ( 7, 5, 8) ");
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("Cammot inset into DB: " + e);

        }
    }

    public void executequery(String query) throws SQLException {
        st.executeUpdate(query);
    }
}
