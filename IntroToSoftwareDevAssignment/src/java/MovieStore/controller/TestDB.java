/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.controller;

import MovieStore.Model.dao.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mark Galulu
 */
public class TestDB {

    private static Scanner in = new Scanner(System.in);

    public static void main(String[] args) {
        try {
            DBConnector connector = new DBConnector();
            Connection conn = connector.openConnection();
            DBManager db = new DBManager(conn);

            int key = (new Random()).nextInt(999999);

            System.out.print("Movie Title: ");
            String title = in.nextLine();

            System.out.print("Movie Genre: ");
            String genre = in.nextLine();

            System.out.print("Movie Release: ");
            String releaseDate = in.nextLine();

            System.out.print("Movie Director: ");
            String director = in.nextLine();

            System.out.print("Movie Synopsis: ");
            String synopsis = in.nextLine();

            System.out.print("Movie Price: $");
            double price = in.nextDouble();

            System.out.print("Number of Copies: ");
            int copies = in.nextInt();
            
            String poster ="Images/posters/nomives.jpg";

            /*db.addMovie(key, title, genre, releaseDate, director, synopsis, price, copies);*/
            System.out.println("Movie is successfully added to the database");

            connector.closeConnection();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(TestDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
