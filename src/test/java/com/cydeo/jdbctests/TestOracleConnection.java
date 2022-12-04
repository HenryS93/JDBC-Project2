package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@44.203.56.55:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";


        /*
        How to INIT Variables
        --Mac --> OPT + Enter
        --Win --> Alt + Enter
         */

        //DriverManager class getConnection method will help to connect database
        Connection conn =DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        // It helps us to execute Queries
        Statement statement = conn.createStatement();

        //ResultSet will store data after execution, It stores only data (There is no Table info
        ResultSet rs = statement.executeQuery("select * from REGIONS");

        /*
        How to run Query from java file
        -Click over Query (don't choose anywhere)
            --Mac --> Command + ENTER
            --Windows --> CTRL +ENTER

            -Choose Session
         */

        //GETTING DATA
        //next() --> Moves the cursor forward one row from its current position
        rs.next();

        //Pointer shows the first row

        //how to get data

        //rs.getInt(index);  --> returns integer. Index start from 1 into SQL, it refers column position
        System.out.println(rs.getInt(1)); //1

        //String -> it returns String
        System.out.println(rs.getString(1)); //1

        //rs.getInt(Column name)
        System.out.println(rs.getInt("REGION_id"));
        System.out.println(rs.getString("REGION_ID"));


        //Get me Europe
        System.out.println(rs.getString(2)); //This will get me the first selection from column 2
        System.out.println(rs.getString("region_name")); // gets String from column 2


        rs.next(); //-> we use this to tell the pointer to jump onto the next row
        //2nd Row. Get me 2-Americas

        System.out.println(rs.getString(1)+" - " + rs.getString(2));
        System.out.println(rs.getString("region_id")+ " - " + rs.getString("region_name"));

        rs.next(); // moves pointer onto the next one

        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        System.out.println(rs.getString("region_id") + " - " + rs.getString("region_name"));


        rs.next();

        // 4th Row
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        System.out.println(rs.getString("region_id") + " - " + rs.getString("region_name"));


//        // What if we have 100 rows?
//         while(rs.next()){
//             System.out.println("--------------------------------");
//             System.out.println(rs.getString(1) + " - " + rs.getString(2));
//
//         }




        //After getting data we will always close connection
        //close connections
        rs.close();
        statement.close();
        conn.close();

    }


}
