package com.example.jpademo.servlet;

import com.example.jpademo.dao.UserDao;
import com.example.jpademo.entity.UserEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete")
public class DeleteUserServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        UserDao userDao = new UserDao();
        UserEntity user = userDao.getUserById(id);
        userDao.deleteUser(user);

        response.sendRedirect("/User/index.jsp");
    }
}