package com.servlet;

import com.model.hall.HallDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/FunnelRegister")
public class FuneralRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public FuneralRegister() {super();}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String deceasedFamilyName = "", deceasedFirstName = "", deceasedFullName = "";
        String deathYear = "", deathMonth = "", deathDay = "", deathData = "";
        String funnelPlace = "", funnelPlaceAddress = "";
        String funnelYear = "", funnelMonth = "", funnelDay = "", funnelHour = "", funnelMinute = "",funnelTime = "";
        String bereavementFamilyName = "", bereavementFirstName = "", bereavementFullName = "";
        String postalcode = "", address = "";
        String phonenumber = "";        deceasedFirstName = request.getParameter("deceasedFirstName");
        deceasedFamilyName = request.getParameter("deceasedFamilyName");
        deceasedFirstName = request.getParameter("deceasedFirstName");
        deceasedFullName = deceasedFamilyName + " " + deceasedFirstName;
        deathYear = request.getParameter("deathYear");
        deathMonth = request.getParameter("deathMonth");
        deathDay = request.getParameter("deathDay");
        deathData = deathYear+deathMonth+deathDay;
        funnelPlace = request.getParameter("funnelPlace");
        funnelPlaceAddress = request.getParameter("funnelPlaceAddress");
        funnelYear = request.getParameter("funnelYear");
        funnelMonth = request.getParameter("funnelMonth");
        funnelDay = request.getParameter("funnelDay");
        funnelHour = request.getParameter("funnelHour");
        funnelMinute = request.getParameter("funnelMinute");
        funnelTime = funnelYear+funnelMonth+funnelDay+funnelHour+funnelMinute;
        bereavementFamilyName = request.getParameter("BereavementFamilyName");
        bereavementFirstName = request.getParameter("BereavementFirstName");
        postalcode = request.getParameter("postalCode");
        address = request.getParameter("address");
        phonenumber = request.getParameter("phoneNumber");

        try {
            HallDAO.addDatas("1", deceasedFullName, deathData, funnelPlaceAddress, funnelPlace, funnelDay);
        } catch (Exception e) {
            e.printStackTrace();
        }
        getServletContext().getRequestDispatcher("/funnelRegister.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        getServletContext().getRequestDispatcher("/funnelRegister.jsp").forward(request,response);
    }
}
