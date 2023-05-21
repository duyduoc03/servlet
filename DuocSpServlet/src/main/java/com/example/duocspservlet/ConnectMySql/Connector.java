package com.example.duocspservlet.ConnectMySql;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet(name = "sql", value = "/connect-data")
public class Connector extends HttpServlet {
    private Connection connection;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            connection = getConnection();
            closeConnection();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    private synchronized Connection getConnection() throws Exception {
        if (connection == null) {
            String url = "jdbc:mysql://localhost:3306/test";
            String user = "root";
            String pass = "12345678";

            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
            System.out.println("connect success");
        }
        return connection;
    }

    private synchronized void closeConnection() {
        try {
            if (connection != null) {
                connection.close();
                connection = null;
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }
}