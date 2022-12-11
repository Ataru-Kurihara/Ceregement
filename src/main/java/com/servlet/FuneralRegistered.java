package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FunnelRegistered")
public class FuneralRegistered extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public FuneralRegistered() {super();}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        String deceasedFamilyName = "", deceasedFirstName = "", deceasedFullName = "";
        deceasedFamilyName = request.getParameter("deceasedFamilyName");
        deceasedFirstName = request.getParameter("deceasedFirstName");
        deceasedFullName = deceasedFamilyName + " " + deceasedFirstName;
        request.setAttribute("deceasedFullName", deceasedFullName);

        getServletContext().getRequestDispatcher("/funnelRegistered.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/funnelRegistered.jsp").forward(request, response);
    }
}
