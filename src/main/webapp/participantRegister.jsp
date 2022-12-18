<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 22:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <%
        System.out.println("参列者情報");
        System.out.println(session.getAttribute("errormsg"));
        System.out.println(session.getAttribute("error"));
    %>
    <h1>参列者情報を入力してください</h1>
    <p1>※項目は必須入力です</p1>
    <h2>※氏名</h2>
    <p2>(姓)</p2>
    <form method="get" action="ReParticipantRegister">
        <input type="text" name="lastname">
        <p2>(名)</p2>
        <input type="text" name="firstname"><br>
        <h2>※住所</h2>
        <p2>〒</p2>
        <input type="text" name="postcode">
        <p2>(半角数字)</p2><br>
        <input type="text" name="address">
        <h2>※電話番号(ハイフン無し)</h2>
        <input type="text" name="tel">
        <p2>(半角数字)</p2><br>
        <h2>※参加情報</h2>
        <input type="radio" name="attendSelection" value="出席"> 出席
        <input type="radio" name="attendSelection" value="欠席"> 欠席
        <br>
        <h2>贈り物</h2>
        <br>
        <input type="text" name="funeralGift">
        <br>
        <input type="submit" name="registration" value="登録">
            <a href="ReParticipantRegister"></a>
        </input>
        <br>
    </form>
    <button type="button" name="back">
        <a href="ParticipantSelection">戻る</a>
    </button>

</body>
</html>
