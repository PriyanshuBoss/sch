<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="javax.servlet.*"%>	
<html>
	<head>
		<title>National Scholarship Portal</title>
		<style type="text/css">
			.nav ul{list-style;none;margin-top:0px;padding:0px}
			.nav li{float:left;width:120px;height:31px;list-style:none;background-color:#c6ffb3;text-align:center;color:red;position:relatie;line-height:31px;}
			.nav li ul li {float:none;width:120px;height:31px;text-align:left-20px;padding-left:0px;border-top:0px solid white;background-color:#c6ffb3;color:white;}
			.nav a{text-decoration:none;color:black;}
			.nav li ul{position:relative;top:px;lef:0px;visibility:hidden;}
			.nav li:hover {background-color:darkgreen;color:black;}
			.nav li:hover ul{visibility:visible;}
			.nav li ul li:hover {background-color:darkgreen;}
			.mybutton {padding:2px;color:red;border-radius:5px}
			.mybutton:hover{color:yellow;border-radius:7px;background-color:white;}
		</style>
	</head>
<body bgcolor=#c6ffb3 style="margin:0">
<form method="post">
	<div style="background-color: 	#008000  ;height:17%">
		<div style="float:left;height:100%;width:10%;background-color:white">
			<img src="pics/left.gif" height=108 width=135>
		</div>
		<div style="float:left;height:100%;width:80%">
			<center>
				<font color=cyan size=7 face="Lucida Calligraphy"><b>National Scholarship Portal</b></font><br>
				
			</center>
		</div>
		<div style="float:left;height:100%;width:10%;background-color:white">
			<img src="pics/right.gif" height=108 width=135>
		</div>
	</div>
	<div style="background-color:light yellow ;height:6%;width:100%">
		<marquee behavior="alternate" width="100%" height=30px style="margin-top:10px;"><font face="Lucida Handwriting" color="green" size=3>Devloped By Priyanshu</font></marquee>
	</div>
	<div style="width:100%;height:10%;background-color: #008000 ;" class="nav">
		<center><font size=4 >
<li style="margin-left:27%;margin-top:18px;">Student Login
	<ul>
		<li><a href="login.jsp">Login </a></li>
		<li><a href="registration.jsp">Registration</a></li>
		
	</ul>
</li>
<li style="margin-left:5px;margin-top:18px;">About Us
<ul>
<li><a href="aboutUs.html">About Us</a></li>
<!-- <li><a href="">State</a></li>-->
</ul>
</li>
<li style="margin-top:18px;margin-left:5px;">Contact Us
	<ul>
		<li><a href="contact.pdf" target="blank">ContactDetails</a></li>
		<li><a href="helpline.html">Helpline</a></li>
	</ul>
</li>
<!--
<li style="margin-top:18px;margin-left:5px">LOGIN
	<ul>
		<li><a href="">College Login</a></li>
	
		<li><a href="">Government </a></li>
	</ul>
</li>
-->
<li style="margin-top:18px;margin-left:5px;">Help
	<ul>
		<li><a href="http://www.google.com">online help</a></li>
		<!-- <li><a href="priyanshu.pdf" target="blank">Instruction</a></li>
		<li><a href="http://www.google.com">Last Date</a></li>
		 -->
	</ul>
</li>
</center>
</font>
	</div>
	<hr color= 	#32CD32>
	<div style="height:98.3%;width:35%;background-color: ;float:left;">
		<div style="height:37%;width:100%;background-color: #32CD32">
			<img src="pics/leftDown.png" width="100%" height="100%">
		</div>
		<hr color=#32CD32>
		<div style="height:60%;width:100%;background-color: #008000  ;">
				<br><br><p> 
				<fieldset style="width:80%;height:70%;margin-left:6.6%;border-radius:10px;background-color:#008000;outline:5px groove yellow;">
					<br><p>
						<center>
						
							<font color= "yellow" size=4 face="Lucida Handwriting" ><u>Adminstration Login</u></font>
						</center><br><p>
							<font style="margin-left:10px;"size="4" color=yellow face="Lucida Handwriting">Admin Id    : </font>
							<input type="text" name="t1" size=30><br><br>
							<font style="margin-left:10px;"size="4" color="yellow" face="Lucida Handwriting">Password    : </font>
							<input type="password" name="t2" size=30>
							<br><br>
							<center>
							<input type="submit" class="mybutton" name="submit" value="submit"></font>
							
				</fieldset> 
		</div>
	</div>
	
	<div style="height:100%;width:63%;background-color:;float:left;margin-left:1%;">
		<img src="pics/frame.gif" width="100%" height="85%" vspace=0px>
		<div style="height:11%;width:100%;background-color:#008000;float:left;margin-left:0%;margin-top:1.6%;">
			<center>
						<font face="Lucida Calligraphy" color="yellow" size="3"><br>
						WebMaster:Priyanshu </br>
						For Information:webmaster12@gmail.com</font>
			</center>
		</div>
	</div>
  <%
					
					if(request.getParameter("submit")!=null)
					{	
						String n,p;
						Connection con=null;
						n=request.getParameter("t1");
						p=request.getParameter("t2");
						try
						{
							
							Class.forName("oracle.jdbc.driver.OracleDriver");
							con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","scholar","rider");
							PreparedStatement ps=con.prepareStatement("select * from admin where NAME=? AND PASS=?");
							ps.setString(1,n);
							ps.setString(2,p);
							ResultSet res=ps.executeQuery();
							
							if(!res.next())
							{
							%>
							<script language="JavaScript">
								alert("Incorrect Admin Id and Password!");
							</script>
							<%
							}
							else
							{
							%>
								<jsp:forward page="adminControl.jsp" />
							<%
							}
					   }
					   catch(Exception e)
					   {
						   e.printStackTrace();
					   }
				   }
					%>
	



</form>
</body>
</html>

