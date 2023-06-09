package com.example.jpademo.servlet;

import com.example.jpademo.dao.UserDao;
import com.example.jpademo.entity.UserEntity;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

@WebServlet("/userServlet")

public class UserServlet extends HttpServlet {
    UserDao userDao = new UserDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<UserEntity> listUser = userDao.getAllUsers();
        req.setAttribute("listUser", listUser);
        req.getRequestDispatcher("UserTest/listUser.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            int age = Integer.parseInt(req.getParameter("age"));
            String address = req.getParameter("address");

            String userId = req.getParameter("id");
            if (userId != null) {
                int id = Integer.parseInt(userId);
                userDao.updateUser(new UserEntity(id, name, age, address));
            } else {
                userDao.insertUser(new UserEntity(name, age, address));
            }

            List<UserEntity> listUser = userDao.getAllUsers();
            req.setAttribute("listUser", listUser);
            req.getRequestDispatcher("UserTest/listUser.jsp").forward(req,resp);
        } catch (Exception ex){
            log(ex.getMessage());
        }
    }
}