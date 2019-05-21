/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package MovieStore.Model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Mark Galulu
 */
public abstract class DB {

    protected String URL = "jdbc:derby://localhost:1527/";
    protected String db = "MovieStore";
    protected String dbuser = "administrator";
    protected String dbpass = "admin";
    protected String driver = "org.apache.derby.jdbc.ClientDriver";
    protected Connection conn;

    private static DB instance;

    public static void initialize() throws ClassNotFoundException {
        if (instance == null) {
            instance = new DB();
        }
    }

    public static DB getInstance() {
        if (instance == null) {
            throw new IllegalStateException("The initialize() must be called first");
        }
        return instance;
    }

    private DB() throws ClassNotFoundException {
        Class.forName(driver);
    }

    private Connection connection;
    private int numOpened;

    public Connection getConnection() throws SQLException {
        if (connection == null) {
            connection = DriverManager.getConnection(URL + db, dbuser, dbpass);
            numOpened = 1;
        } else {
            numOpened++;
        }
        return connection;
    }

    public void releaseConnection() throws SQLException {
        if (numOpened > 1) {
            numOpened--;
        } else if (numOpened == 1) {
            connection.close();
            numOpened = 0;
        }
    }

    public void createDbIfNotExists() throws SQLException {
        Connection conn = null;
        Statement stmt = null;
        try {
            System.out.println("Check for the " + db + " database exists...");
            conn = DriverManager.getConnection(URL, dbuser, dbpass);
            ResultSet rs = conn.getMetaData().getCatalogs();
            boolean exists = false;
            if (rs.first()) {
                do {
                    String dbName = rs.getString(1);
                    if (db.equals(dbName)) {
                        exists = true;
                        break;
                    }
                } while (rs.next());
            }

            if (!exists) {
                System.out.println("The " + db + " database does not exists -> create one!");
                stmt = conn.createStatement();

                stmt.execute("CREATE DATABASE " + db);
                System.out.println("The " + db + " database has been successfully created");
            } else {
                System.out.println("The " + db + " database exists.");
            }

        } finally {
            if (stmt != null)
                stmt.close();
            if (conn != null)
                conn.close();
        }
    }

    public int dropTableByName(String tableName) throws SQLException {
        Connection conn = getConnection();
        Statement stmt = null;
        try {
            System.out.println("-------------------------------------------------------------");
            System.out.print(String.format("Deleting table '%s'...   ", tableName));
            String req = "DROP TABLE " + tableName + ";";
            System.out.print("'" + req + "'   ");
            stmt = conn.createStatement();
            int dropped = stmt.executeUpdate(req);
            System.out.println("OK");
            return dropped;
        } finally {
            if (stmt != null)
                stmt.close();
            releaseConnection();
        }
    }
}
