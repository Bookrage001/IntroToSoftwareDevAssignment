/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model.dao;

import MovieStore.Model.User;
import MovieStore.Model.UserActivity;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.*;

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
    
}
