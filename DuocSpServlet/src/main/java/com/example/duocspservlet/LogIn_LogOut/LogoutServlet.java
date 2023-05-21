package com.example.duocspservlet.LogIn_LogOut;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false); // lấy phiên hiện tại nếu có
        if (session != null) {
            session.invalidate(); // hủy phiên hiện tại
        }
        resp.sendRedirect("login.jsp"); // chuyển hướng đến trang chủ
    }
}
