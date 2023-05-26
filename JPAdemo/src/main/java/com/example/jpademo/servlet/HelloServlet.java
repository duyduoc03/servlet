package com.example.jpademo.servlet;

import com.example.jpademo.dao.UserDao;
import com.example.jpademo.entity.UserEntity;

import java.io.*;
import java.util.List;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;
    UserDao userDao = new UserDao();

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        //insert
//        UserEntity user = new UserEntity(3,"T2108E",20,"Hanoi");
//        userDao.insertUser(user);
//        out.println("create user success");


    }

    public void destroy() {
    }
}