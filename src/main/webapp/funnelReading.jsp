<%@ page import="com.model.hall.HallDAO" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.model.hall.Hall" %><%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/12/03
  Time: 22:18
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
    </style>
    <title>funnelReading</title>
</head>
<body>
    <% try {
        out.println("<h1>CeregementID: "+HallDAO.getCeregementId()+"の葬儀情報</h1>");
        out.println("<h2>故人氏名</h2>　<p1>"+ HallDAO.selectDatas().get(0)+"</p1>");
        out.println("<h2>命日</h2> <p1>" + HallDAO.selectDatas().get(1) + "</p1>");
        out.println("<h2>葬儀会場名</h2> <p1>" + HallDAO.selectDatas().get(2) + "</p1>");
        out.println("<h2>葬儀会場住所</h2> <p1>" + HallDAO.selectDatas().get(3) + "</p1>");
        out.println("<h2>葬儀の日時</h2> <p1>" + HallDAO.selectDatas().get(4) + "</p1>");
        out.println("<h2>喪主氏名</h2>　<p1>" + HallDAO.selectDatas().get(1) + "</p1>");
        out.println("<h2>住所</h2> <p1>〒" + HallDAO.selectDatas().get(1) + "</p1>");
        out.println("<h2>電話番号</h2> <p1>" + HallDAO.selectDatas().get(1) + "</p1>");
      } catch (java.sql.SQLException e) {
          throw new RuntimeException(e);
      }%>
      <h2>故人氏名</h2>　<p1>電大　太郎</p1>
      <h2>命日</h2> <p1>2022年10月04日</p1>
      <h2>葬儀会場名</h2>　<p1>電機葬儀会場</p1>
      <h2>葬儀会場住所</h2> <p1>住所</p1>
      <h2>葬儀の日時</h2> <p1>2022年10月07日13時00分より</p1>
      <h2>喪主氏名</h2> <p1>電大　花子</p1>
      <h2>住所</h2> <p1>〒000-111</p1><br><p1>住所</p1>
      <h2>電話番号</h2> <p1>090-0000-0000</p1><br>
      <button type="button" name="back">
        <a href="OrganizerReadingSelection">戻る</a>
      </button>
    </body>
    </html>

