package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {
    String dbUrl = "jdbc:oracle:thin:@44.203.56.55:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void task() throws SQLException {




        /*
        How to INIT Variables
        --Mac --> OPT + Enter
        --Win --> Alt + Enter
         */

        //DriverManager class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute Queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        //ResultSet will store data after execution, It stores only data (There is no Table info
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME from EMPLOYEES");

        //first row
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));

        //second row
        rs.next();
        System.out.println(rs.getString(1) + " " + rs.getString(2));


        /*

       ResultSet.TYPE_SCROLL_INSENSITIVE ---> To do Flexible Navigation between rows
       ResultSet.CONCUR_READ_ONLY ----> You don't update anything from Database

         */

        // what if I want to get last data
        rs.last();
        System.out.println(rs.getString(1) + " " + rs.getString(2));



        System.out.println("---------GetRow---------------");

        //How many rows we have
        //  getRow() --> the current row number, 0 if there is no current row

        int rowNumber = rs.getRow();
        System.out.println(rs.getRow());
        System.out.println(rowNumber);


        System.out.println("--------ABSOLUTE----------");

        //jump to specified row
        //rs.absolute it takes (RowNumber)--: returns true if the cursor is moved to a position in this ResultSet object
        //returns false if the cursor is before the first row or after


        rs.absolute(10); // returns row info: David Berstein
        System.out.println(rs.getString(1) + " " + rs.getString(2));
        System.out.println(rs.getRow()); // returns row 10


        System.out.println("------------Previous-------------");

        rs.previous(); /* this method RETURNS; true if the cursor is now positioned on a valid row
                           RETURNS false, if the cursor is positioned before the first row */


        System.out.println(rs.getRow()); // returns row -> 9, Sarah bell
        System.out.println(rs.getString(1) + " " + rs.getString(2));


        System.out.println("---------Print all tables Dynamically-----------");
        /*
            POINTER LEFT OFF on Row 9 -> check Line 84!

            Since our pointer was lastly used, it was displaying row 9 information from our table, so when we try to print
            everything all information from our table, it starts displaying all info from row 9 until the end.
        */

        //Starts from row 10
        while (rs.next()){
            System.out.println(rs.getString(1) + " " + rs.getString(2));
        }



        rs.first(); //-> we use this method to mve pointer back to the first Row of our TABLE

        //starts from row 1
        while (rs.next()){
            System.out.println(rs.getString(1) + " " + rs.getString(2));
        }



        rs.close();
        statement.close();
        conn.close();

    }
    }
