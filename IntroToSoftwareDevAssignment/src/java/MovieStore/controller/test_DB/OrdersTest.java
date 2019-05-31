/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.controller.test_DB;

import MovieStore.Model.dao.*;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Caleb Ardern
 */
public class OrdersTest {

    private static Scanner in = new Scanner(System.in);

    /*
     *
     * @Param BigInteger orderId
     * 
     * @Param String username;
     * 
     * @Param BigInteger movieId;
     * 
     * @Paramint amount
     * 
     * @Param String status
     * 
     */
    public static void main(String[] args) {
        try {
            DBConnector connector = new DBConnector();
            Connection conn = connector.openConnection();
            DBManager db = new DBManager(conn);

            System.out.print("OrderID: ");
            int oldOrderID = in.nextInt();
            BigInteger orderID = BigInteger.valueOf(oldOrderID);

            System.out.print("MovieId: ");
            int oldMovieId = in.nextInt();
            BigInteger movieId = BigInteger.valueOf(oldMovieId);

            System.out.print("Username: ");
            String username = in.nextLine();

            System.out.print("Amount: ");
            int amount = in.nextInt();

            System.out.print("status: ");
            String status = in.nextLine();

            db.addOrder(orderID, username, movieId, amount, status);
            System.out.println("Movie is successfully added to the database");

            connector.closeConnection();

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrdersTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
