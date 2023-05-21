package com.example.duocspservlet;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class loginServlet extends HttpServlet {
    private static final String user = "admin";
    private static final String pass = "admin";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String userName = req.getParameter("user");
            String password = req.getParameter("pass");
            if (userName.equals(user) && password.equals(pass)){
                HttpSession session = req.getSession();
                session.setAttribute("user",userName);
                resp.sendRedirect("/hello-servlet");
            }
        } catch (Exception ex) {
            log(ex.getMessage());
        }
    }
}
