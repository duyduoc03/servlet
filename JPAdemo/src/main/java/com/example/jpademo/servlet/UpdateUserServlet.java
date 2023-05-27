package com.example.jpademo.servlet;

import com.example.jpademo.dao.UserDao;
import com.example.jpademo.entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateUserServlet", value = "/update")
public class UpdateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String address = request.getParameter("address");

        UserDao userDao = new UserDao();
        UserEntity user = userDao.getUserById(id);
        user.setName(name);
        user.setAge(age);
        user.setAddress(address);
        userDao.updateUser(user);

        response.sendRedirect("/User/index.jsp");
    }
}