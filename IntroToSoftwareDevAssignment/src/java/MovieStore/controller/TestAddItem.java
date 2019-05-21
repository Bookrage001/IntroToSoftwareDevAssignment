/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.controller;

import MovieStore.Model.Items;
import MovieStore.Model.Movie;
import MovieStore.Model.dao.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Caleb Ardern
 */
public class TestAddItem {

    public static void main(String[] args) {
        Movie movie = new Movie();
        movie.setId(50);
        Items item = new Items();
        item.setMovie(movie);
        item.setAmount(1);
        item.setMovieListId(7);
        item.save();

    }
}
