package com.servlet;

import com.model.participant.Participant;
import com.model.participant.ParticipantDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ReParticipantRegister")
public class ReParticipantRegister extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public ReParticipantRegister() {super();}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String mailaddress = "";
        String fullname = "", firstname = "", lastname = "";
        String address = "", postalcode = "", place = "";
        String tel = "";
        String attendSelection = "";
        String funeralGift = "";
        HttpSession session = request.getSession();
        mailaddress = session.getAttribute("mailAddress").toString();
        lastname = request.getParameter("lastname");
        firstname = request.getParameter("firstname");
        fullname = lastname + " " + firstname;
        postalcode = request.getParameter("postcode");
        place = request.getParameter("address");
        address = postalcode + " " + place;
        tel = request.getParameter("tel");
        attendSelection = request.getParameter("attendSelection");
        funeralGift = request.getParameter("funeralGift");


        request.setAttribute("mailaddress", mailaddress);
        request.setAttribute("fullname", fullname);
        request.setAttribute("address", address);
        request.setAttribute("tel", tel);
        request.setAttribute("attendSelection", attendSelection);
        request.setAttribute("funeralGift", funeralGift);

        Participant participant = new Participant();
        String id = session.getAttribute("id").toString();
        participant.setMailAddress(mailaddress);
        participant.setFullName(fullname);
        participant.setDetailAddress(address);
        participant.setTel(tel);
        participant.setAttend(attendSelection);
        participant.setGift(funeralGift);
        participant.setId(id);
        ParticipantDAO.addData(participant);
//        String message = null;
//        if (mailaddress == null || lastname == null || firstname == null || postalcode == null || place == null || tel == null || attendSelection == null || funeralGift == null) {
//            message = "フォーム画面から入力してください";
//            request.setAttribute("errormsg", message);
//        } else if (mailaddress.equals("") || lastname.equals("") || firstname.equals("") || postalcode.equals("") || place.equals("") || tel.equals("") || attendSelection.equals("") || funeralGift.equals("")) {
//            message = "入力されてないところがあります";
//            request.setAttribute("errormsg", message);
//        }else {
//            getServletContext().getRequestDispatcher("/reParticipantRegister.jsp").forward(request, response);
//        }


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/reParticipantRegister.jsp").forward(request, response);

    }
}
