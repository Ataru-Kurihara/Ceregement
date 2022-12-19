package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.hall.HallDAO;

@WebServlet("/FunnelReading")
public class FuneralReading extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FuneralReading() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		HallDAO h_dao = new HallDAO();
		session.setAttribute("organizer", true);

		if (h_dao.check((String) session.getAttribute("id"))) {
			getServletContext().getRequestDispatcher("/funnelReading.jsp").forward(request, response);
		} else {
			session.setAttribute("organizer", false);
			request.setAttribute("errorOrganizer", "葬儀情報を登録してください。");
			getServletContext().getRequestDispatcher("/participantSelection.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
