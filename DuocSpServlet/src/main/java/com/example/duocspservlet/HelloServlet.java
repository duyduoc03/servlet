package com.example.duocspservlet;

import java.io.*;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

//@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        //truyen vao parameter
        // getParameter: http://localhost:8080/hello-servlet?name=NguyenXuanThao&age=20
        String name = request.getParameter("name");
        String age = request.getParameter("age");

        //check method
        System.out.println(request.getMethod());

        Enumeration<String> header = request.getHeaderNames();
        while(header.hasMoreElements()){
            String key = header.nextElement();
            String value = request.getHeader(key);
            System.out.println("key: " + key + " value: " + value);
        }

        //set value sau khi redirect /hello-servlet
        name = "T2108E";
        age = "22";

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        /*out.println("<h1>" + message + "</h1>");*/
        out.println("<h1>" + name + "</h1>");   //hien thi parameter
        out.println("<h1>" + age + "</h1>");   //hien thi parameter
        out.println("</body></html>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("image/jpg");   //image

//        System.out.println("do Post helloServlet");
//        String name = (String)req.getAttribute("name");
//        int age = (int)req.getAttribute("age");
//        String address = (String)req.getAttribute("address");
//
//        System.out.println("name: " + name + ", age: " + age + ", address: " + address);

        ServletOutputStream servletOutputStream = resp.getOutputStream();
        BufferedInputStream inputStream =
                new BufferedInputStream(new FileInputStream("D:\\a.jpg"));

        BufferedOutputStream outputStream =
                new BufferedOutputStream(servletOutputStream);

        int ch = 0;
        while ((ch = inputStream.read()) != -1){
            outputStream.write(ch);
        }

        outputStream.close();
        inputStream.close();
    }

    public void destroy() {
    }
}