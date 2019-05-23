/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model.dao;

import MovieStore.Model.Movie;
import java.sql.Connection;
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

    public void addMovie(int movieID, String title, String genre, String releaseDate,
            String director, String synopsis, double price, int copies) throws SQLException {

        st.executeUpdate("INSERT INTO MOVIES VALUES (" + movieID + ",'" + title + "','" + genre + "','" + releaseDate
                + "','" + director + "','" + synopsis + "'," + price + "," + copies + ")");
    }
    
    public ArrayList<Movie> searchMovie(String keyword) throws SQLException{
        ResultSet rs =  st.executeQuery("SELECT * FROM MOVIES WHERE TITLE LIKE '%" + keyword + "%' OR GENRE LIKE '%" + keyword + "%'");
        
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

    public void UpdateMovie(int movieID, String title, String genre, String releaseDate,
            String director, String synopsis, double price, int copies) {

    }

    public void deleteMovie(int movieID) throws SQLException {
        st.executeUpdate("DELETE FROM MOVIES WHERE ID ='" + movieID + "'");
    }
    
}
