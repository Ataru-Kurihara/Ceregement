<%-- Created by IntelliJ IDEA. User: ataru Date: 2022/12/01 Time: 15:27 To change this template use File | Settings |
    File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.model.tempUser.TempUser"%>
<html>
<%
String id = ((TempUser) session.getAttribute("temp")).getEmail();
%>

<head>



    <style>
        body {
            background: linear-gradient(white, mediumpurple);
            background-size: cover;
            font-family: sans-serif;
            text-align: center;
        }
        p {
            font-size: 300%;
        }
		h1{
			font-size: 250%;
		}
       button {
		   font-size: 250%;
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
		dl {
			display: flex;
			flex-wrap: wrap;
			width: 100%;
		}
		dt {
			width: 90%;
		}

		dd {
			width: 250%;
		}
    </style>

<title>passRegister</title>

<meta charset="UTF-8">
<title>passRegister</title>

</head>

<body>

	<p>アカウントを登録します</p>
	<h1>
		あなたのidは:<%=id%>です

	</p>
	<%
	if (session.getAttribute("pass") != null && !(Boolean) session.getAttribute("pass")
			&& request.getAttribute("passError") != null) {
		out.println("<p>");
		out.println(request.getAttribute("passError"));
		out.println("</p>");
	}
	%>
	</h1>
	<form action="PassRegister" method="post">
		<dl>
			<dt>パスワード</dt>
			<dd>
				<input type="password" name="password" />
			</dd>
		</dl>
		<button type="submit" name="passRegister">登録</button>
	</form>

</body>

</html>