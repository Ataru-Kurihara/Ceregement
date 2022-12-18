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
            font-size: 250%;
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
        input[type="submit" i]{
            font-size: 250%;
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
        input[type="submit" i]:hover{
            -webkit-box-shadow: -10px -4px 0 #000;
            box-shadow: -10px -4px 0 #000;
        }
        p{
            border: 2px red solid;
            font-weight: bold;
            font-size: 300%;
            color: red;
        }
    </style>

    <title>participantRegister</title>
</head>
<body>
<%
    if (session.getAttribute("error") != null && !(Boolean) session.getAttribute("error") && session.getAttribute("error") != null) {
        out.println("<p>");
        out.println(session.getAttribute("errormsg"));
        out.println("</p>");
%>
<script type="text/javascript">
    const msg = '<%= session.getAttribute("errormsg")%>';
    alert(msg)
</script>
<%
    }
%>
<h1>参列者情報を入力してください</h1>
<p1>※項目は必須入力です</p1>
<h2>※氏名</h2>
<form method="post" action="ReParticipantRegister">
    <p2>(姓)</p2>
    <input type="text" name="lastname" required>
    <p2>(名)</p2>
    <input type="text" name="firstname" required><br>
    <h2>※住所</h2>
    <p2>〒</p2>
    <input type="text" name="postcode" required>
    <p2>(半角数字)</p2><br>
    <input type="text" name="address" required>
    <h2>※電話番号(ハイフン無し)</h2>
    <input type="text" name="tel" required>
    <p2>(半角数字)</p2><br>
    <h2>※参加情報</h2>
    <input type="radio" name="attendSelection" value="出席" required> 出席
    <input type="radio" name="attendSelection" value="欠席" required> 欠席
    <br>
    <h2>贈り物</h2>
    <br>
    <input type="text" name="funeralGift" required>
    <br>
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
