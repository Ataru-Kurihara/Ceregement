<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/30
  Time: 0:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<html>
<head>
    <style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }

       h1{
           font-size: 300%;
           text-align: center;
       }

       p1{
           font-size: 200%;
           text-align: center;
       }

       h2{
           font-size: 150%;
           text-align: center;

           padding: 0.5em 1em;
           margin: 2em 0;
           font-weight: bold;
           color: #6091d3;/*文字色*/
           background: #FFF;
           border: solid 3px #6091d3;/*線*/
           border-radius: 10px;/*角の丸み*/
       }


        button {
            font-size: 200%;
            position: relative;
            aligin: center;
            width: 250px;
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


    </style>
    <title>funnelRegistered</title>
</head>
<body>
<h1>葬儀情報が正常に登録されました！</h1>
<p1>招待者の方に以下のURLを送ってください。</p1>
<br>
<h2 href="http://localhost:8080/Ceregement/EmailRegister?regNumber=0">http://localhost:8080/Ceregement/EmailRegister?regNumber=0</h2>
<br>
<button type="button" name="menu">
    <a href="OrganizerSelection">メニューへ</a>
</button>
</body>
</html>
