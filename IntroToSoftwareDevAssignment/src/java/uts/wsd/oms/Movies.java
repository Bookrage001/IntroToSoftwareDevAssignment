package uts.wsd.oms;

import javax.xml.bind.annotation.*;
import java.util.*;
import java.io.Serializable;

/**
 * Movies Javabean with JAXB bindings
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "movies")
@XmlType(namespace="http://uts/wsd/oms")
public class Movies implements Serializable {

    @XmlElement(name = "movie")
    private ArrayList<Movie> movies;

    public Movies() {
        movies = new ArrayList<Movie>();
    }
    
    /**
     * @return The list of movies
     */
    public ArrayList<Movie> getMovies() {
        return movies;
    }
    
    /**
     * Set the list of movies
     * @param movies
     */
    public void setMovies(ArrayList<Movie> movies){
        this.movies = movies;
    }

    /**
     * Add a movie to the list or increment 
     * the number of copies if the movie exists.
     * @param movie
     */
    public void addMovie(Movie movie) {
        int i = movies.indexOf(movie);
        if (i > -1)
            movies.get(i).incrementCopies(movie.getCopies());
        else
            movies.add(movie);
    }

    /**
     * Remove a movie from the list or decrement 
     * the number of copies if greater than 1
     * @param movie
     */
    public void removeMovie(Movie movie) {
        int i = movies.indexOf(movie);
        if (i > -1 && movies.get(i).getCopies() - movie.getCopies() > 1)
            movies.get(i).decrementCopies(movie.getCopies());
        else
            movies.remove(movie);
    }
    
    /**
     * Remove a movie from the list based on the provided title and release date
     * @param title
     * @param releaseDate
     */
    public void removeMovie(String title, String releaseDate) {
        if(movies.stream().filter(m -> m.getTitle().equals(title) && (m.getReleaseDate()+"").equals(releaseDate)).findFirst().isPresent())
        {
            removeMovie(movies.stream().filter(m -> m.getTitle().equals(title) && (m.getReleaseDate()+"").equals(releaseDate)).findFirst().get());
        }
    }
}
