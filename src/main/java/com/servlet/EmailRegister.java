package com.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.Objects;
import java.util.Properties;
import java.util.regex.Pattern;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.tempUser.TempUserDAO;
import com.model.user.UserDAO;

@WebServlet("/EmailRegister")
public class EmailRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
	final String subject = "JavaMail テストメール"; //	メールの件名
	final String from = "nagahama.tdu24@gmail.com";//送信元
	// メールの設定
	final String name = "nagahama.tdu24@gmail.com";//誰が
	final String password = "dcfdbsifyjqjfpxc";
	final String charset = "UTF-8";
	final String encoding = "base64";
	final String host = "smtp.gmail.com";
	final String port = "587";
	final String starttls = "true";

	String regNumber = "";
	String ceregementId = "";

	public EmailRegister() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		regNumber = request.getParameter("regNumber");
		ceregementId = request.getParameter("ceregementId");

		if ((Objects.isNull(regNumber)) || (!regNumber.equals("0") && !regNumber.equals("1"))) {
			regNumber = "0";
		}

		if (ceregementId == null || ceregementId.isEmpty()) {
			try {
				System.out.println("EmailRegister.java");
				System.out.println("ceregementIdはnullでした");
				ceregementId = Integer.toString(UserDAO.checkIndex());
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		getServletContext().getRequestDispatcher("/emailRegister.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		session.setAttribute("email", true);

		boolean state = true;//	falseになるときメールは送られない
		String error = "";
		request.setCharacterEncoding("UTF-8");

		String email = request.getParameter("email"); //	入力されたメールアドレス
		String to = email;//送信先
		// メールの内容
		String content = "あなたの入力したメールアドレスは\n"
				+ email
				+ "です。\n"
				+ "http://localhost:8080/Ceregement/"
				+ "Create?email="
				+ email
				+ "&regNumber="
				+ regNumber
				+ "&ceregementId="
				+ ceregementId;

		//入力されたemail
		System.out.println(email);

		//nullチェック
		if (email == null || email.isEmpty()) {
			System.out.println("EmailRegister.java");
			System.out.println("nullである");
			error = "メールアドレスが入力されてません。";
			state = false;
		}

		//正しいメールアドレスのチェック
		String pattern = "^[a-zA-Z0-9_+-]+(.[a-zA-Z0-9_+-]+)*@([a-zA-Z0-9][a-zA-Z0-9-]*[a-zA-Z0-9]*\\.)+[a-zA-Z]{2,}$";
		Pattern p = Pattern.compile(pattern);
		if (state) {
			if (!p.matcher(email).find()) {
				System.out.println("正しいメールアドレスではない");
				error = "正しいメールアドレスではありません。";
				state = false;
			}
		}

		//重複チェック
		if (state) {
			TempUserDAO t_dao = new TempUserDAO();
			try {
				state = t_dao.check(email);
			} catch (ClassNotFoundException | SQLException e1) {
				e1.printStackTrace();
			}
			if (!state) {
				System.out.println("重複したemailが入力");
				error = "登録されているメールアドレスが入されました。";
			}
		}

		session.setAttribute("email", state);
		request.setAttribute("error", error);

		if (state) {
			//メールを送る
			try {
				send(content, to);
			} catch (UnsupportedEncodingException | MessagingException e) {
				throw new RuntimeException(e);
			}

			//成功した画面遷移
			getServletContext().getRequestDispatcher("/emailRegistered.jsp").forward(request, response);
		} else {
			//	失敗した画面遷移
			getServletContext().getRequestDispatcher("/emailRegister.jsp").forward(request, response);
		}

	}

	//	メールを送るメソッド
	private void send(String content, String to) throws UnsupportedEncodingException, MessagingException {
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", starttls);
		props.put("mail.smtp.connectiontimeout", "10000");
		props.put("mail.smtp.timeout", "10000");
		props.put("mail.debug", "true");
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(name, password);
			}
		});

		MimeMessage message = new MimeMessage(session);
		message.setFrom(new InternetAddress(from, "Arifumi Nagahama"));
		message.setReplyTo(new Address[] { new InternetAddress(from) });
		message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
		message.setSubject(subject, charset);
		message.setText(content, charset);
		message.setHeader("Content-Transfer-Encoding", encoding);
		Transport.send(message);

	}
}
