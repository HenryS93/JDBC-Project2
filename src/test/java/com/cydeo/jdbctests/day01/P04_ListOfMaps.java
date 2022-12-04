package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P04_ListOfMaps {

    String dbUrl= "jdbc:oracle:thin:@44.203.56.55:1521:XE";
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



        Map<String, Object> rowMap1 = new HashMap<>();

        System.out.println("Row Map1");
        rowMap1.put("first_name","Steven");
        rowMap1.put("last_name","King");
        rowMap1.put("salary",24000);

        System.out.println(rowMap1);


        Map<String, Object> rowMap2 = new HashMap<>();

        System.out.println("Row Map2");
        rowMap2.put("first_name","Neena");
        rowMap2.put("last_name","Kochar");
        rowMap2.put("salary",17000);

        System.out.println(rowMap2);

        System.out.println("---------------------------------------------");

        //Assume that we have 107 data MAPS
        //WE have to create an ArrayList and put all maps into List


        List<Map<String,Object>> dataList = new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);


    //give me the last name of Steven
        System.out.println(dataList.get(0).get("last_name"));









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
}
