package uts.wsd.oms;

import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

/**
 * Users Javabean with JAXB bindings
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "users")
@XmlType(namespace="http://uts/wsd/oms")
public class Users implements Serializable {

    @XmlElement(name = "user")
    private ArrayList<User> list = new ArrayList<User>();

    /**
     * @return The list of users
     */
    public ArrayList<User> getList() {
        return list;
    }

    /**
     * Add a user to the list
     * @param user
     */
    public void addUser(User user) {
        list.add(user);
    }

    /**
     * Register a user
     * @param user
     * @return true if registered or false if not
     */
    public boolean registerUser(User user) {
        if (list.stream().filter(u -> u.getEmail().equals(user.getEmail())).findFirst().isPresent()) {
            return false;
        } else {
            addUser(user);
            return true;
        }
    }

    /**
     * @param email
     * @return The user matching the provided email
     */
    public User getUser(String email) {
        if (list.stream().filter(u -> u.getEmail().equals(email)).findFirst().isPresent()) {
            return list.stream().filter(u -> u.getEmail().equals(email)).findFirst().get();
        } else {
            return null;
        }
    }

    /**
     * Remove the provided user
     * @param user
     */
    public void removeUser(User user) {
        list.remove(user);
    }

    /**
     * Login with the provided user details
     * @param email
     * @param password
     * @return The user matching the details provided
     */
    public User login(String email, String password) {
        for (User user : list) {
            if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
                return user;
            }
        }
        return null;

    }

    /**
     * Edit a users details
     * @param user
     * @param firstName
     * @param lastName
     * @param email
     * @param password
     * @param phoneNo
     * @param address
     * @param city
     * @param state
     * @param postCode
     */
    public void editUser(User user, String firstName, String lastName, String email, String password, String phoneNo, String address, String city, String state, String postCode){
        removeUser(user);
        user.updateUser(firstName, lastName, email, password, phoneNo, address, city, state, postCode);
    }
}
