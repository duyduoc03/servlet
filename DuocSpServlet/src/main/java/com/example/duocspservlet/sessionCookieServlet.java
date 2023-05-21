package com.example.duocspservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.Writer;
import java.net.URLEncoder;

@WebServlet("/sessionCookie")
public class sessionCookieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            resp.setContentType("text/html");
            Writer writer = resp.getWriter();
            HttpSession session = req.getSession();
            session.invalidate();
            session = req.getSession();
            if (session.isNew()) {
                log("this session is new");
                session.setAttribute("name","T2108E");
            }
            else {
                session.setAttribute("name","Fpt Aptech");
            }
            session.setMaxInactiveInterval(20);
            Cookie cookie = new Cookie("name", URLEncoder.encode("Ha Noi","UTF-8"));
            cookie.setMaxAge(20);
            Cookie cookie1 = new Cookie("name", "Fpt");
            cookie1.setMaxAge(20);
            resp.addCookie(cookie);
            resp.addCookie(cookie1);
            writer.write("<a href='/readValue'>Read</a>");
        } catch (Exception ex){
            log("error"+ ex.getMessage());
        }

    }
}
