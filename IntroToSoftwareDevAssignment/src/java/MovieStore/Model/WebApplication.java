/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model;

import java.io.*;
import javax.xml.bind.*;

/**
 *
 * @author Mark Galulu
 */
public class WebApplication implements Serializable{

    public Movies movies;
    
    public Users users;
    
    private String movieFilePath;
    
    private String userFilePath;
    
    public WebApplication() {
        super();
    }

    public WebApplication(Movies movies, String movieFilePath) {
        super();
        this.movies = movies;
        this.movieFilePath = movieFilePath;
    }

    public String getMovieFilePath() {
        return movieFilePath;
    }

    public String getUserFilePath() {
        return userFilePath;
    }
    
    public void setMovieFilePath(String movieFilePath) throws JAXBException, IOException {
        this.movieFilePath = movieFilePath;
        
        //Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Movies.class);
        Unmarshaller u = jc.createUnmarshaller();
        
        //Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(movieFilePath);
        movies = (Movies)u.unmarshal(fin);
        fin.close();
    }
    
    public void setUserFilePath(String userFilePath) throws JAXBException, IOException {
        this.userFilePath = userFilePath;
        
        //Create the unmarshaller
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Unmarshaller u = jc.createUnmarshaller();
        
        //Now unmarshal the object from the file
        FileInputStream fin = new FileInputStream(userFilePath);
        users = (Users)u.unmarshal(fin);
        fin.close();
    }

    public Movies getMovies() {
        return movies;
    }

    public void setMovies(Movies movies) {
        this.movies = movies;
    }

    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
    
    

    
}
