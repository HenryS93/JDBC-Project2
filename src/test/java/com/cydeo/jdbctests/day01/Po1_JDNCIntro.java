package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import javax.management.Query;
import java.sql.*;

public class Po1_JDNCIntro {

    /*
    Mac --> COD + N
    WIN --> CTRL + N
     */


    @Test
    public void task() throws SQLException {

        String dbUrl = "jdbc:oracle:thin:@44.203.56.55:1521:XE";
        String dbUsername="hr";
        String dbPassword="hr";


        /*
        How to INIT Variables
        --Mac --> OPT + Enter
        --Win --> Alt + Enter
         */

        //DriverManager class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl,dbUsername,dbPassword);

        // It helps us to execute Queries
        Statement statement = conn.createStatement();

        //ResultSet will store data after execution, It stores only data (There is no Table info
        ResultSet rs = statement.executeQuery("select * from DEPARTMENTS where manager_id is not null");


        //10-administrtion-200-1700


        while(rs.next()){

            System.out.println(rs.getString(1) + "-" + rs.getString(2) + "-" + rs.getString(3) + "-" + rs.getString(4));

        }


        /*
         can we run another Query in the same connection?
         YES
         */

     // get me all query results dynamically

        rs = statement.executeQuery("select * from REGIONS ");

        while (rs.next()){

//            System.out.println(rs.getString(1) + "-" + rs.getString(2));
            System.out.println(rs.getString("region_id") + "-" + rs.getString("region_name"));

        }














        //After getting data we will always close connection
        //close connections
        rs.close();
        statement.close();
        conn.close();



    }



}
