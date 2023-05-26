package com.example.jpademo.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.jpademo.dao.UserDao;
import com.example.jpademo.entity.UserEntity;

@WebServlet("/createUser")
public class CreateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String address = request.getParameter("address");

        UserDao userDao = new UserDao();
        UserEntity user = new UserEntity();
        user.setName(name);
        user.setAddress(address);
        user.setAge(age);

        userDao.insertUser(user);

        response.sendRedirect("/User/index.jsp");
    }
}
