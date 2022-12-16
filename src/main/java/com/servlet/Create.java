package com.servlet;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.tempUser.TempUser;

@WebServlet("/Create")
public class Create extends HttpServlet {

	public Create() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();

		TempUser temp = new TempUser();//仮ユーザー

		String email = request.getParameter("email");
		String regNumber = request.getParameter("regNumber");
		String ceregementId = request.getParameter("ceregementId");

		boolean result = false;

		//nullチェック
		if (Objects.isNull(email)) {
			System.out.println("idが入力されていません。");
			result = true;
		} else {
			System.out.println("idは入力されている");
			temp.setEmail(email);//email情報を保存
			temp.setRegNumber(regNumber);
			temp.setCeregementId(ceregementId);
		}

		if (result) {
			//失敗
			System.out.println("エラーがあります。");
			System.out.println("email入力画面からやり直してください");
			getServletContext().getRequestDispatcher("/emailRegister.jsp").forward(request, response);
		} else {
			//成功
			session.setAttribute("temp", temp);
			System.out.println("登録画面に遷移します");
			getServletContext().getRequestDispatcher("/passRegister.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}
