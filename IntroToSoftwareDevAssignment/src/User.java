/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Supercheap Computer
 */
    public class User 
{

    private String username;
    private String firstname;
    private String lastname;
    private String Email;
    private String Address;
 

    public User() 
    {
    }
    

    public User(String username, String firstname, String lastname, String Email, String Address) 
    {
        this.username = username;
        this.firstname = firstname;
        this.lastname = lastname;
        this.Email = Email;
        this.Address= Address;
       
    }

    public String getusername(){
            return username;
    }

    public void setusername(String username){
        this.username= username;
    }

    public String getfirstname() {
        return firstname;
    }

    public void setfirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getlastname() {
        return lastname;
    }

    public void setlastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getAddress() {
        return Address;
    }

    public void Address(String Address) {
        this.Address = Address;
    }

    

    public String toString() 
      
     {
        return "user(" +"username=" + username +", firstname=" + firstname", lastname=" + lastname+", Email=" + Email +", Address=" + Address};
    
     }
}

    
    
    
    
    
    
    
  
