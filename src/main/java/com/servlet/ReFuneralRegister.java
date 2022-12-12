package com.servlet;

import com.model.hall.Hall;
import com.model.hall.HallDAO;
import com.model.organizer.Organizer;
import com.model.organizer.OrganizerDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/ReFunnelRegister")
public class ReFuneralRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public ReFuneralRegister() {super();}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String deceasedFamilyName = "", deceasedFirstName = "", deceasedFullName = "";
        String deathYear = "", deathMonth = "", deathDay = "", deathDate = "";
        String funnelPlace = "", funnelPlaceAddress = "";
        String funnelYear = "", funnelMonth = "", funnelDay = "", funnelHour = "", funnelMinute = "",funnelTime = "";
        String bereavementFamilyName = "", bereavementFirstName = "", bereavementFullName = "";
        String postalcode = "", address = "";
        String phonenumber = "";

        deceasedFamilyName = request.getParameter("deceasedFamilyName");
        deceasedFirstName = request.getParameter("deceasedFirstName");
        deceasedFullName = deceasedFamilyName + " " + deceasedFirstName;
        request.setAttribute("deceasedFullName", deceasedFullName);
        deathYear = request.getParameter("deathYear");
        deathMonth = request.getParameter("deathMonth");
        deathDay = request.getParameter("deathDay");
        deathDate = deathYear+deathMonth+deathDay;
        request.setAttribute("deathData", deathDate);
        funnelPlace = request.getParameter("funnelPlace");
        funnelPlaceAddress = request.getParameter("funnelPlaceAddress");
        request.setAttribute("funnelPlace", funnelPlace);
        request.setAttribute("funnelPlaceAddress", funnelPlaceAddress);
        funnelYear = request.getParameter("funnelYear");
        funnelMonth = request.getParameter("funnelMonth");
        funnelDay = request.getParameter("funnelDay");
        funnelHour = request.getParameter("funnelHour");
        funnelMinute = request.getParameter("funnelMinute");
        funnelTime = funnelYear + funnelMonth + funnelDay + funnelHour + funnelMinute;
        request.setAttribute("funnelTime", funnelTime);
        bereavementFamilyName = request.getParameter("bereavementFamilyName");
        bereavementFirstName = request.getParameter("bereavementFirstName");
        bereavementFullName = bereavementFamilyName + " " + bereavementFirstName;
        request.setAttribute("bereavementFullName", bereavementFullName);
        postalcode = request.getParameter("postalcode");
        request.setAttribute("postalcode", postalcode);
        address = request.getParameter("address");
        request.setAttribute("address", address);
        phonenumber = request.getParameter("phonenumber");
        request.setAttribute("phonenumber", phonenumber);

        Hall hall = new Hall();
        hall.setId("1");
        hall.setDeadName(deceasedFullName);
        hall.setDeathDay(deathDate);
        hall.setAddress(funnelPlaceAddress);
        hall.setHallName(funnelPlace);
        hall.setFuneralDay(funnelTime);

        HallDAO.addDatas(hall);

//        Organizer organizer = new Organizer();
//        organizer.setId("1");
//        organizer.setName(bereavementFullName);
//        organizer.setPostalcode(postalcode);
//        organizer.setAddress(address);
//        organizer.setTel(phonenumber);
//        OrganizerDAO.addDatas(organizer);

        getServletContext().getRequestDispatcher("/reFunnelRegister.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException {
          request.setCharacterEncoding("UTF-8");
          getServletContext().getRequestDispatcher("/reFunnelRegister.jsp").forward(request, response);
    }
}
