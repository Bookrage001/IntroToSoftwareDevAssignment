/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model;

import java.util.ArrayList;

/**
 *
 * @author Mark Galulu
 */
public class Movies {

    private ArrayList<Movie> list = new ArrayList<Movie>();

    public Movies() {
    }
    
    public Movies(ArrayList<Movie> list){
        this.list = list;
    }
    
    public ArrayList<Movie> getList(){
        return list;
    }
    
    public Movie getId(int id){
        for(Movie movie : list){
            if(movie.getId() == id){
                return movie;
            }
        }
        return null;
    }
    
}
