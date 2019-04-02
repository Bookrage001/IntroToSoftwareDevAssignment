package uts.wsd.oms;

import java.io.Serializable;
import javax.xml.bind.annotation.*;

/**
 * User Javabean with JAXB bindings
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "user")
@XmlType(namespace = "http://uts/wsd/oms")
public class User implements Serializable {

    @XmlElement(name = "firstName")
    private String firstName;
    @XmlElement(name = "lastName")
    private String lastName;
    @XmlElement(name = "email")
    private String email;
    @XmlElement(name = "password")
    private String password;
    @XmlElement(name = "phoneNo")
    private String phoneNo;
    @XmlElement(name = "address")
    private String address;
    @XmlElement(name = "city")
    private String city;
    @XmlElement(name = "state")
    private String state;
    @XmlElement(name = "postCode")
    private String postCode;

    /**
     * Empty constructor method
     */
    public User() {
    }

    /**
     * Constructor method that sets all user first name, last name, email,
     * password phoneNo, address, city, state and postcode
     *
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
    public User(String firstName, String lastName, String email, String password, String phoneNo, String address, String city, String state, String postCode) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phoneNo = phoneNo;
        this.address = address;
        this.city = city;
        this.state = state;
        this.postCode = postCode;
    }

    /**
     * @return first name of user
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * set first name of user
     *
     * @param firstName
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return last name of user
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * set last name of user
     *
     * @param lastName
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return email of user
     */
    public String getEmail() {
        return email;
    }

    /**
     * set email of user
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return password of user
     */
    public String getPassword() {
        return password;
    }

    /**
     * set password of user
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return phoneNo of user
     */
    public String getPhoneNo() {
        return phoneNo;
    }

    /**
     * set phoneNo of user
     *
     * @param phoneNo
     */
    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    /**
     * @return address of user
     */
    public String getAddress() {
        return address;
    }

    /**
     * set address of user
     *
     * @param address
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return city of user
     */
    public String getCity() {
        return city;
    }

    /**
     * set city of user
     *
     * @param city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return state of user
     */
    public String getState() {
        return state;
    }

    /**
     * set state of user
     *
     * @param state
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * @return postcode of user
     */
    public String getPostCode() {
        return postCode;
    }

    /**
     * set postcode of user
     *
     * @param postCode
     */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    /**
     * Updates user information including first name, last name, password,
     * address and phoneNo
     *
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
    public void updateUser(String firstName, String lastName, String email, String password, String phoneNo, String address, String city, String state, String postCode) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phoneNo = phoneNo;
        this.address = address;
        this.city = city;
        this.state = state;
        this.postCode = postCode;
    }
}
