/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.ArrayList;

/**
 *
 * @author Mark Galulu
 */
public class Users {

    private ArrayList<User> list = new ArrayList<User>();

    public Users() {
    }
    
    public Users(ArrayList<Users> list){
        this.list = list;
    }
    
    public ArrayList<Users> getList(){
        return list;
    }
    
    public Users getId(int id){
        for(Users user : list){
            if(Users.getUsername() == username){
                return user;
            }
        }
        return null;
    } 
}

