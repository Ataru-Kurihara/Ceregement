<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/20
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>login</title>
    <style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }
        p{
            font-size: 300%;
            text-align: center;
        }
        dt{
            font-size: 200%;
            text-align: center;
        }
        h1 {
            font-family: 'Homemade Apple', cursive;
            font-size: 800%;
            color: black;
            text-align: center;
        }

        a {
            font-size: 250%;
        }

        button {
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
        .button1 {
            font-size: 50%;
            width: 100px;
            height: 30px;
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
        h1{
            font-size: 300%;
        }
        p{
            border: 2px red solid;
            font-weight: bold;
            font-size: 300%;
            color: red;
        }
        button1 {
            display: inline-block;
            padding: 0.1em;
            width: 50px;
            height: 22px;
            position: relative;
            top: 3px;
            border: solid 1px #000000;
            background-color: #CCCCCC;
        }
        div {
            display: -webkit-flex;
            display: flex;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-align-items: center;
            align-items: center;
        }
        div dt {
            min-width:9em;
        }
        div dd {
            margin: revert;
        }
        dt{
            font-size: 150%;
        }
    </style>
    <%--
      Created by IntelliJ IDEA.
      User: ataru
      Date: 2022/11/20
      Time: 15:40
      To change this template use File | Settings | File Templates.
    --%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" %>
    <!DOCTYPE html>
    <head>
        <title>login</title>
    </head>
<body>
<%
    if (session.getAttribute("login") != null && !(Boolean) session.getAttribute("login")) {
        out.println("<p>");
        out.println("ユーザ名またはパスワードが違います");
        out.println("</p>");
%>
<script type="text/javascript">
    const msg = "ユーザ名またはパスワードが違います";

    alert(msg)
</script>
<%
    }
%>
<h1>ログインします</h1>
<form action="Login" method="post">
    <dl>
        <div>
            <dt>ユーザID(メールアドレス)</dt>
            <dd><label>
                <input type="text" name="mailAddress"/>
            </label></dd>
        </div>
        <div>
            <dt>      パスワード                 </dt>
            <dd><label>
                <input type="password" name="password" id="password"/>
            </label><button1 id="btn_passview">表示</button1></dd>
        </div>

    </dl>
    <button type="submit" name="login">ログイン</button>
</form>
<div class="button">
    <a href="EmailRegister">新規登録</a>
</div>

<script type="text/javascript">
    let btn_passview = document.getElementById("btn_passview");
    let password = document.getElementById("password");
    btn_passview.addEventListener("click", (e)=>{
        e.preventDefault();
        if (password.type === 'password') {
            password.type = 'text';
            btn_passview.textContent = '非表示';
        } else {
            password.type = 'password';
            btn_passview.textContent = '表示';
        }
    })
</script>
</body>
</html>
