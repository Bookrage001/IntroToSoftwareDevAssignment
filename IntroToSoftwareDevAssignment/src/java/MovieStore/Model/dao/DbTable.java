/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Caleb
 */
public class DbTable {

    private String tableName;
    private String tableTemplate;
    private String priKey;

    public DbTable(String tableName, String tableTemplate, String priKey) {
        this.tableName = tableName;
        this.tableTemplate = tableTemplate;
        this.priKey = priKey;
    }

    public String getName() {
        return tableName;
    }

    public boolean isTableExists(Connection conn) throws SQLException {
        ResultSet rs = conn.getMetaData().getTables(null, null, "%", null);
        try {
            if (rs.first()) {
                do {
                    if (rs.getString(3).equals(tableName)) {
                        return true;
                    }
                } while (rs.next());
            }
            return false;
        } finally {
            rs.close();
        }
    }

    public int clearTable(Connection conn) throws SQLException {
        Statement stmt = conn.createStatement();
        try {
            System.out.print(String.format("Clearing table '%S'... ", tableName));
            int deleted = stmt.executeUpdate(String.format("DELETE FROM %s", this.tableName));
            System.out.println("Deleted items - " + deleted);
            return deleted;
        } finally {
            if (stmt != null)
                stmt.close();
        }
    }

    public void createTable(Connection conn) throws SQLException {
        Statement stmt = conn.createStatement();
        try {
            System.out.print(String.format("Creating table '%S'... ", tableName));
            stmt.executeUpdate(
                    String.format("CREATE TABLE %s (%s, PRIMARY KEY(%s));", tableName, tableTemplate, priKey));
            System.out.println("OK");
        } finally {
            if (stmt != null)
                stmt.close();
        }
    }

}