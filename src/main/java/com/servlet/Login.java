package com.servlet;

import com.model.User;
import com.model.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public Login() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        User user = new User();
        UserDAO userDAO = new UserDAO();
//        user.setSecretId(request.getParameter("secretId"));
        user.setMailAddress(request.getParameter("mailAddress"));
        user.setPassword(request.getParameter("passWord"));

        boolean result = false;
        try {
            result = UserDAO.check(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        session.setAttribute("login", result);
        if (result) {
            session.setAttribute("user", user);
//            getServletContext().getRequestDispatcher("/organizerSelection").forward(request, response);
            response.sendRedirect("/Ceregement/OrganizerSelection");
        } else {
            getServletContext().getRequestDispatcher("jsp/login.jsp").forward(request, response);
        }
    }
}
