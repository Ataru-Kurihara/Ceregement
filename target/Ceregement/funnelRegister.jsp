<%@ page import="java.util.Calendar"%><%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/28
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
		 pageEncoding="UTF-8"%>
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
		}
		p1{
			font-size: 200%;
		}
		h2 {
			border: 2px #808080 solid;
		}

		input[type="submit" i] {
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

		input[type="submit" i]:hover {
			-webkit-box-shadow: -10px -4px 0 #000;
			box-shadow: -10px -4px 0 #000;
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

		p {
			border: 2px red solid;
			font-weight: bold;
			font-size: 300%;
			color: red;
		}
	</style>
	<title>funnelRegister</title>
</head>
<body>
<%
	if (session.getAttribute("funeralerror") != null && !(Boolean) session.getAttribute("funeralerror")
			&& request.getAttribute("funeralerrormsg") != null) {
		out.println("<p>");
		out.println(request.getAttribute("funeralerrormsg"));
		out.println("</p>");
%>
<script type="text/javascript">
	const msg = '<%=request.getAttribute("funeralerrormsg")%>';
	alert(msg)
</script>
<%
	}
%>
<h1>葬儀情報を入力してください</h1>
<p1>※項目は必須入力です</p1>
<h2>故人の氏名</h2>
<form method="post" action="FunnelRegister">
	<form method="post" action="FunnelRegister">
		<p2>(姓)</p2>
		<input type="text" name="deceasedFamilyName" maxlength="64">
		<p2>(名)</p2>
		<input type="text" name="deceasedFirstName" maxlength="64"> <br>
		<h2>命日</h2>
		<select name="deathYear">
		<%
			<input type="text" name="deceasedFamilyName">
			<p2>(名)</p2>
			<input type="text" name="deceasedFirstName"> <br>
			<h2>命日</h2>
			<select name="deathYear">
		<%

			Calendar calendar = Calendar.getInstance();
			for (int i = 0; i <= 100; i++) {
				String year = String.format("%tY", calendar) + "年";
				calendar.add(Calendar.YEAR, -1);
		%>
		<option value="<%=year%>"><%=year%></option>
		<%
			}
		%>
	</select>
	<p2>年</p2>
	<select name="deathMonth">
		<%
			for (int i = 1; i <= 12; i++) {
				String month = String.valueOf(i) + "月";
		%>
		<option value="<%=month%>"><%=month%></option>
		<%
			}
		%>
	</select>
	<p2>月</p2>
	<select name="deathDay">
		<%
			for (int i = 1; i <= 31; i++) {
				String day = String.valueOf(i) + "日";
		%>
		<option value="<%=day%>"><%=day%></option>
		<%
			}
			%>
		</select>
		<p2>日</p2>
		<h2>葬儀会場名</h2>
		<label> <input type="text" name="funnelPlace" value="会場名" maxlength="64">
		</label><br>
		<h2>葬儀会場住所</h2>
		<label> <input type="text" name="funnelPlaceAddress"
			value="--県--市" maxlength="64">
		</label><br>
	<h2>葬儀日時</h2>
	<select name="funnelYear">
		<%
			Calendar calendar1 = Calendar.getInstance();
			for (int i = 0; i <= 100; i++) {
				String year = String.format("%tY", calendar1) + "年";
				calendar1.add(Calendar.YEAR, -1);
		%>
		<option value="<%=year%>"><%=year%></option>
		<%
			}
		%>
	</select>
	<p2>年</p2>
	<select name="funnelMonth">
		<%
			for (int i = 1; i <= 12; i++) {
				String month = String.valueOf(i) + "月";
		%>
		<option value="<%=month%>"><%=month%></option>
		<%
			}
		%>
	</select>
	<p2>月</p2>
	<select name="funnelDay">
		<%
			for (int i = 1; i <= 31; i++) {
				String day = String.valueOf(i) + "日";
		%>
		<option value="<%=day%>"><%=day%></option>
		<%
			}
		%>
	</select>
	<p2>日</p2>
	<select name="funnelHour">
		<%
			for (int i = 0; i <= 24; i++) {
				String hour = String.valueOf(i) + "時";
		%>
		<option value="<%=hour%>"><%=hour%></option>
		<%
			}
		%>
	</select>
	<p2>時</p2>
	<select name="funnelMinute">
		<%
			for (int i = 0; i <= 59; i++) {
				String minute = String.valueOf(i) + "分";
		%>
		<option value="<%=minute%>"><%=minute%></option>
		<%
			}
			%>
		</select>
		<p2>分</p2>
		<br>
		<h2>喪主氏名</h2>
		<p2>(姓)</p2>
		<label> <input type="text" name="bereavementFamilyName" maxlength="64">
		</label>
		<p2>(名)</p2>
		<label> <input type="text" name="bereavementFirstName" maxlength="64">
		</label><br>
		<h2>住所</h2>
		<p2>〒</p2>
		<label> <input type="text" name="postalcode" maxlength="64">
		</label>
		<p2>(半角数字)</p2>
		<br> <label> <input type="text" name="address" maxlength="64">
		</label><br>
		<h2>電話番号</h2>
		<label> <input type="text" name="phonenumber" maxlength="64">
		</label>
		<p2>(半角数字)</p2>
		<br> <br> <input type="submit" name="registration"
			value="登録"> <a href="ReFunnelRegister"></a>
	</form>
	<button type="button" name="back">
		<a href="OrganizerSelection">戻る</a>
	</button>
	</select>
	<p2>分</p2>
	<br>
	<h2>喪主氏名</h2>
	<p2>(姓)</p2>
	<label> <input type="text" name="bereavementFamilyName"
				   value="電大">
	</label>
	<p2>(名)</p2>
	<label> <input type="text" name="bereavementFirstName"
				   value="花子">
	</label><br>
	<h2>住所</h2>
	<p2>〒</p2>
	<label> <input type="text" name="postalcode" value="000-000">
	</label>
	<p2>(半角数字)</p2>
	<br> <label> <input type="text" name="address"
						value="--県--市">
</label><br>
	<h2>電話番号</h2>
	<label> <input type="text" name="phonenumber"
				   value="08000000000">
	</label>
	<p2>(半角数字)</p2>
	<br> <br> <input type="submit" name="registration"
					 value="登録"> <a href="ReFunnelRegister"></a>
</form>
<button type="button" name="back">
	<a href="OrganizerSelection">戻る</a>
</button>
</body>
</html>