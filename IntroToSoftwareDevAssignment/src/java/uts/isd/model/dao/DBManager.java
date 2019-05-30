package uts.isd.model.dao;

import uts.isd.model.User;
import java.sql.*;

/**
 *
 * @author George
 * 
 * DBManager is the primary DAO class to interact with the database and perform CRUD operations with the db.
 * Firstly, complete the existing methods and implement them into the application.
 * 
 * So far the application uses the Read and Create operations in the view.
 * Secondly, improve the current view to enable the Update and Delete operations.
 */
public class DBManager {

    private final Statement st;

    public DBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }

    //Find student by ID in the database
    //public User findUser(String ID, String password) throws SQLException {
        //setup the select sql query string
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        //String fetch = "select * from USER' where ID = '"+ID+"'' and password='"+password+"'";
    
       // }
        
    //}
    
    
        
       // return new User("userID","userEmail","userName","userPass","userDOB","favcol"); 
    //}

    //Check if a student exist in the database
    public boolean checkUser(String ID) throws SQLException {
       //setup the select sql query string
    String fetch = "select * from USERS";
    ResultSet rs = st.executeQuery(fetch);
    while (rs.next()) {
      String userID = rs.getString(1);
      if (userID.equals(ID)){
          
     return true;
       }
    }
    return false;
    }
   
        //execute this query using the statement field
        //add the results to a ResultSet
        //search the ResultSet for a student using the parameters
        //verify if the student exists
        
    

    //Add a student-data into the database
    public void addUser(String Username, String Password, String Email, String First_Name, String Last_Name,String Address, String Suburb, String Postcode) throws SQLException 
    {
        st.executeUpdate("INSERT INTO USERS (USERNAME, PASSWORD, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, POSTCODE, SUBURB, TYPE, STATUS) VALUES ('"+Username+"', '"+Password+"', '"+Email+"', '"+First_Name+"','"+Last_Name+"','"+Address+"','"+Suburb+"','"+Postcode+"','user','available')");
        
        //code for add-operation
    }

    
    
    
    
    
    //update a student details in the database
    public void updateUser(String username, String email, String address, String postcode, String suburb) throws SQLException {
         //st.executeUpdate(“UPDATE <your db> SET EMAIL='" + email + "‘”);
         
         //WILL CHANGE THE INFO OF THE USER WHERE THEY HAVEN'T LEFT THE FIELDS BLANK
         //USERNAME CAN NOT BE CHANGED OR HAS TO BE CHANGED SEPERATELY
         
         //If username is not left blank
           if (email.isEmpty())
           {}
           else
         {
             st.executeUpdate("UPDATE USERS SET EMAIL= '"+email+"' WHERE USERNAME= '"+username+"'");
           
         }
           
           
               //If adress is not left blank
           if (address.isEmpty())
           {}
           else
         {
              st.executeUpdate("UPDATE USERS SET ADDRESS= '"+address+"' WHERE USERNAME= '"+username+"'");
         }
           
              //If postcode is not left blank
           if (suburb.isEmpty())
           {}
           else
         {
             st.executeUpdate("UPDATE USERS SET SUBURB= '"+suburb+"' WHERE USERNAME= '"+username+"'");
           
                     //If postcode is not left blank
           if (postcode.isEmpty())
           {}
           else
         {
             st.executeUpdate("UPDATE USERS SET POSTCODE= '"+postcode+"' WHERE USERNAME= '"+username+"'");
         
         
         
         //st.executeUpdate("UPDATE USERS (USERNAME, EMAIL, FIRST_NAME, LAST_NAME, ADDRESS, POSTCODE, SUBURB, TYPE, STATUS) VALUES ('"+Username+"', '"+Password+"', '"+Email+"', '"+First_Name+"','"+Last_Name+"','"+Address+"','"+Suburb+"','"+Postcode+"','user','available')");
        //code for update-operation
    }
         }
         }
    
    
    
    
    
    
    //delete a student from the database
    public void deleteUser(String username) throws SQLException{
        
        st.executeUpdate("UPDATE USERS SET STATUS= 'cancelled' WHERE USERNAME= '"+username+"'");
        st.executeUpdate("UPDATE ORDERS SET STATUS= 'cancelled' WHERE USERNAME= '"+username+"'");

    }
    
       public void getDetails(String username) throws SQLException {
        ResultSet rs = st.executeQuery("SELECT * FROM USERS WHERE USERNAME = '");
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
                
                

             
            }
     
    }
    }
}

