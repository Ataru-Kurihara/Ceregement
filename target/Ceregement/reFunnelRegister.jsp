<%@ page import="com.model.hall.HallDAO" %>
<%@ page import="java.sql.SQLException"%><%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/29
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>


    <style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }

        a {
            margin: 25% auto;

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


    <meta charset="UTF-8">
    <title>reFunnelRegister</title>
</head>
<body>
        <h1>登録内容確認画面</h1>
        <p1>以下の内容でよろしければ、「登録する」ボタンを押してください</p1><br>
        <h2>故人氏名: <%= request.getAttribute("deceasedFullName") %></h2><br>
        <h2>命日: <%= request.getAttribute("deathData")%></h2><br>
        <h2>葬儀会場: <%= request.getAttribute("funnelPlace")%></h2><br>
        <h2>葬儀会場住所: <%= request.getAttribute("funnelPlaceAddress")%></h2><br>
        <h2>葬儀日時: <%= request.getAttribute("funnelTime")%></h2><br>
        <h2>喪主氏名: <%= request.getAttribute("bereavementFullName")%></h2><br>
        <h2>住所: 〒 <%= request.getAttribute("postalcode")%></h2><br>
        <h2><%= request.getAttribute("address")%></h2><br>
        <h2>電話番号: <%= request.getAttribute("phonenumber")%></h2>
        <button type="button" name="revision">
            <a href="funnelRegister.jsp">修正</a>
        </button>
        <button type="button" name="registaration">
            <a href="funnelRegistered.jsp">登録</a>
        </button>
</body>
</html>
