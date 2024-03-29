/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model;

import java.io.Serializable;

/**
 *
 * @author Hayley
 */
public class User implements Serializable {

    private String username;
    private String password;
    private String email;
    private String firstname;
    private String lastname;
    private String address;
    private String suburb;
    private String postcode;
    private String type;
    private String status;

    public User(String username, String password, String email, String firstname, String lastname, String address, String suburb, String postcode, String type, String status) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address = address;
        this.suburb = suburb;
        this.postcode = postcode;
        this.type = type;
        this.status = status;
    }

    public User() {
    }

    public boolean matchUsername(String username) {
        return this.username.equals(username.trim());
    }

    public boolean matchPassword(String password) {
        return this.password.equals(password.trim());
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSuburb() {
        return suburb;
    }

    public void setSuburb(String suburb) {
        this.suburb = suburb;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
