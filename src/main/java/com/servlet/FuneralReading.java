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

@WebServlet("/FunnelReading")
public class FuneralReading extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public FuneralReading() {super();}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/funnelReading.jsp").forward(request, response);
        HttpSession session = request.getSession();
        System.out.println(HallDAO.getData((String) session.getAttribute("id")));
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/funnelReading.jsp").forward(request, response);
    }
}
