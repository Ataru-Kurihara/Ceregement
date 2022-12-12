<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 22:30
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

        tr{
            text-align: center;
            font-size: 200%;
        }

        button {
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
            font-size: 250%;
        }
        h1{
            font-size: 300%;
            text-align: center;
        }
        th{
            text-align: center;
            border: 2px #808080 solid;
        }
    </style>


    <title>participantListReading</title>
</head>
<body>
<h1>CeregementId: ABCDEFG 参列者情報一覧</h1>
<table>
    <tr>
        <th>氏名</th>
        <th>住所</th>
        <th>電話番号</th>
        <th>出席情報</th>
        <th>香典など</th>
    </tr>
    <tr>
        <th>佐藤　太郎</th>
        <th>東京都</th>
        <th>090-111-1111</th>
        <th>出席</th>
        <th>香典3000円</th>
    </tr>
</table>
<button type="button" name="back">
    <a href="organizerReadingSelection.jsp">戻る</a>
</button>
</body>
</html>
