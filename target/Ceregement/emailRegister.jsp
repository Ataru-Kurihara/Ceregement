<<<<<<< HEAD
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
        <label>
            <input type="text" name="email">
        </label>
        <div class="button">
            <p>ID(メールアドレス)</p>
            <a href="EmailRegistered">送信</a>
        </div>
    </form>
    <div class="button">
        <a href="Login">戻る</a>
    </div>
    <div class="button">
        <a href="">送信</a>
    </div>
</body>
</html>
=======
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
    <Style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }

        a {
            font-size: 250%;
            width: 300px;
            height: 100px;
            border: 2px solid #000;
            border-radius: 0;
            background: #fff;
            -webkit-box-shadow: 4px 4px 0 #000;
            box-shadow: 4px 4px 0 #000;
        }

        a:hover {
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }

    </Style>


    <title>emailRegister</title>
</head>
<body>
<<<<<<< HEAD
<h1>入力してください</h1>
<ul>
    <h2>新しく登録するメールアドレスを入力してください。</h2>
    <h2>ご入力いただいたメールアドレス宛てにパスワード登録フォームのURLが届きます。</h2>
</ul>
<form method="get" action="Output">
    <input type="text" name="email">
    <div class="button">
        <p>ID(メールアドレス)</p>
        <a href="./emailRegisterd.jsp">送信</a>
=======
    <h1>入力してください</h1>
    <ul>
        <li>新しく登録するメールアドレスを入力してください。</li>
        <li>ご入力いただいたメールアドレス宛てにパスワード登録フォームのURKLが届きます。</li>
    </ul>
    <form method="get" action="Output">
        <label>
            <input type="text" name="email">
        </label>
        <div class="button">
            <p>ID(メールアドレス)</p>
            <a href="EmailRegistered">送信</a>
        </div>
    </form>
    <div class="button">
        <a href="Login">戻る</a>
    </div>
    <div class="button">
        <a href="">送信</a>
    </div>
    <div class="button">
        <a href="">送信</a>
>>>>>>> origin/master
    </div>
</form>
<div class="button">
    <a href="./login.jsp">戻る</a>
</div>
<!--これは、、、-->
<div class="button">
    <a href="">送信</a>
</div>
</body>
</html>
>>>>>>> 8f3e510e75db7f5cfaceba08e3620304f8b91cbe
