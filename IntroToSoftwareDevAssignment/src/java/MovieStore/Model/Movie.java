/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model;

import java.io.Serializable;
import java.util.ArrayList;
/**
 *
 * @author Mark Galulu
 */
public class Movie implements Serializable{

    private int Id;
    private String title;
    private String genre;
    private String releaseDate;
    private String director;
    private String synopsis;
    private double price;
    private int copies;

    private ArrayList<Movie> list = new ArrayList<Movie>();
    public Movie() {
    }


    public Movie(int Id, String title, String genre, String releaseDate, String director, String synopsis, double price, int copies) {
        this.Id = Id;
        this.title = title;
        this.genre = genre;
        this.releaseDate = releaseDate;
        this.director = director;
        this.synopsis = synopsis;
        this.price = price;
        this.copies = copies;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
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

    public String getSynopsis() {
        return synopsis;
    }

    public void setSynopsis(String synopsis) {
        this.synopsis = synopsis;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCopies() {
        return copies;
    }

    public void setCopies(int copies) {
        this.copies = copies;
    }

    public ArrayList<Movie> getList() {
        return list;
    }

    public void setList(ArrayList<Movie> list) {
        this.list = list;
    }

}
