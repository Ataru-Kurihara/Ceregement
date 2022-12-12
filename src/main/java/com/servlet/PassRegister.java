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
		/*
		 * nullチェック
		 * nullの場合resultにはfalseが入る
		 * null以外の時、登録チェックが入る
		 */
		if (Objects.isNull(email)) {
			System.out.println("emailが入力されていません。");
			result = true;
		} else {
			System.out.println("emailは入力されている");
			user.setMailAddress(email);
			user.setPassword(request.getParameter("password"));
			user.setRegNumber(regNumber);

			//入力された内容が登録されているかをチェック
			try {
				result = u_dao.check(user);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (result) {
			System.out.println("エラーがあります。");
			request.setAttribute("register", !result);
			getServletContext().getRequestDispatcher("/passRegister.jsp").forward(request, response);
		} else {
			int secretId;
			try {
				secretId = u_dao.checkIndex(user) + 1;
				user.setSecretId(Integer.toString(secretId));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			session.setAttribute("newUser", user);
			u_dao.insert(user);
			System.out.println("パスワード登録完了画面に遷移します");
			getServletContext().getRequestDispatcher("/passRegistered.jsp").forward(request, response);
		}
	}

}