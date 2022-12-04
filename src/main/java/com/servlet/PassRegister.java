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

import com.model.RegisterDAO;
import com.model.TempUser;
import com.model.User;
import com.model.UserDAO;

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

			//入力された内容が登録されているかをチェック
			try {
				result = u_dao.check(user);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (result) {
			/*
			 * 入力された内容が登録されていたときorNULLがあるとき
			 * エラー文を表示し、もう一度create.jspを表示
			 */
			System.out.println("エラーがあります。");
			session.setAttribute("register", !result);
			getServletContext().getRequestDispatcher("/passRegister.jsp").forward(request, response);
		} else {
			/*
			 * うまくいったとき
			 * CreateDAOで入力内容を登録し、login.jspに遷移
			 */

			System.out.println("パスワード登録完了画面に遷移します");
			RegisterDAO r_dao = new RegisterDAO();
			try {
				session.setAttribute("newUser", user);
				r_dao.insert(user);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			getServletContext().getRequestDispatcher("/passRegistered.jsp").forward(request, response);
		}
	}

}
