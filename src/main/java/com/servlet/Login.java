package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.user.User;
import com.model.user.UserDAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public Login() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        User user = new User();
        UserDAO dao = new UserDAO();
//        user.setSecretId(request.getParameter("secretId"));
        user.setMailAddress(request.getParameter("mailAddress"));
        user.setPassword(request.getParameter("passWord"));
        int regNumber = UserDAO.getId(user);

        boolean result = false;
        try {
            result = dao.check(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        session.setAttribute("login", result);
        if (result) {
            session.setAttribute("user", user);
            System.out.println(regNumber);
//            getServletContext().getRequestDispatcher("/organizerSelection").forward(request, response);
            if (regNumber == 1) {
                System.out.println(regNumber);
                response.sendRedirect("/Ceregement/OrganizerSelection");
            }if (regNumber == 0){
                System.out.println(regNumber);
                response.sendRedirect("/Ceregement/ParticipantSelection");
            }

        } else {
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
