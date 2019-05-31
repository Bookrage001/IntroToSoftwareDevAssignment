/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model.dao;

import MovieStore.Model.Movie;
import MovieStore.Model.User;
import MovieStore.Model.UserActivity;
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

    public void UpdateMovie(int movieID, String title, String genre, String releaseDate, String director,
            String synopsis, double price, int copies) throws SQLException {
        st.executeUpdate("UPDATE MOVIES SET TITLE = '" + title + "', GENRE = '" + genre + "', RELEASE_DATE = '"
                + releaseDate + "', DIRECTOR = '" + director + "', SYNOPSIS = '" + synopsis + "', PRICE = " + price
                + ", COPIES = " + copies + " WHERE MOVIE_ID = " + movieID);
    }

    public void deleteMovie(int movieID) throws SQLException {
        st.executeUpdate("DELETE FROM MOVIES WHERE MOVIE_ID =" + movieID);
    }

    //Check user if not null
    public boolean checkUser(String ID) throws SQLException {
        //setup the select sql query string
        String fetch = "select * from USERS";
        ResultSet rs = st.executeQuery(fetch);
        while (rs.next()) {
            String userID = rs.getString(1);
            if (userID.equals(ID)) {

                return true;
            }
        }
        return false;
    }

    //Add a user-data into the database
    public void addUser(String Username, String Password, String Email, String First_Name, String Last_Name, String Address, String Suburb, String Postcode) throws SQLException {
        st.executeUpdate("INSERT INTO USERS VALUES ('" + Username + "', '" + Password + "', '" + Email + "', '" + First_Name + "','" + Last_Name + "','" + Address + "','" + Postcode
                + "','" + Suburb + "','user','available')");
    }

    //update a student details in the database
    public void updateUser(String username, String email, String address, String postcode, String suburb) throws SQLException {
        //st.executeUpdate(“UPDATE <your db> SET EMAIL='" + email + "‘”);

        //WILL CHANGE THE INFO OF THE USER WHERE THEY HAVEN'T LEFT THE FIELDS BLANK
        //USERNAME CAN NOT BE CHANGED OR HAS TO BE CHANGED SEPERATELY
        //If username is not left blank
        if (email.isEmpty()) {
        } else {
            st.executeUpdate("UPDATE USERS SET EMAIL= '" + email + "' WHERE USERNAME= '" + username + "'");

        }

        //If adress is not left blank
        if (address.isEmpty()) {
        } else {
            st.executeUpdate("UPDATE USERS SET ADDRESS= '" + address + "' WHERE USERNAME= '" + username + "'");
        }

        //If postcode is not left blank
        if (suburb.isEmpty()) {
        } else {
            st.executeUpdate("UPDATE USERS SET SUBURB= '" + suburb + "' WHERE USERNAME= '" + username + "'");

            //If postcode is not left blank
            if (postcode.isEmpty()) {
            } else {
                st.executeUpdate("UPDATE USERS SET POSTCODE= '" + postcode + "' WHERE USERNAME= '" + username + "'");

                //st.executeUpdate("UPDATE USERS (USERNAME, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, POSTCODE, SUBURB, TYPE, STATUS) VALUES ('"+Username+"', '"+Password+"', '"+Email+"', '"+First_Name+"','"+Last_Name+"','"+Address+"','"+Suburb+"','"+Postcode+"','user','available')");
                //code for update-operation
            }
        }
    }

    //delete a student from the database
    public void deleteUser(String username) throws SQLException {

        st.executeUpdate("UPDATE USERS SET STATUS= 'cancelled' WHERE USERNAME= '" + username + "'");
        st.executeUpdate("UPDATE ORDERS SET STATUS= 'cancelled' WHERE USERNAME= '" + username + "'");
    }

    //Stores all the details in the database linked to the username
    public String[] getDetails(String username) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM USERS WHERE USERNAME = '" + username + "'");

        while (rs.next()) {
            String userid = rs.getString(1);

            if (userid.equals(username)) {
                String email = rs.getString(3);
                String firstname = rs.getString(4);
                String lastname = rs.getString(5);
                String address = rs.getString(6);
                String suburb = rs.getString(7);
                String postcode = rs.getString(8);

                String[] detailsArray = new String[]{email, firstname, lastname, address, suburb, postcode};

                return detailsArray;

            }

        }
        return null;
    }

    //Find User by username in database
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

    //Add Log ID for every login
    public void createLogin(int logId, String username, String status, String activity) throws SQLException {
        st.executeUpdate("INSERT INTO LOG VALUES (" + logId + ", '" + username + "', '" + status + "', '" + activity + "')");
    }

    //Add Log ID for every logout
    public void createLogout(int logId, String username, String status, String activity) throws SQLException {
        st.executeUpdate("INSERT INTO LOG VALUES (" + logId + ", '" + username + "', '" + status + "', '" + activity + "')");
    }

    //Find user log in database
    public UserActivity getUser(String username) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM LOG WHERE USERNAME = '" + username + "'");
        while (rs.next()) {
            String userid = rs.getString(2);

            if (userid.equals(username)) {

                int logId = rs.getInt(1);
                String status = rs.getString(3);
                String activity = rs.getString(4);

                return new UserActivity(logId, userid, status, activity);
            }
        }
        return null;
    }

    //Show Log Database
    public ArrayList<UserActivity> getActivity() throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM LOG");

        ArrayList<UserActivity> act = new ArrayList();

        while (rs.next()) {
            int logId = rs.getInt(1);
            String username = rs.getString(2);
            String status = rs.getString(3);
            String activity = rs.getString(4);

            act.add(new UserActivity(logId, username, status, activity));
        }
        return act;
    }

    // Search by date
    public ArrayList<UserActivity> searchActivity(String keyword) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM LOG WHERE ACTIVITY LIKE '%" + keyword + "%'");

        ArrayList<UserActivity> act = new ArrayList();

        while (rs.next()) {
            int logId = rs.getInt(1);
            String username = rs.getString(2);
            String status = rs.getString(3);
            String activity = rs.getString(4);

            act.add(new UserActivity(logId, username, status, activity));
        }
        return act;
    }

    //  Retrive activity log details
    public UserActivity getActivityDetails(int id) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM LOG WHERE LOGID =" + id);

        while (rs.next()) {
            int logId = rs.getInt(1);
            String username = rs.getString(2);
            String status = rs.getString(3);
            String activity = rs.getString(4);

            return new UserActivity(logId, username, status, activity);
        }
        return null;
    }

    // Delete Activity from Log
    public void deleteActivity(int logId) throws SQLException {
        //code for delete-operation
        st.executeUpdate("DELETE FROM LOG WHERE LOGID =" + logId);
    }
}
