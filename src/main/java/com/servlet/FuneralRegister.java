package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.hall.Hall;
import com.model.hall.HallDAO;
import com.model.organizer.Organizer;
import com.model.organizer.OrganizerDAO;

@WebServlet("/FunnelRegister")
public class FuneralRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FuneralRegister() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		getServletContext().getRequestDispatcher("/funnelRegister.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		String deceasedFamilyName = "", deceasedFirstName = "", deceasedFullName = "";
		String deathYear = "", deathMonth = "", deathDay = "", deathDate = "";
		String funnelPlace = "", funnelPlaceAddress = "";
		String funnelYear = "", funnelMonth = "", funnelDay = "", funnelHour = "", funnelMinute = "", funnelTime = "";
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
		deathDate = deathYear + deathMonth + deathDay;
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
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		hall.setId(id);
		hall.setDeadName(deceasedFullName);
		hall.setDeathDay(deathDate);
		hall.setAddress(funnelPlaceAddress);
		hall.setHallName(funnelPlace);
		hall.setFuneralDay(funnelTime);

		HallDAO.addData(hall);

		Organizer organizer = new Organizer();
		organizer.setId(id);
		organizer.setPostalcode(postalcode);
		organizer.setName(bereavementFullName);
		organizer.setAddress(address);
		organizer.setTel(phonenumber);

		OrganizerDAO.addData(organizer);
		String message = "";
		boolean state = true;
		session.setAttribute("funeralerror", state);
		if ((deceasedFirstName == null || deceasedFamilyName == null || deathMonth == null || deathYear == null
				|| deathDay == null ||
				funnelPlace == null || funnelPlaceAddress == null || funnelHour == null || funnelMinute == null
				|| postalcode == null || bereavementFirstName == null
				|| bereavementFamilyName == null || address == null || phonenumber == null)
				|| (deceasedFirstName.isEmpty() || deceasedFamilyName.isEmpty() || deathMonth.isEmpty()
						|| deathYear.isEmpty()
						|| deathDay.isEmpty() ||
						funnelPlace.isEmpty() || funnelPlaceAddress.isEmpty() || funnelHour.isEmpty()
						|| funnelMinute.isEmpty()
						|| postalcode.isEmpty() || bereavementFirstName.isEmpty()
						|| bereavementFamilyName.isEmpty() || address.isEmpty() || phonenumber.isEmpty())) {
			message = "入力されていない情報があります";
			state = false;
			session.setAttribute("funeralerror", state);
			request.setAttribute("funeralerrormsg", message);
			getServletContext().getRequestDispatcher("/funnelRegister.jsp").forward(request, response);
		} else {
			getServletContext().getRequestDispatcher("/reFunnelRegister.jsp").forward(request, response);
		}
	}
}
