<%@page import="web.*"%>
<%@page import="actors.*"%>
<%@page import="backend.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Swipe Id Card</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/jquery.scrollgress.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<noscript>
	<link rel="stylesheet" href="css/skel.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-wide.css" />
</noscript>
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body class="landing">

	<!-- Header -->



	<!-- CTA -->
	<section id="cta">

		<h2>Swipe Id Card</h2>
		<p id="resultswipe"></p>

		<form action="swipeidcard.jsp">
			<div class="row uniform 50%">
				<div class="8u 12u(3)">
					<input type="hidden" name="action" value="swipe" /> <input
						type="text" name="id" id="id" placeholder="Enter ID. Number" />
				</div>
				<div class="4u 12u(3)">
					<input type="submit" value="Swipe It..!" class="fit" />
				</div>
			</div>
		</form>

	</section>
	<section>
		<%
			String valid = null;
			boolean f = false;
			if (request.getParameter("action") != null
					&& request.getParameter("action").equals("swipe")) {
				valid = SwipeIdCard.validateId(request.getParameter("id"));
				f = true;
			}
		%>
		<center>
			<h2><%=!f ? "" : valid == null ? "Success!"
					: "<span style='color:red'>Failed!</span><br/>" + valid%></h2>
		</center>
	</section>


</body>
</html>