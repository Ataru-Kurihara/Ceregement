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
        p1{
            color: red;
        }
    </style>

    <title>participantRegister</title>
</head>
<body>
<%
    if (session.getAttribute("participantRegister") != null && !(Boolean) session.getAttribute("participantRegister")
            && request.getAttribute("errorParticipantRegistermsg") != null) {
        out.println("<p>");
        out.println(request.getAttribute("errorParticipantRegistermsg"));
        out.println("</p>");
%>
        <script type="text/javascript">
            const msg = '<%= request.getAttribute("errorParticipantRegistermsg")%>';
            alert(msg)
        </script>
<%
    }
%>
<h1>??????????????????????????????????????????</h1>
<p1>??????????????????????????????</p1>
<h2>?????????</h2>
<form method="post" action="ParticipantRegister">
    <p2>(???)</p2>
    <input type="text" name="lastname" maxlength="64" value="??????">
    <p2>(???)</p2>
    <input type="text" name="firstname" maxlength="64" value="??????"><br>
    <h2>?????????</h2>
    <p2>???</p2>
    <input type="text" name="postcode" maxlength="64" value="120-0026">
    <p2>(????????????)</p2><br>
    <input type="text" name="address" maxlength="64" value="?????????????????????????????????">
    <h2>???????????????(??????????????????)</h2>
    <input type="text" name="tel" maxlength="64" value="080-0000-000">
    <p2>(????????????)</p2><br>
    <h2>???????????????</h2>
    <input type="radio" name="attendSelection" value="??????"> ??????
    <input type="radio" name="attendSelection" value="??????"> ??????
    <br>
    <h2>?????????</h2>
    <br>
    <input type="text" name="funeralGift" maxlength="64" value="???">
    <br>
    <br>
    <input type="submit" name="registration" value="??????">
    <a href="ReParticipantRegister"></a>
    </input>
    <br>
</form>
<button type="button" name="back">
    <a href="ParticipantSelection">??????</a>
</button>

</body>
</html>
