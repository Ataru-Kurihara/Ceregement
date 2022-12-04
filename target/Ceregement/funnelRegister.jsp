<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/28
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>funnelRegister</title>
</head>
<body>
    <p>エラーメッセージ</p>
    <h1>葬儀情報を入力してください</h1>
    <p>※項目は必須入力です</p>
    <h2>故人の氏名</h2>
    <p2>(姓)</p2>
    <label>
        <input type="text" name="deceasedFamilyName">
    </label>
    <p2>(名)</p2>
    <label>
        <input type="text" name="deceasedFirstName">
    </label><br>
    <h2>命日</h2>
    <select name="deathYear">
        <%
            Calendar calendar = Calendar.getInstance();
            for (int i=0; i<=100; i++) {
                String year = String.format("%tY", calendar);
                calendar.add(Calendar.YEAR, -1);
        %>
        <option value="<%= year %>"><%= year %></option>
        <%    }  %>
    </select><p2>年</p2>
    <select name="deathMonth">
        <%
            for (int i=1; i<=12; i++) {
                String month = String.valueOf(i) + "月";
        %>
        <option value="<%= month %>"><%= month %></option>
        <%    }  %>
    </select><p2>月</p2>
    <select name="deathDay">
        <%
            for (int i=1; i<=31; i++) {
                String day = String.valueOf(i) + "日";
        %>
        <option value="<%= day %>"><%= day %></option>
        <%    }  %>
    </select><p2>日</p2>
    <h2>葬儀会場名</h2>
    <label>
        <input type="text" name="funnelPlace">
    </label><br>
    <h2>葬儀会場住所</h2>
    <label>
        <input type="text" name="funnelPlaceAddress">
    </label><br>

    <h2>葬儀日時</h2>
    <select name="year">
        <%
            Calendar calendar1 = Calendar.getInstance();
            for (int i=0; i<=100; i++) {
                String year = String.format("%tY", calendar1);
                calendar1.add(Calendar.YEAR, -1);
        %>
        <option value="<%= year %>"><%= year %></option>
        <%    }  %>
    </select><p2>年</p2>
    <select name="month">
        <%
            for (int i=1; i<=12; i++) {
                String month = String.valueOf(i) + "月";
        %>
        <option value="<%= month %>"><%= month %></option>
        <%    }  %>
    </select><p2>月</p2>
    <select name="day">
        <%
            for (int i=1; i<=31; i++) {
                String day = String.valueOf(i) + "日";
        %>
        <option value="<%= day %>"><%= day %></option>
        <%    }  %>
    </select><p2>日</p2>
    <select name="hour">
        <%
            for (int i=0; i<=24; i++) {
                String hour = String.valueOf(i) + "時";
        %>
        <option value="<%= hour%>"><%= hour %></option>
        <%    }  %>
    </select><p2>時</p2>
    <select name="minute">
        <%
            for (int i=0; i<=59; i++) {
                String minute = String.valueOf(i) + "時";
        %>
        <option value="<%= minute%>"><%= minute %></option>
        <%    }  %>
    </select><p2>分</p2>
    <br>
    <h2>喪主氏名</h2>
    <p2>(姓)</p2>
    <label>
        <input type="text" name="BereavementFamilyName">
    </label>
    <p2>(名)</p2>
    <label>
        <input type="text" name="BereavementFirstName">
    </label><br>
    <h2>住所</h2>
    <p2>〒</p2>
    <label>
        <input type="text" name="postalcode">
    </label>
    <p2>(半角数字)</p2><br>
    <label>
        <input type="text" name="address">
    </label><br>
    <h2>電話番号</h2>
    <label>
        <input type="text" name="phonenumber">
    </label>
    <p2>(半角数字)</p2><br>

    <button type="button" name="back">
        <a href="OrganizerSelection">戻る</a>
    </button>

    <button type="button" name="registration">
        <a href="ReFunnelRegister">登録</a>
    </button>

</body>
</html>
