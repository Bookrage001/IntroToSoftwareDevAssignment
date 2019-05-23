
package MovieStore.Model;

import MovieStore.LoggerTest;
import MovieStore.Model.dao.*;
import com.sun.glass.ui.Window.Level;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.*;
public class Items {

    private final static Logger logger = Logger.getLogger(LoggerTest.class.getName());

    private int id; // just a reference
    private int movieListId;
    private Movie movie;
    private int amount;
    private DBManager db;

    public Items() throws SQLException, ClassNotFoundException {
        DBConnector connector = new DBConnector();
        Connection conn = connector.openConnection();
        db = new DBManager(conn);
    }

    public Items(int id, int movieListId, Movie movie, int amount) {
        this.id = id;
        this.amount = amount;
        this.movie = movie;
        this.movieListId = movieListId;
        this.save();
    }

    public int getId() {
        return id;
    }

    public int getMovieListId() {
        return movieListId;
    }

    public void setMovieListId(int movieListId) {
        this.movieListId = movieListId;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    private void save() {
        // throws SQLException
        try {
            // if item has not been aded add
            if ("exists " != null) {
                db.addItem(this.movieListId, this.movie.getId(), this.amount);
            } else {
                // replace the item;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}