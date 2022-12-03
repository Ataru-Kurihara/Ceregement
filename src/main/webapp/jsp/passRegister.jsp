<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/01
  Time: 15:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>passRegister</title>
</head>
<body>
    <h1>パスワード新規登録</h1>
    <p1>エラーメッセージ</p1>
    <h2>新しいパスワード</h2>
    <input type="text" name="pass">
    <h2>新しいパスワード(確認用)</h2>
    <input type="text" name="rePass">
    <p2>(注意)パスワードに使える文字は半角数字とアルファベットです。</p2><br>
    <p2>アルファベットは大文字、小文字の区別はありません。</p2><br>
    <p2>パスワードは8文字以上16文字以下を指定してください。</p2>
    <p2>★内容を確認したら「登録」ボタンを押してください</p2>
    <button type="button" name="registration">
        <a href="PassRegistered">登録</a>
    </button>
</body>
</html>
