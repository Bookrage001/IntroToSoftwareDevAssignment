/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MovieStore.Model;

import java.math.BigInteger;
import java.sql.Timestamp;

/**
 *
 * @author Hayley
 */
public class UserActivity {

    private int logId;
    private String username;
    private String activity;
    private String status;

    public UserActivity() {
        super();
    }

    public UserActivity(int logId, String username, String status, String activity) {
        this.logId = logId;
        this.username = username;
        this.activity = activity;
        this.status = status;
    }

    public int getLogId() {
        return logId;
    }

    public void setLogId(int logId) {
        this.logId = logId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    
}
