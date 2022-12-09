<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/26
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>organizerSelection</title>

    <style>

        body{
            background: linear-gradient(white,mediumpurple);
            background-size:cover;
            font-family:sans-serif;
            text-align:center;
        }

        h1 {
            font-family: 'Homemade Apple', cursive;
            font-size: 500%;
            color: black;
            text-align: center;
        }

        a {
            font-size: 250%;
        }

        .button {
            margin: auto;
            width: 200px;
            height: 60px;
            border: 2px solid #000;
            border-radius: 0;
            background: #fff;
            -webkit-box-shadow: 4px 4px 0 #000;
            box-shadow: 4px 4px 0 #000;
        }

        .button:hover {
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }


    </style>
</head>
<body>
  <h1>選択してください</h1>
  <button type="button" name="funnelInformation">
      <a href="FunnelRegister">葬儀の計画</a>
  </button>
  <button type="button" name="funnelInformation">
      <a href="OrganizerReadingSelection">葬儀の閲覧</a>
  </button>
  <button type="button" name="funnelInformation">
      <a href="Login">ログアウト</a>
  </button>
</body>
</html>
