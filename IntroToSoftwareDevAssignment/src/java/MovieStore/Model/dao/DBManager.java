/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model.dao;

import MovieStore.Model.Movie;
import MovieStore.Model.Order;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.math.BigInteger;
import java.sql.*;
import java.util.ArrayList;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author Mark Galulu
 */
public class DBManager {

    private Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    public ArrayList<Movie> getMovies() throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM MOVIES");

        ArrayList<Movie> movies = new ArrayList();

        while (rs.next()) {
            int movieID = rs.getInt(1);
            String title = rs.getString(2);
            String genre = rs.getString(3);
            String releaseDate = rs.getString(4);
            String director = rs.getString(5);
            String synopsis = rs.getString(6);
            double price = rs.getDouble(7);
            int copies = rs.getInt(8);

            movies.add(new Movie(movieID, title, genre, releaseDate, director, synopsis, price, copies));
        }
        return movies;
    }

    /*
     *
     * @Param BigInteger orderId
     * 
     * @Param String username;
     * 
     * @Param BigInteger movieId;
     * 
     * @Paramint amount
     * 
     * @Param String status
     * 
     * @Param ArrayList<Movie> movies
     */
    public void addOrder(BigInteger OrderId, String username, BigInteger movieId, int amount, String status)
            throws SQLException {
        try {
            st.execute("INSERT INTO ORDERS VALUES(" + OrderId + ",'" + username + "','" + movieId + "','" + amount
                    + "','" + status + ")");
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println(e);
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void addMovie(int movieID, String title, String genre, String releaseDate, String director, String synopsis,
            double price, int copies) throws SQLException {

        st.executeUpdate("INSERT INTO MOVIES VALUES (" + movieID + ",'" + title + "','" + genre + "','" + releaseDate
                + "','" + director + "','" + synopsis + "'," + price + "," + copies + ")");
    }

    public ArrayList<Order> getOrders() throws SQLException {
        ArrayList<Order> orders = new ArrayList();
        ResultSet rs = st.executeQuery("SELECT * FROM ORDERS");
        while (rs.next()) {
            BigInteger OrderID = BigInteger.valueOf(rs.getInt(1));
            BigInteger movieID = BigInteger.valueOf(rs.getInt(2));
            String username = rs.getString(4);
            int amount = rs.getInt(3);
            String status = rs.getString(5);
            // user.setUserId(new
            // BigInteger(Integer.valueOf(rs.getInt("User_Id")).toString()));
            orders.add(new Order(OrderID, movieID, amount, username, status));
        }
        return orders;
    }

    public ArrayList<Movie> searchMovie(String keyword) throws SQLException {
        ResultSet rs = st.executeQuery(
                "SELECT * FROM MOVIES WHERE TITLE LIKE '%" + keyword + "%' OR GENRE LIKE '%" + keyword + "%'");

        ArrayList<Movie> movies = new ArrayList();

        while (rs.next()) {
            int movieID = rs.getInt(1);
            String title = rs.getString(2);
            String genre = rs.getString(3);
            String releaseDate = rs.getString(4);
            String director = rs.getString(5);
            String synopsis = rs.getString(6);
            double price = rs.getDouble(7);
            int copies = rs.getInt(8);

            movies.add(new Movie(movieID, title, genre, releaseDate, director, synopsis, price, copies));
        }
        return movies;
    }

    public Movie getMovieDetails(int id) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM MOVIES WHERE MOVIE_ID =" + id);

        while (rs.next()) {
            int movieID = rs.getInt(1);
            String title = rs.getString(2);
            String genre = rs.getString(3);
            String releaseDate = rs.getString(4);
            String director = rs.getString(5);
            String synopsis = rs.getString(6);
            double price = rs.getDouble(7);
            int copies = rs.getInt(8);

            return new Movie(movieID, title, genre, releaseDate, director, synopsis, price, copies);
        }
        return null;
    }

    public void UpdateMovie(int movieID, String title, String genre, String releaseDate, String director,
            String synopsis, double price, int copies) {

    }

    public void deleteMovie(int movieID) throws SQLException {
        st.executeUpdate("DELETE FROM MOVIES WHERE ID ='" + movieID + "'");
    }

}
