package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;
import java.io.IOException;

@WebServlet("/FunnelRegistered")
public class FunnelRegistered extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public FunnelRegistered() {super();}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        getServletContext().getRequestDispatcher("/funnelRegistered.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/funnelRegistered.jsp");
    }
}
