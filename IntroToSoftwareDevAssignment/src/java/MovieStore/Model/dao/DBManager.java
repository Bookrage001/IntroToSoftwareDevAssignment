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
    public void addMovie(String title, String genre, String releaseDate, String director, String sympnosis,
            Double price, int copies) throws SQLException {
        st.executeUpdate("INSERT INTO MOVIES (TITLE,GENRE, RELEASE_DATE, DIRECTOR, SYNOPSIS, PRICE, COPIES ) VALUES ('"
                + title + "','" + genre + "','" + releaseDate + "','" + director + "','" + sympnosis + "'," + price
                + "," + copies + ")");
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

    public ArrayList<Order> getORders() {
        try {
            ResultSet rs = st.executeQuery("SELECT * FROM ORDERS FETCH FIRST 100 ROWS ONLY");
        } catch (Exception e) {
            System.out.println(e);
        }
        ArrayList<Order> orders = new ArrayList();

        while (rs.next()) {
            BigInteger OrderID = rs.getInt(1);
            BigInteger customerId = rs.getString(2);
            int amount = rs.getString(3);
            String username = rs.getString(4);
            String status = rs.getString(5);

            orders.add(new Order(OrderID, movieID, customerId, amount, username, status));
        }
        return orders;
    }

    // public ArrayList<Movie> searchMovie(String keyword) throws SQLException {
    // ResultSet rs = st.executeQuery(
    // "SELECT * FROM MOVIES WHERE TITLE LIKE '%" + keyword + "%' OR GENRE LIKE '%"
    // + keyword + "%'");

    // ArrayList<Movie> movies = new ArrayList();

    // while (rs.next()) {
    // int movieID = rs.getInt(1);
    // String title = rs.getString(2);
    // String genre = rs.getString(3);
    // String releaseDate = rs.getString(4);
    // String director = rs.getString(5);
    // String synopsis = rs.getString(6);
    // double price = rs.getDouble(7);
    // int copies = rs.getInt(8);

    // movies.add(new Movie(movieID, title, genre, releaseDate, director, synopsis,
    // price, copies));
    // }
    // return movies;
    //}

    public void executequery(String query) throws SQLException {
        st.executeUpdate(query);
    }
}
