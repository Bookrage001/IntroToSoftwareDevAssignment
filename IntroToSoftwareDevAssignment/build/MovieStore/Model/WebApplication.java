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
public class WebApplication {

    private String moviePath;
    
    private Movies movies;
    
    public Movies getMovies(){
        return movies;
    }

    public void setMoviePath(String moviePath) throws JAXBException, IOException{
        this.moviePath = moviePath;
        set(moviePath, Movies.class);
    }
    
    public <A> void set(String path, Class<A> comp) throws JAXBException, IOException{
        JAXBContext jc = JAXBContext.newInstance(comp);
        Unmarshaller u = jc.createUnmarshaller();
        
        FileInputStream fin = new FileInputStream(path);
        movies = (Movies) u.unmarshal(fin);
        fin.close();
    }
    
    public String getMoviesPath(){
        return moviePath;
    }
}
