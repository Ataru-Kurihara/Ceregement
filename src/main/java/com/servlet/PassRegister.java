package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

import com.model.tempUser.TempUser;
import com.model.user.User;
import com.model.user.UserDAO;

@WebServlet("/PassRegister")
public class PassRegister extends HttpServlet {

	public PassRegister() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		String email = ((TempUser) session.getAttribute("temp")).getEmail();
		String regNumber = ((TempUser) session.getAttribute("temp")).getRegNumber();
		User user = new User();
		UserDAO u_dao = new UserDAO();
		boolean result = false;
		String password = request.getParameter("password");
		/*
		 * nullチェック
		 * nullの場合resultにはfalseが入る
		 * null以外の時、登録チェックが入る
		 */
		if (email == null || password == null || password.isEmpty() || password.equals(" ")) {
			System.out.println("emailまたはpasswordが入力されていません。");
			request.setAttribute("passError", "emailまたはpasswordが入力されていません。");
			result = true;
		} else {
			System.out.println("emailとpasswordは入力されている");
			user.setMailAddress(email);
			user.setPassword(password);
			user.setRegNumber(regNumber);

			//入力された内容が登録されているかをチェック
			try {
				result = UserDAO.checkMail(user);
				if (result) {
					session.setAttribute("email", false);
					request.setAttribute("error", "メールアドレスが重複してます");
					getServletContext().getRequestDispatcher("/passRegister.jsp").forward(request, response);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (result) {
			session.setAttribute("pass", !result);
			getServletContext().getRequestDispatcher("/passRegister.jsp").forward(request, response);
		} else {
			int secretId;
			String passwordHash = "";
			try {
				secretId = UserDAO.checkIndex() + 1;
				user.setSecretId(Integer.toString(secretId));
				passwordHash = DigestUtils
						.sha256Hex(request.getParameter("password") + Integer.toString(secretId));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			session.setAttribute("newUser", user);
			user.setPassword(passwordHash);
			u_dao.insert(user);
			System.out.println("パスワード登録完了画面に遷移します");
			getServletContext().getRequestDispatcher("/passRegistered.jsp").forward(request, response);
		}
	}

}