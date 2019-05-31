/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model.dao;

import MovieStore.Model.User;
import MovieStore.Model.UserActivity;
import java.math.BigInteger;
import MovieStore.Model.Movie;
import MovieStore.Model.Order;
import java.sql.Connection;
import java.math.BigInteger;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.*;
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

    public Statement getSt() {
        return st;
    }

    public void setSt(Statement st) {
        this.st = st;
    }
    
    public void deleteUser (String username) throws SQLException {
        st.executeUpdate("DELETE FROM USERS WHERE USERNAME = '" + username + "'");
    }
    
    public ResultSet selectUser(String username) throws SQLException {
        return st.executeQuery("SELECT * FROM USERS WHERE USERNAME = '" + username + "'");
    }
    
    
    

    //Add a movie data into the database
    public void addMovie(String ID, String title, String genre, String releaseDate, String director, String sympnosis, String price, String copies) throws SQLException {
        st.executeUpdate("INSERT INTO STUDENTS VALUES ('" + ID + "','" + title + "','" + genre + "','" + releaseDate + "','" + director + "','" + sympnosis + "','" + price + "','" + copies + "')");
    }

    public void executequery(String query) throws SQLException {
        st.executeUpdate(query);
    }

    ///Find User by username in database
    public User findUser(String username, String password) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM USERS WHERE USERNAME = '" + username + "' AND PASSWORD = '" + password + "'");
        while (rs.next()) {
            String userid = rs.getString(1);
            String userpass = rs.getString(2);

            if (userid.equals(username) && userpass.equals(password)) {
                String email = rs.getString(3);
                String firstname = rs.getString(4);
                String lastname = rs.getString(5);
                String address = rs.getString(6);
                String suburb = rs.getString(7);
                String postcode = rs.getString(8);
                String type = rs.getString(9);
                String status = rs.getString(10);

                return new User(userid, userpass, email, firstname, lastname, address, suburb, postcode, type, status);
            }
        }

        return null;
    }
    
    
    //Check if user exists
    public boolean checkUser(String username, String password) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM USERS WHERE USERNAME = '" + username + "' AND PASSWORD = '" + password + "'");
        while (rs.next()) {
            String userid = rs.getString(1);
            String userpass = rs.getString(2);

            if (userid.equals(username) && userpass.equals(password)) {
                return true;
            }
        }
        return false;
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
    
    //Add Log ID for every login
    public void createLog(int logId, String username, String status, String activity) throws SQLException{       
        st.executeUpdate("INSERT INTO LOG VALUES (" + logId + ", '" + username + "', '" + status + "', '" + activity + "')");
    }
    
    public ArrayList<User> searchUser(String keyword) throws SQLException{
        keyword = keyword.toUpperCase();
        ResultSet rs =  st.executeQuery("SELECT * FROM MOVIES WHERE UPPER(USER) LIKE '%" + keyword + "%'");
        
        ArrayList<User> users = new ArrayList();
        
         while (rs.next()) {
            String username = rs.getString(2);
            String password = rs.getString(3);
            String email = rs.getString(4);
            String first_name = rs.getString(5);
            String last_name = rs.getString(6);
            String address = rs.getString(7);
            String suburb = rs.getString(8);
            String postcode = rs.getString(8);
            String type = rs.getString(8);
            String status = rs.getString(9);

            users.add(new User(username, password, email, first_name, last_name, address, suburb, postcode, type, status));
        }
        return users;
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
