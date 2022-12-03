package com.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@WebServlet("/PassRegister")
public class PassRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public PassRegister() {super();}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        getServletContext().getRequestDispatcher("jsp/passRegister.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("jsp/passRegister.jsp");
    }
}
