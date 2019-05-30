/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.controller;

import java.io.Serializable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator implements Serializable{
    private final String emailPattern = "([a-zA-Z0-9]+)(([._-])([a-zA-Z0-9]+))*(@)([a-z]+)(.)([a-z]{3})((([.])[a-z]{0,2})*)";   
    private final String namePattern = "([A-Z][a-z]+[\\s])+[A-Z][a-z]*";    
    private final String passwordPattern = "[a-z]{6,}[0-9]+";   
    private final String IDPattern = "[0-9]{5,6}"; 
   
    public Validator(){}
    
    public boolean validate(String pattern, String input){
        Pattern regEx = Pattern.compile(pattern);
        Matcher match = regEx.matcher(input);
        return match.matches();
    }    
    public boolean checkEmpty(String email, String password){
        return  email.isEmpty() || password.isEmpty();
    }
    public boolean validateEmail(String email){                
        return validate(emailPattern,email);
    } 
    public boolean validateID(String ID){                
        return validate(IDPattern,ID);
    } 
    public boolean validateName(String name){        
        return validate(namePattern,name);
    }    
    public boolean validatePassword(String password){        
        return validate(passwordPattern,password);
    }     
}