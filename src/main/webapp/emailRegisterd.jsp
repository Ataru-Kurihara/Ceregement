<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/26
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>emailRegistered</title>
</head>
<body>
  <p>
    メールが送信されました。<br>
  メールに記載のURLからログインし、<br>
  登録を完了させてください。
  </p>
  <form method="get" action="Output">
    <p>新しいパスワード</p>
    <input type="password" name="newPassWord"><br>
    <p>新しいパスワード(確認用)</p>
    <input type="password" name="新しいパスワード(確認用)">
    <div class="button">
      <a href="./passRegistered.jsp">ログイン画面へ</a>
    </div>
  </form>
</body>
</html>
