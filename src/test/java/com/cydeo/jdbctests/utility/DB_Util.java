package com.cydeo.jdbctests.utility;

import java.sql.*;

public class DB_Util {

//Declaring at class level so all methods can access

    private static Connection con;
    private static Statement stm;
    private static ResultSet rs;
    private static ResultSetMetaData rsmd;


    /**
     * Create Connection by jdbc url, and username, password provided
     * @param url jdbc for any database
     * @param username username for database
     * @param password password for database
     */


    public static void createConnection(String url, String username, String password){

        try{
            con = DriverManager.getConnection(url,username,password);
            System.out.println("CONNECTION SUCCESSFUL");
        }catch (Exception e){
            System.out.println("CONNECTION HAS FAILED!" + e.getMessage());
        }

    }

    /**
     * Create connection metyhod, just checking one connection successful or NOT
     */
    public static void createConnection(){
    String url = "jdbc:oracle:thin:@3.86.105.252 :1521:XE";
    String username ="hr";
    String password = "hr";

    createConnection(url,username,password);

 }

    /**
     * Run the SQL query provided and return ResultSet object
     * @param sql the query to run
     * @return ResultSet object that contains data
     */

    public static ResultSet runQuery(String sql){
        try{
            stm = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs = stm.executeQuery(sql); //Setting the value of ResultSet Object
            rsmd = rs.getMetaData(); // setting the value of ResultSetMMetaData for reuse
        }catch (Exception e){
            System.out.println("ERROR OCCURRED WHILE RUNNING QUERY " + e.getMessage());
        }
        return rs;
    }

    /**
     * Destroy method to clean up all the resources after being used
     */
    public static void destroy(){
        //We have to check if we have the valid Object first before closing the resource
        //Because we CANNOT take action on an OBJECT that does NOT exist

        try{
            if (rs!=null) rs.close();
            if (stm!=null) stm.close();
            if (con!=null) con.close();
        }catch (Exception e){
            System.out.println("ERROR OCCURRED WHILE CLOSING RESOURCES" + e.getMessage());
        }

    }

}
