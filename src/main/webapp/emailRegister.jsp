<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/26
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>emailRegister</title>
</head>
<body>
    <h1>入力してください</h1>
    <ul>
        <li>新しく登録するメールアドレスを入力してください。</li>
        <li>ご入力いただいたメールアドレス宛てにパスワード登録フォームのURKLが届きます。</li>
    </ul>
    <form method="get" action="Output">
        <input type="text" name="email">
        <div class="button">
            <p>ID(メールアドレス)</p>
            <a href="./emailRegisterd.jsp">送信</a>
        </div>
    </form>
    <div class="button">
        <a href="./login.jsp">戻る</a>
    </div>
    <div class="button">
        <a href="">送信</a>
    </div>
</body>
</html>
