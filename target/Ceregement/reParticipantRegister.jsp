<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>reParticipantRegister</title>
</head>
<body>
  <h1>登録内容確認画面</h1>
  <p1>以下の内容でよろしければ、「登録する」ボタンを押してください</p1>
<%--  cssで枠組みお願いします--%>
  <div class="box">
    <h2>氏名</h2>　
    <p2>(姓)電大</p2>
    <p2>(名)太郎</p2><br>
    <h2>住所</h2>　
    <p2>〒000-0000</p2>
    <p2>東京都。。。。</p2><br>
    <h2>電話番号</h2>
    <p2>0000-0000-0000</p2><br>
    <h2>参加情報</h2>
    <p2>出席</p2><br>
    <h2>贈り物</h2>
    <p2>香典30000円</p2>
  </div>
  <button type="button" name="revision">
      <a href="ParticipantRegister">修正</a>
  </button>
  <button type="button" name="registration">
      <a href="ParticipantRegistered">登録</a>
  </button>
</body>
</html>
