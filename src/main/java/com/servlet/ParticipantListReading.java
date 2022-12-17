package com.servlet;

import com.model.participant.ParticipantDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ParticipantListReading")
public class ParticipantListReading extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public ParticipantListReading() {super();}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ParticipantDAO p_dao = new ParticipantDAO();
        session.setAttribute("participant", true);
        try {
            if (p_dao.check((String) session.getAttribute("mailAddress"))) {
                getServletContext().getRequestDispatcher("/participantListReading.jsp").forward(request, response);
            } else {
                session.setAttribute("participant", false);
                request.setAttribute("errorParticipant", "参列者情報が見つかりません");
                getServletContext().getRequestDispatcher("/organizerReadingSelection.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        getServletContext().getRequestDispatcher("/participantListReading.jsp").forward(request, response);
    }
 }
