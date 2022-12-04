package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDataTest {

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
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        //ResultSet will store data after execution, It stores only data (There is no Table info
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES");


        /*
        DataBaseMetaData -> It is information about database itself
         */
        DatabaseMetaData dbMetaData = conn.getMetaData();


        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDriverVersion());


        //ResultSetMetaData -> it provides information about table side (columnNames, columnCount)
        ResultSetMetaData rsmd = rs.getMetaData();

        //How many columns we have?
        int columnCount =rsmd.getColumnCount();
        System.out.println(columnCount);



        //get me column name from index 5
        System.out.println(rsmd.getColumnName(2));
       //--->> this method will return the provided columnIndex name

        System.out.println("-----Column Names-------");

        //Print all column names Dynamically
        for (int i = 1; i <= columnCount; i++){
            System.out.println(rsmd.getColumnName(i));
        }


        /*
        HOW TO GET DATA DYNAMICALLY FOR QUERIES?

        ResultSet -> it holds table data
                rs.next -> iterates into the next Row

                rs.getString(index) -> to get data from specified column

                rs.getString(columnName)



        ResultSetMetaData -> it holds table info (columnNames - ColumnCount)

                rsmd.getColumnCount() --> will give how many column we have

                rsmd.getColumnName() --> it will give specified columnName


         */


        System.out.println("------PRINT ALL DATA DYNAMICALLY--------");
        //  PRINT ALL DATA DYNAMICALLY


        while (rs.next()){
            // ITERATE THROUGH EACH COLUMN
           for (int i = 1; i <= rsmd.getColumnCount(); i++ ){
               System.out.print(rsmd.getColumnName(i) + " - " + rs.getString(i) + " ");
           }
            System.out.println();
        }




        rs.close();
        statement.close();
        conn.close();
    }

}
