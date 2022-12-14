<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 22:46
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
        a {
            font-size: 250%;
        }
        button {
            margin: auto;
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
        p{
            border: 2px red solid;
            font-weight: bold;
            font-size: 300%;
            color: red;
        }
    </style>
    <title>participantSelection</title>
</head>
<body>
<%
    if (session.getAttribute("participantRegister") != null
            && !(Boolean) session.getAttribute("participantRegister")
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
<h1>選択してください</h1>
<button type="button" name="funnelInformation">
    <a href="FunnelReading">葬儀の詳細</a>
</button>
<button type="button" name="participantInformation">
    <a href="ParticipantRegister">出席登録</a>
</button>
<button type="button" name="back">
    <a href="Login">ログアウト</a>
</button>
</body>
</html>
