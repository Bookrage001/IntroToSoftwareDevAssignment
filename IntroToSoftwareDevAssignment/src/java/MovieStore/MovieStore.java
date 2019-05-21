
package MovieStore;

import MovieStore.Model.dao.DB;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.activation.DataHandler;

public class MovieStore {

    /*
     * This is the Movie Store Used for initalisationa and running only
     */
    public static void main(String[] args) {
        try {
            DB.initialize();
        } catch(ClassNotFoundException e) {
            System.out.println("The JDBC driver not found - "+e.getMessage());
            return;
        }
        
        try {
            DB.getInstance().createDbIfNotExists();
        } catch(SQLException e) {
            e.printStackTrace();
            return;
        }
        
        Connection conn = null;
        try {
            conn = DB.getInstance().getConnection();
            
            for (DbTable table : DataHelper.tables) {
                boolean exists = table.isTableExists(conn);
                System.out.println(String.format("Check table '%s' exists - %b", table.getName(), exists));
                
                if(exists) {
                    table.clearTable(conn);
                } else {
                    table.createTable(conn);
                }
            }
            
            ResultSet rs = conn.getMetaData().getTables(null, null, "%", null);
            try {
                if(rs.first()) {
                    do {
                        String tName = rs.getString(3);
                        if(!DataHelper.isValidTable(tName)) {
                            DB.getInstance().dropTableByName(tName);
                        }
                    } while(rs.next());
                }
            } finally {
                rs.close();
}
    }
}
