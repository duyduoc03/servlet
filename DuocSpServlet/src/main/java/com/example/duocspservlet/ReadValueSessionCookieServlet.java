package com.example.duocspservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;

@WebServlet("/readValue")
public class ReadValueSessionCookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            resp.setContentType("text/html");
            Writer writer = resp.getWriter();
            Cookie[] cookies = req.getCookies();
            for (Cookie c : cookies) {
                writer.write("cookName: "+c.getName()+", cookValue: "+c.getValue());
            }
        } catch (Exception ex){
            log("error"+ ex.getMessage());
        }
    }
}
