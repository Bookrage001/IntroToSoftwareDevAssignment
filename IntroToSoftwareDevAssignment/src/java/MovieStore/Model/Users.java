/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model;

import java.io.Serializable;
import java.util.ArrayList;
import javax.xml.bind.annotation.*;

/**
 *
 * @author Mark Galulu
 */
@XmlAccessorType(XmlAccessType.NONE)
@XmlRootElement(name = "Users")
public class Users implements Serializable {

    @XmlElement(name = "user")
    private ArrayList<User> list = new ArrayList<User>();

    public Users() {
    }
    
    public Users(ArrayList<User> list){
        this.list = list;
    }

    public ArrayList<User> getList() {
        return list;
    }
    
    public User getId(int id){
        for(User user : list){
            if(user.getId() == id){
                return user;
            }
        }
        return null;
    }
    
    public User login(String email, String password){
        for(User user : list){
            if(user.getEmail().equals(email) && user.getPassword().equals(password))
                return user;
        }
        return null;
    }
}
