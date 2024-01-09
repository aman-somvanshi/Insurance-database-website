package com.pbl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AuthenticationService {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/project";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "aman1306";

    public boolean authenticateUser(String username, String password) throws Exception{
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
            try (PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?")) {
                statement.setString(1, username);
                statement.setString(2, password);
                try (ResultSet resultSet = statement.executeQuery()) {
                    // If the result set has at least one row, the user is authenticated
                    return resultSet.next();
                }
            }
           
        } catch (SQLException e) {
            e.printStackTrace();
            // Log or handle exceptions as needed
        }

        return false;
    }
}

