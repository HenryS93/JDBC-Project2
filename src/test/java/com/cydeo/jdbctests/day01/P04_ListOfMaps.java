package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P04_ListOfMaps {

    String dbUrl= "jdbc:oracle:thin:@3.86.105.252 :1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";



    @Test
    public void task1() throws SQLException {
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

        ResultSetMetaData rsmd = rs.getMetaData();

        Map<String, Object> rowMap1 = new HashMap<>();

        rs.next();

        System.out.println("Row Map1");
        rowMap1.put(rsmd.getColumnName(1),rs.getString(1) );
        rowMap1.put(rsmd.getColumnName(2),rs.getString(2) );
        rowMap1.put(rsmd.getColumnName(3), rs.getString(3));

        System.out.println(rowMap1);


        rs.next();
        Map<String, Object> rowMap2 = new HashMap<>();

        System.out.println("Row Map2");
        rowMap2.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3), rs.getString(3));

        System.out.println(rowMap2);

        System.out.println("---------------------------------------------");

        //Assume that we have 107 data MAPS
        //WE have to create an ArrayList and put all maps into List


        List<Map<String,Object>> dataList = new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);


    //give me the last name of Steven
        System.out.println(dataList.get(0).get("last_name")); // -> if you know the last name
        System.out.println(dataList.get(0).get(rsmd.getColumnName(2))); // if you don't know the last name









        rs.close();
        statement.close();
        conn.close();

}

    @Test
    public void task2() throws SQLException {
        //DriverManager class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute Queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        //ResultSet will store data after execution, It stores only data (There is no Table info
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES");



        // ResultSet will store data after Execution. It Stores only data (There is no table info)

        ResultSetMetaData rsmd = rs.getMetaData(); //--> this method allows us to get table data
        rs.next(); //-> jumps to the next Row
        Map<String,Object> rowMap1 = new HashMap<>();



        System.out.println("Row Map1");
        rowMap1.put(rsmd.getColumnName(1),rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2),rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3),rs.getInt(3));


        System.out.println(rowMap1);





        rs.next(); //-> jumps to the next Row
        Map<String,Object> rowMap2 = new HashMap<>();



        System.out.println("Row Map2");
        rowMap2.put(rsmd.getColumnName(1),rs.getString(1));
        rowMap2.put(rsmd.getColumnName(2),rs.getString(2));
        rowMap2.put(rsmd.getColumnName(3),rs.getInt(3));


        System.out.println(rowMap2);

        rs.close();
        statement.close();
        conn.close();
    }
    @Test
    public void task3() throws SQLException {

        //DriverManager class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute Queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        //ResultSet will store data after execution, It stores only data (There is no Table info
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES");

        ResultSetMetaData rsmd = rs.getMetaData();

        List<Map<String,Object>> dataList = new ArrayList<>();



        while (rs.next()){
            Map<String,Object> rowMap = new HashMap<>();

            for (int i = 1; i <= rsmd.getColumnCount(); i++){

                rowMap.put(rsmd.getColumnName(i),rs.getString(i));

            }

                dataList.add(rowMap);


        }

        System.out.println("---------All Data---------------");
        for (Map<String,Object> eachRowMap : dataList){
            System.out.println(eachRowMap);
        }






        rs.close();
        statement.close();
        conn.close();
    }

}
