package uts.wsd.oms;

import javax.xml.bind.annotation.*;
import java.io.Serializable;
import java.util.Objects;

/**
 * Movie Javabean with JAXB bindings
 */
@XmlRootElement(name = "movie")
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(namespace="http://uts/wsd/oms")
public class Movie implements Serializable {

    @XmlElement(name = "title")
    private String title;

    @XmlElement(name = "genre")
    private String genre;

    @XmlElement(name = "releaseDate")
    private int releaseDate;

    @XmlElement(name = "price")
    private float price;

    @XmlElement(name = "copies")
    private int copies;

    public Movie() {
    }

    /**
     * Constructor that sets the movies title, genre, and release date
     * @param title
     * @param genre
     * @param releaseDate
     */
    public Movie(String title, String genre, int releaseDate) {
        this.title = title;
        this.genre = genre;
        this.releaseDate = releaseDate;
    }
    
    /**
     * Constructor that sets the movie with values from another movie
     * @param movie 
     */
    public Movie(Movie movie){
        this.title = movie.getTitle();
        this.releaseDate = movie.getReleaseDate();
        this.genre = movie.getGenre();
        this.copies = movie.getCopies();
        this.price = movie.getPrice();
    }

    /**
     * @return Genre of the movie
     */
    public String getGenre() {
        return genre;
    }

    /**
     * set the Genre of the movie
     * @param genre
     */
    public void setGenre(String genre) {
        this.genre = genre;
    }

    /**
     * @return The release date of the movie
     */
    public int getReleaseDate() {
        return releaseDate;
    }

    /**
     * Set the release date of the movie
     * @param releaseDate
     */
    public void setReleaseDate(int releaseDate) {
        this.releaseDate = releaseDate;
    }

    /**
     * @return The title of the movie
     */
    public String getTitle() {
        return title;
    }

    /**
     * Set the title of the movie
     * @param title
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return The price of the movie
     */
    public float getPrice() {
        return price;
    }

    /**
     * Set the price of the movie
     * @param price
     */
    public void setPrice(float price) {
        this.price = price;
    }

    /**
     * @return Get the number of copies of the movie
     */
    public int getCopies() {
        return copies;
    }

    /**
     * Set the number of copies of the movie
     * @param copies
     */
    public void setCopies(int copies) {
        this.copies = copies;
    }

    /**
     * Increment the number of copies of the movie
     * @param amount
     */
    public void incrementCopies(int amount) {
        copies += amount;
    }

    /**
     * Decrement the number of copies of the movie
     * @param amount
     */
    public void decrementCopies(int amount) {
        copies -= amount;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        final Movie other = (Movie) obj;
        if (!Objects.equals(this.title, other.title)) {
            return false;
        }
        if (!Objects.equals(this.genre, other.genre)) {
            return false;
        }
        if (!Objects.equals(this.releaseDate, other.releaseDate)) {
            return false;
        }
        return true;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 13 * hash + Objects.hashCode(this.title);
        hash = 13 * hash + Objects.hashCode(this.genre);
        hash = 13 * hash + Objects.hashCode(this.releaseDate);
        return hash;
    }
}
