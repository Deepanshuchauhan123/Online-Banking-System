<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.deepanshu.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Infinite Banking..</title>
		<link href="styles.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
			function ctck()
			{
				var sds = document.getElementById("dum");
			}
		</script>
	</head>
	<body>
		<div id ="top_links">
			
			<div id="header">
			
				<h1>INFINITE-BANK<span class="style1"></span></h1>
				<h2>ExtraOrdinary Service</h2>
				<A href="index.html"><img alt="Home Button" src="images/home1.gif"></A>
				
			</div>
			<div id="navigation">
				
				<ul>
				    <li><a href="create.html">NEW ACCOUNT</a></li>
				    <li><a href="balance1.jsp">BALANCE</a></li>
				    <li><a href="deposit1.jsp">DEPOSIT</a></li>
				    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
				    <li><a href="transfer1.jsp">TRANSFER</a></li>
				    <li><a href="closeac1.jsp">CLOSE A/C</a></li>
				    <li><a href="about.jsp">ABOUT US</a></li>
			    </ul>
				
			</div>
				<table style="width:897px; background:#FFFFFF; margin:0 auto;">
			
				<tr>
					<td width="300" valign="top" style="border-right:#666666 1px dotted;">
						<div id="services"><br>
							<h1>Services</h1><br>
							<ul>
								<li><a href="#">www.OnlineBanking.com</a></li>
					            <li><a href="#">www.Infinitebanking.com </a></li>
					            <li><a href="#">www.infinitebank.com/forum.jsp</a></li>
							</ul>
						</div>
					</td>
				 	
				 	<td width="1200" valign="top">
					 	<% %>
					 	
					 	<table>
					 		
					 		<%
					 			String num = request.getParameter("accountno");
					 			int accountno = Integer.parseInt(num);
					 			
					 			String username = request.getParameter("username");
					 			String password = request.getParameter("password");
					 			
					 			String num1 = request.getParameter("taccountno");
					 			int taccountno = Integer.parseInt(num1);
					 			
					 			String amoun = request.getParameter("amount");
					 			int accoun = Integer.parseInt(amoun);
					 			
					 			boolean status = verifyLogin1.checkLogin(accountno, username, password);
					 			
					 			try
					 			{
					 				
					 				if(status)
					 				{
					 					out.print("Welcome "+username);
				 					  	out.print("TARGET ACCOUNT NO DOES NOT EXSIT -->    " + taccountno);
				 		
					 						
					 					Connection con = GetCon.getcon();
					 					PreparedStatement ps = con.prepareStatement("select * from NEWACCOUNT where accountno='"+taccountno+"'");
					 					
					 				}else
					 				{
					 					
					 				}
					 				
					 			}catch(SQLException e)
					 			{
					 				e.printStackTrace();
					 			}
					 			
					 		%>
					 	</table>
	</body>
</html>