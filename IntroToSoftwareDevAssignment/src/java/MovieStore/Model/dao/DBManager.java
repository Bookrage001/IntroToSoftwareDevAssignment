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

    // Creates an Arraylist of movies from the database and save it into a temporary
    // list which will be then called to the jsp
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

    public void addOrder(int intOrderId, String username, int intmovieId, int amount, String status)
            throws SQLException {
        BigInteger OrderId = BigInteger.valueOf(intOrderId);
        BigInteger movieId = BigInteger.valueOf(intmovieId);
        try {
            st.execute("INSERT INTO ORDERS VALUES(" + OrderId + ",'" + username + "','" + movieId + "','" + amount
                    + "','" + status + ")");
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println(e);
            Logger.getLogger(DBManager.class.getName()).log(Level.SEVERE, null, e);
        }
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

    // Add movies. simple query

    public void addMovie(int movieID, String title, String genre, String releaseDate, String director, String synopsis,
            double price, int copies) throws SQLException {

        st.executeUpdate("INSERT INTO MOVIES VALUES (" + movieID + ",'" + title + "','" + genre + "','" + releaseDate
                + "','" + director + "','" + synopsis + "'," + price + "," + copies + ")");
    }

    // Creates an Arraylist of movies containing a specific keyword and storing it
    // to a temporary list
    public ArrayList<Movie> searchMovie(String keyword) throws SQLException {
        keyword = keyword.toUpperCase();
        ResultSet rs = st.executeQuery("SELECT * FROM MOVIES WHERE UPPER(TITLE) LIKE '%" + keyword
                + "%' OR UPPER(GENRE) LIKE '%" + keyword + "%'");

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

    public ArrayList<Movie> filterGenre(String keyword) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM MOVIES WHERE GENRE = '" + keyword + "'");

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

    public boolean isMovie(int movieID) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM MOVIE WHERE MOVIE_ID = " + movieID);
        while (rs.next()) {
            String id = rs.getString(1);

            if (id.equals(movieID)) {
                return true;
            }
        }
        return false;
    }

    public void UpdateMovie(int movieID, String title, String genre, String releaseDate, String director,
            String synopsis, double price, int copies) throws SQLException {
        st.executeUpdate("UPDATE MOVIES SET TITLE = '" + title + "', GENRE = '" + genre + "', RELEASE_DATE = '"
                + releaseDate + "', DIRECTOR = '" + director + "', SYNOPSIS = '" + synopsis + "', PRICE = " + price
                + ", COPIES = " + copies + " WHERE MOVIE_ID = " + movieID);
    }

    public void deleteMovie(int movieID) throws SQLException {
        st.executeUpdate("DELETE FROM MOVIES WHERE MOVIE_ID =" + movieID);
    }

}
