/*

To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
 */
package MovieStore.controller;

import MovieStore.Model.dao.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.*;

/**
 *
 *
 * @author Mark Galulu
 */
public class TestRegistration {

    private static Scanner in = new Scanner(System.in);

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        DBConnector connector = new DBConnector();
        Connection conn = connector.openConnection();
        DBManager db = new DBManager(conn);
        Validator vd = new Validator();
        
        
        char choice;
        
        System.out.println("Welcome to the Registration tester:");
        System.out.println("1. add a user.");
        System.out.println("2. view user details.");
        System.out.println("3. Cancel a user.");
        System.out.println("4. update a user.");
        
        
        choice = in.nextLine().charAt(0);

        switch (choice) {
            case '1':
                System.out.print("Username: ");
                String username = in.nextLine();

                System.out.print("Password: ");
                String password = in.nextLine();

                System.out.print("email: ");
                String email = in.nextLine();

                System.out.print("firstname: ");
                String firstname = in.nextLine();

                System.out.print("lastname: ");
                String lastname = in.nextLine();

                System.out.print("address");
                String address = in.nextLine();

                System.out.print("suburb: ");
                String suburb = in.nextLine();

                System.out.print("postcode: ");
                String postcode = in.nextLine();

                db.addUser(username, password, email, firstname, lastname, address, postcode, suburb);
                System.out.println("Movie is successfully added to the database");

                connector.closeConnection();

                break;
            case '2':
                String nametolookfor;
                System.out.print("Enter the user to check details for");
                nametolookfor = in.nextLine();

                String[] details = new String[5];

                details = db.getDetails(nametolookfor);
                System.out.println(nametolookfor);
                System.out.println(details[0]);
                System.out.println(details[1]);
                System.out.println(details[2]);
                System.out.println(details[3]);
                System.out.println(details[4]);
                System.out.println(details[5]);
                connector.closeConnection();
                break;
            case '3':
                String nametocheckfor;
                System.out.println("Enter the name of the user");
                nametocheckfor = in.nextLine();
                db.deleteUser(nametocheckfor);
                System.out.println("user status successfully successfully set to cancelled");
                connector.closeConnection();
                break;
            case '4':
                String nametocheckforchanging;
                System.out.println("Enter the name of the user");
                nametocheckforchanging = in.nextLine();

                String[] details2 = new String[5];
                details2 = db.getDetails(nametocheckforchanging);
                System.out.println("Old Details: ");
                System.out.println(nametocheckforchanging);
                System.out.println(details2[0]);
                System.out.println(details2[1]);
                System.out.println(details2[2]);
                System.out.println(details2[3]);
                System.out.println(details2[4]);
                System.out.println(details2[5]);

                System.out.println("Enter the new Details:");
                System.out.print("email: ");
                String emailtochange = in.nextLine();

                System.out.print("address");
                String addresstochange = in.nextLine();

                System.out.print("suburb: ");
                String suburbtochange = in.nextLine();

                System.out.print("postcode: ");
                String postcodetochange = in.nextLine();

                db.updateUser(nametocheckforchanging, emailtochange, addresstochange, postcodetochange, suburbtochange);

                details2 = db.getDetails(nametocheckforchanging);

                System.out.println("new Details: ");
                System.out.println(nametocheckforchanging);
                System.out.println(details2[0]);
                System.out.println(details2[1]);
                System.out.println(details2[2]);
                System.out.println(details2[3]);
                System.out.println(details2[4]);
                System.out.println(details2[5]);

                System.out.println("user details successfully changed");
                connector.closeConnection();
                break;

            case '5':
                String emailtovalidate = "";
                while (!vd.validateEmail(emailtovalidate)) {
                    System.out.println("Email: ");
                    emailtovalidate = in.nextLine();

                    if (vd.validateEmail(emailtovalidate)) {
                        System.out.println("email is valid");
                        connector.closeConnection();
                    } else {
                        System.out.println("please enter a valid email");
                    }

                }

                break;
        }
    }
}
