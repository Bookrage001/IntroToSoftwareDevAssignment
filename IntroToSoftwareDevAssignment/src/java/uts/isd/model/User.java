package uts.isd.model;

import java.io.Serializable;

/**
 *
 * @author George
 */

public class User implements Serializable {

    
    private String username;   
    private String password;   
    private String email;    
    private String first_name;    
    private String last_name;    
    private String address;
    private String suburb;
    private String postcode;
    private String type;
    private String status;

    public User(String username, String password,String email,String first_name,String last_name,String address, String suburb, String postcode, String type, String status) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;        
        this.address = address;
        this.suburb = suburb;
        this.postcode = postcode;
        this.type = type;
        this.status = status;
        
    }

    public User() { }
    
    public void updateDetails(String username, String email, String first_name, String last_name, String address, String suburb, String postcode){
        this.username = username;
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;
        this.address = address;
        this.suburb = suburb;
        this.postcode = postcode;
    }

    public boolean matchID(String ID){
        return this.username.equals(username.trim());
    }
    
    public boolean matchPassword(String password){
        return this.password.equals(password.trim());
    }
    
    public String getfirst_name() {
        return first_name;
    }

    public void setfirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}//end class
