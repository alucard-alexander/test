<%@page import="com.anu.DAO.ViewDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/HomeHeader.css">
<link rel="stylesheet" href="css/InputBox.css">
<link rel="stylesheet" href="css/itemsuser.css">


<style type="text/css">
.cen {
	justify-content: center;
	display: flex;
}

.con {
	top: 25%;
	position: absolute;
	max-width: 90%;
	max-height: 50%;
	display: flex;
}

.img1 {
	background-size: contain;
	display: flex;
	background-repeat: no-repeat;
	width: 500px;
	height: 500px;
	margin: 20px;
}

.details {
	font-size: 25px;
	color: white;
	margin: 20px;
	display: grid;
}

label b {
	font-size: 30px;
}

label{
	margin-right: 5px;
}
</style>

</head>
<body>

	<%
		//int id=Integer.parseInt(request.getParameter("id"));System.out.println(id);
		int id = 4;
	%>
	<%
		if (session.getAttribute("id") != null) {
	%>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2));">
		<div class="container1">
			<nav>
				<h1 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h1>
				<ul>
					<li><a href="UserOrderedList.jsp">Order List</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
					<li><a href="Logout.do">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<%
		} else {
	%>
	<header
		style="background: linear-gradient(rgba(0, 0, 0, 1), rgba(0, 0, 0, .2));">
		<div class="container1">
			<nav>
				<h1 class="brand">
					<a href="Index.jsp">Modern <span>B</span>asket
					</a>
				</h1>
				<ul>
					<li><a href="Login.jsp">Log in</a></li>
					<li><a href="UserRegiitemNameation.jsp">Register</a></li>
					<li><a href="ItemsUser.jsp">Items List</a></li>
					<li><a href="">About Us</a></li>
					<li><a href="">Contact Us</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<%
		}
	%>
	<%
		String[] itemName = new ViewDAO().getitemName_Price(id);
	%>
	<div class="cen">
		<div class="con">
			<div class="img1">
				<img src="itemsimages/<%=id%>.jpg">
			</div>
			<div class="details">
				<div>
					<label><b>Item Name: </b></label> <label><%=itemName[0].substring(0, 1).toUpperCase() + itemName[0].substring(1)%></label>
				</div>
				<div>
					<label><b>Item Price: </b></label> <label><%=itemName[1]%></label>
				</div>
				<div>
					<label><b>Quantity:</b></label><input type="number" name="quantity">
				</div>
				<div>
					<label style="margin-right: 30px; "><b>GST:</b></label><label>10%</label>
				</div>
				<div>
					<label><b>Total Cost:</b></label><label value="40"></label>
				</div>
			</div>
		</div>
	</div>
</body>
</html>