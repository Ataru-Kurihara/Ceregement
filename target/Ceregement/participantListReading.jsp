<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.model.participant.Participant" %>
<%@ page import="com.model.participant.ParticipantDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.model.user.User" %>
<%@ page import="java.util.ArrayList" %><%--
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
<%
    Participant participant = new Participant();
    request.setAttribute("participant", participant);
    List<String> mailaddresses = ParticipantDAO.getMailAddress();
    request.setAttribute("mailaddresses", mailaddresses);
    List<List<String>> lists = new ArrayList<>();
    for (String mailaddress: mailaddresses) {
        lists.add(ParticipantDAO.getData(mailaddress, participant));
        request.setAttribute("data", participant.getData());
    }
    request.setAttribute("lists", lists);

%>

<h1>CeregementId: ABCDEFG 参列者情報一覧</h1>
<table>
    <tr>
        <th>氏名</th>
        <th>住所</th>
        <th>電話番号</th>
        <th>出席情報</th>
        <th>香典など</th>
    </tr>


    <c:forEach var="list" items="${lists}">
        <tr>
            <c:forEach var="data" items="${list}">
                    <th>
                        <c:out value="${data}"/>
                    </th>
            </c:forEach>
        </tr>
    </c:forEach>




<%--    <tr>--%>
<%--        <c:forEach var="name" items="${nameList}">--%>
<%--            <td><c:out value="${name}" /></td>--%>
<%--        </c:forEach>--%>
<%--        <c:forEach var="address" items="${addressList}">--%>
<%--            <td><c:out value="${address}" /></td>--%>
<%--        </c:forEach>--%>
<%--    </tr>--%>
<%--        <c:forEach var="tell" items="${tellList}">--%>
<%--            <th><c:out value="${tell}" /></th>--%>
<%--        </c:forEach>--%>
<%--        <c:forEach var="attend" items="${attendList}">--%>
<%--            <th><c:out value="${attend}" /></th>--%>
<%--        </c:forEach>--%>
<%--        <c:forEach var="gift" items="${giftList}">--%>
<%--            <th><c:out value="${gift}" /></th>--%>
<%--        </c:forEach>--%>

</table>
<button type="button" name="back">
    <a href="OrganizerReadingSelection">戻る</a>
</button>
</body>
</html>
