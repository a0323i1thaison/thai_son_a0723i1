package com.example.demo_exam.reponsitory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BaseReponsitory {
    private static final String JDBC_URl = "jdbc:mysql://localhost:3306/demo3";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234567";

    public BaseReponsitory() {
    }

    public static Connection getConnection(){
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(JDBC_URl,USERNAME,PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

}
