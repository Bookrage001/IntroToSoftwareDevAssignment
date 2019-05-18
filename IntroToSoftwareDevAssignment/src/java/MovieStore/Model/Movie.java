/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model;

import javax.xml.bind.annotation.*;

/**
 *
 * @author Mark Galulu
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement()
public class Movie {

    @XmlAttribute 
    private String id;
    private String title;
    private String genre;
    private String releaseDate;
    private String director;
    private String sympnosis;
    private String price;
    private String copies;

    public Movie() {
    }

    public Movie(String id, String title, String genre, String releaseDate, String director, String sympnosis, String price, String copies) {
        this.id = id;
        this.title = title;
        this.genre = genre;
        this.releaseDate = releaseDate;
        this.director = director;
        this.sympnosis = sympnosis;
        this.price = price;
        this.copies = copies;
    }

    
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getSympnosis() {
        return sympnosis;
    }

    public void setSympnosis(String sympnosis) {
        this.sympnosis = sympnosis;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getCopies() {
        return copies;
    }

    public void setCopies(String copies) {
        this.copies = copies;
    }
    
       
}
