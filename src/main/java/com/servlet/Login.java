package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

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
        String password = request.getParameter("passWord");
        String secretId = UserDAO.getSecretIdRegNumber(user, "secretid");
        String passwordHash = DigestUtils.sha256Hex(password + secretId);
        user.setPassword(passwordHash);
        String regNumber = UserDAO.getSecretIdRegNumber(user, "regnumber");

        boolean result = false;
        try {
            result = UserDAO.check(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        session.setAttribute("login", result);
        session.setAttribute("mailAddress", user.getMailAddress());
        session.setAttribute("id", UserDAO.getSecretIdRegNumber(user, "id"));
        session.setAttribute("regnumber", UserDAO.getSecretIdRegNumber(user, "regnumber"));
        System.out.println(session.getAttribute("mailAddress"));
        System.out.println(user.getMailAddress());
        if (result) {
            session.setAttribute("user", user);
//            System.out.println(regNumber);
//            getServletContext().getRequestDispatcher("/organizerSelection.jsp").forward(request, response);
            if (Objects.equals(regNumber, "0")) {
                System.out.println(regNumber);
                response.sendRedirect("/Ceregement/OrganizerSelection");
            }if (Objects.equals(regNumber, "1")){
                System.out.println(regNumber);
                response.sendRedirect("/Ceregement/ParticipantSelection");
            }
        } else {
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
