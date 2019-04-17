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
    private int id;
    private String title;
    private String genre;
    private String releaseDate;
    private String price;
    private String copies;
    private String summary;

    public Movie() {
    }

    public Movie(int id, String title, String genre, String releaseDate, String price, String copies, String summary) {
        this.id = id;
        this.title = title;
        this.genre = genre;
        this.releaseDate = releaseDate;
        this.price = price;
        this.copies = copies;
        this.summary = summary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
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

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    @Override
    public String toString() {
        return "Movie{" + "id=" + id + ", title=" + title + ", genre=" + genre + ", releaseDate=" + releaseDate + ", price=" + price + ", copies=" + copies + '}';
    }
}
