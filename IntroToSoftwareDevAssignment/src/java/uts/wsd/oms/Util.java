package uts.wsd.oms;

import java.util.*;

/**
 * Utility class for generating order IDs
 */
public class Util {

    private static int nextOrderID = 0;
    private static ArrayList<Integer> usedIDs = new ArrayList<Integer>();

    /**
     * Generate an order ID
     * @return The generated ID
     */
    public static int generateOrderID() {
        int temp = nextOrderID;
        generateNextID();
        return temp;
    }

    /**
     * Initilise the list of used IDs and generate the next ID
     * @param history
     */
    public static void initOrderID(History history) {
        if(history != null && history.getOrders() != null)
            for (Order order : history.getOrders())
                usedIDs.add(order.getOrderID());
        generateNextID();
    }
    
    /**
     * Generate the next order ID
     */
    private static void generateNextID(){
        int id;
        Random rand = new Random();
        int min = 100, max = 999;
        do{
            id = rand.nextInt((max - min) + 1) + min;
        }while(usedIDs.contains(id) && usedIDs.size() < (max-min));
        usedIDs.add(id);
        nextOrderID = id;
    }
    
    /**
     * Remove and ID from the used list
     * @param id
     */
    public static void removeOrderID(int id){
        usedIDs.remove((Integer)id);
    }
}
