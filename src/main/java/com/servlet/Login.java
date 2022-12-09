package com.servlet;

import com.model.user.User;
import com.model.user.UserDAO;

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
        UserDAO dao = new UserDAO();
//        user.setSecretId(request.getParameter("secretId"));
        user.setMailAddress(request.getParameter("mailAddress"));
        user.setPassword(request.getParameter("passWord"));
        int secretId = UserDAO.getId(user);

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
            System.out.println(secretId);
//            getServletContext().getRequestDispatcher("/organizerSelection").forward(request, response);
            if (secretId == 1) {
                System.out.println(secretId);
                response.sendRedirect("/Ceregement/OrganizerSelection");
            }if (secretId == 0){
                System.out.println(secretId);
                response.sendRedirect("/Ceregement/ParticipantSelection");
            }

        } else {
            getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}
