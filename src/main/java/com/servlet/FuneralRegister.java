package com.servlet;

import com.model.hall.Hall;
import com.model.hall.HallDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/FunnelRegister")
public class FuneralRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public FuneralRegister() {super();}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/funnelRegister.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/funnelRegister.jsp").forward(request,response);
    }
}
