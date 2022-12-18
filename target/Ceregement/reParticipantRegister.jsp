<%@ page import="com.model.participant.Participant" %>
<%@ page import="com.model.participant.ParticipantDAO" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }

        h2 {
            border: 2px #808080 solid;
        }

        button {
            font-size: 250%;
            width: 200px;
            height: 60px;
            border: 2px solid #000;
            border-radius: 0;
            background: #fff;
            -webkit-box-shadow: 4px 4px 0 #000;
            box-shadow: 4px 4px 0 #000;
        }

        button:hover {
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }


    </style>

    <title>reParticipantRegister</title>
</head>
<body>
<%--  <%--%>
<%--    Participant participant = new Participant();--%>
<%--    try {--%>
<%--      if (!ParticipantDAO.check(participant)) {--%>
<%--        String err = request.getParameter("errormsg");--%>
<%--        request.setAttribute("msg", err);--%>
<%--        System.out.println(err);--%>
<%--      }--%>
<%--    } catch (SQLException e) {--%>
<%--      e.printStackTrace();--%>
<%--    }--%>
<%--  %>--%>
<%--  <script type="text/javascript">--%>
<%--    alert(${msg})--%>
<%--  </script>--%>
<h1>登録内容確認画面</h1>
<p1>以下の内容でよろしければ、「登録する」ボタンを押してください</p1>
<%--  cssで枠組みお願いします--%>
<div class="box">　
    <h2>氏名: <%= request.getAttribute("fullname")%>
    </h2>
    <br>　
    <h2>住所: 〒<%= request.getAttribute("address")%>
    </h2>
    <br>
    <h2>電話番号: <%= request.getAttribute("tel")%>
    </h2>
    <br>
    <h2>参加情報: <%= request.getAttribute("attendSelection")%>
    </h2>
    <br>
    <h2>贈り物: <%= request.getAttribute("funeralGift")%>
    </h2>
</div>
<button type="button" name="revision">
    <a href="ParticipantRegister">修正</a>
</button>
<button type="button" name="registration">
    <a href="ParticipantRegistered">登録</a>
</button>
</body>
</html>
