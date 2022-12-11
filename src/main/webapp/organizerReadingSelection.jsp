<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/30
  Time: 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        h1{
            font-size: 300%;
            text-align: center;
        }
        a {
            font-size: 250%;
            display: block;
            margin: auto;
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
    <title>organizerReadingSelection</title>
</head>
<body>
  <h1>選択してください</h1>
  <button type="button" name="funnelInformation">
      <a href="FunnelReading">葬儀情報</a>
  </button>
  <button type="button" name="participantInformation">
      <a href="ParticipantListReading">参列情報</a>
  </button>
  <button type="button" name="back">
    <a href="OrganizerSelection">戻る</a>
  </button>
</body>
</html>
