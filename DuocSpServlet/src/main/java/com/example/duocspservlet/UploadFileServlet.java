package com.example.duocspservlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;

@WebServlet(name="uploadFile", value = "/uploadFile")

public class UploadFileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Writer writer = resp.getWriter();
        writer.write("<form action='/uploadFile' method='post' enctype='multipart/form-data'>");
        writer.write("name: <input type='file' name='file' multiple >");
        writer.write("<input type='submit' value='submit'>");
        writer.write("</form>");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        Writer writer = resp.getWriter();
        try {
            String outputPath =  getServletContext().getRealPath("")+ File.separator+"fileUpload";
            File file = new File(outputPath);
            if (!file.exists()) {
                file.mkdir();
            }
            Collection<Part> parts = req.getParts();
            for (Part p : parts) {
                String fileName = p.getSubmittedFileName();
                p.write(outputPath + File.separator+fileName);
            }
            writer.write("upload file success");
        }
        catch (Exception ex){
            log("error upload file "+ ex.getMessage());
        }

    }
}
