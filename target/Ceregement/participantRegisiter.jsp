<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 22:50
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
        h2{
            border: 2px #808080 solid;
        }
        button{
            position: relative;
            aligin: center;
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
        a{
            position: relative;
            aligin: center;
            width: 200px;
            height: 60px;
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
    </style>

    <title>participantRegister</title>
</head>
<body>
<p1>エラー</p1>
<h1>参列者情報を入力してください</h1>
<p1>※項目は必須入力です</p1>
<h2>※氏名</h2>
<p2>(姓)</p2>
<label>
    <input type="text" name="lastName">
</label>
<p2>(名)</p2>
<label>
    <input type="text" name="firstName">
</label><br>
<h2>※住所</h2>
<p2>〒</p2>
<label>
    <input type="text" name="postCode">
</label>
<p2>(半角数字)</p2>
<br>
<label>
    <input type="text" name="address">
</label>
<h2>※電話番号(ハイフン無し)</h2>
<label>
    <input type="text" name="postCode">
</label>
<p2>(半角数字)</p2>
<br>
<h2>※参加情報</h2>
<form action="reParticipantRegister.jsp" method="get">
    <input type="radio" name="attendSelection" value="attend"> 出席
    <input type="radio" name="attendSelection" value="absence"> 欠席
</form>
<br>
<h2>贈り物</h2>
<br>
<input type="text" name="funeralGift">
<br>
<button type="button" name="back">
    <a href="participantSelection.jsp">戻る</a>
</button>
<br>
<button type="button" name="registration">
    <a href="ReParticipantRegister">登録</a>
</button>
</body>
</html>
