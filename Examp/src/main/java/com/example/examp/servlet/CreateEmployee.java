package com.example.examp.servlet;

import com.example.examp.dao.EmployeeDao;
import com.example.examp.entity.EmployeeEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/create")
public class CreateEmployee extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("fullName");
        Date birthday = Date.valueOf(request.getParameter("birthday"));
        String address = request.getParameter("address");
        String position = request.getParameter("position");
        String department = request.getParameter("department");

        EmployeeDao employeeDao = new EmployeeDao();
        EmployeeEntity employee = new EmployeeEntity();
        employee.setFullName(fullName);
        employee.setBirthday(birthday);
        employee.setAddress(new TextArea(address));
        employee.setPosition(position);
        employee.setPosition(department);

        employeeDao.insertEmployee(employee);

        response.sendRedirect("/index.jsp");
    }
}
