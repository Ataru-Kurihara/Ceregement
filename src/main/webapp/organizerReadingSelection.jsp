<%--
  Created by IntelliJ IDEA.
  User: ataru
  Date: 2022/11/30
  Time: 1:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
	<style>
		h1 {
			font-size: 300%;
			text-align: center;
		}

		a {
			font-size: 250%;
			display: block;
			margin: auto;
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

		a:hover {
			-webkit-box-shadow: -10px -4px 0 #000;
			box-shadow: -10px -4px 0 #000;
		}
	</style>
	<title>organizerReadingSelection</title>

	<style>
		body {
			background: linear-gradient(white, mediumpurple);
			background-size: cover;
			font-family: sans-serif;
			text-align: center;
		}

		h1 {
			font-family: 'Homemade Apple', cursive;
			font-size: 500%;
			color: black;
			text-align: center;
		}

		a {
			font-size: 250%;
		}

		p {
			border: 2px red solid;
			font-weight: bold;
			font-size: 300%;
			color: red;
		}
	</style>
</head>
<body>
<%
	if (session.getAttribute("organizer") != null && !(Boolean) session.getAttribute("organizer")
			&& request.getAttribute("errorOrganizer") != null) {
		out.println("<p>");
		out.println(request.getAttribute("errorOrganizer"));
		out.println("</p>");
%>
<script type="text/javascript">
	const msg = '<%=request.getAttribute("errorOrganizer")%>';
	alert(msg)
</script>
<%
	}
%>
<%
	if (session.getAttribute("participant") != null && !(Boolean) session.getAttribute("participant")
			&& request.getAttribute("errorParticipant") != null) {
		out.println("<p>");
		out.println(request.getAttribute("errorParticipant"));
		out.println("</p>");
%>
<script type="text/javascript">
	const msg = '<%=request.getAttribute("errorParticipant")%>
	';
	alert(msg)
</script>
<%
	}
%>
	<h1>選択してください</h1>
	<button type="button" name="funnelInformation">
		<a href="FunnelReading">葬儀情報</a>
	</button>
	<button type="button" name="participantInformation">
		<a href="ParticipantListReading">参列者情報</a>
	</button>
	<button type="button" name="back">
		<a href="OrganizerSelection">戻る</a>
	</button>
</body>
</html>
