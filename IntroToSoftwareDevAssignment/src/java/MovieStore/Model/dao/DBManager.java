/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model.dao;

import MovieStore.Model.User;
import java.sql.Connection;
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

    //Add a movie data into the database
    public void addMovie(String ID, String title, String genre, String releaseDate, String director, String sympnosis, String price, String copies) throws SQLException {
        st.executeUpdate("INSERT INTO STUDENTS VALUES ('" + ID + "','" + title + "','" + genre + "','" + releaseDate + "','" + director + "','" + sympnosis + "','" + price + "','" + copies + "')");
    }

    public void executequery(String query) throws SQLException {
        st.executeUpdate(query);
    }

    //Find User by username in database
    public User findUser(String USERNAME, String PASSWORD) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM USERS WHERE USERNAME = '" + USERNAME + "' AND PASSWORD = '" + PASSWORD + "'");
        while (rs.next()) {
            String userid = rs.getString(1);
            String userpass = rs.getString(2);

            if (userid.equals(USERNAME) && userpass.equals(PASSWORD)) {
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
    public boolean checkUser(String USERNAME, String PASSWORD) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM USERS WHERE USERNAME = '" + USERNAME + "' AND PASSWORD = '" + PASSWORD + "'");
        while (rs.next()) {
            String userid = rs.getString(1);
            String userpass = rs.getString(2);

            if (userid.equals(USERNAME) && userpass.equals(PASSWORD)) {
                return true;
            }
        }
        return false;
    }
    
    //Add Log ID for every log in
    public void updateLogin(String ID, String username) throws SQLException {
    }
    
    public void updateLogout(String ID, String username) throws SQLException {
    }
}
