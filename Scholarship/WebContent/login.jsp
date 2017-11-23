<%@ page language="java" import="java.sql.*"%>	
<%@ page language="java" import="javax.servlet.*"%>	
<html>	
<style>
.header {background-color:darkgreen;height:120;}
body{
background-color:#c6ffb3;
}

.sb {
	padding: 2px;
	color: red;
	border-radius: 17px
}

.sb:hover {
	color: yellow;
	border-radius: 7px;
	background-color: darkgreen;
}
</style>

<body>	
	<div class="header">
		<div style="float:left;height:100%;width:10%;background-color:white">
			<img src="pics/left.gif" height=108 width=135>
		</div>
		<div style="float:left;height:100%;width:80%">
			<center>
				<font color=white size=7 face="Lucida Calligraphy"><b>National Scholarship Portal</b></font><br>
				
			</center>
		</div>
		<div style="float:left;height:100%;width:10%;background-color:white">
			<img src="pics/right.gif" height=108 width=135>
		</div>
		</div>
		
	<br><br><br><br>
	
	<center>

						<form method="post">
						<fieldset style="width:50%;height:50%;margin-left:6.6%;border-radius:10px;background-color:#008000;outline:5px groove yellow;">
					<br><p>
						<center>
							<font color= "yellow" size=4 face="Lucida Handwriting" ><u><h2>Login</h2></u></font>
						</center><br><p>
							<font style="margin-left:10px;"size="4" color=yellow face="Lucida Handwriting">Login Id    : </font>
							<input type="text" name="loginid" size=30><br><br>
							<font style="margin-left:10px;"size="4" color="yellow" face="Lucida Handwriting">Password    : </font>
							<input type="password" name="password" size=30>
							<br><br>
							<table>
							<tr>
								<td><input type="submit" class="sb" name="submit"value="LOGIN"
									style="width: 100px; height: 27px;"></td>
						<!--  -	<td>
									
					&emsp;	&emsp;	&emsp;&emsp;&emsp;&emsp;<input type="submit" class="sb" name="forgot" value="forgot"
											style="width: 100px; height: 27px;"> 
									
								</td>-->
							</tr>	
						</table>
				</fieldset>
				</form>
	</center>

	<%
	
	if(request.getParameter("submit")!=null)
	{
		
	Connection con=null;
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","scholar","rider");
		
		}catch(Exception er){
		
		out.println(er.getMessage());
		
		 }
	try{
		String loginid1=request.getParameter("loginid");
		session.setAttribute("Login1",loginid1);
		int loginid=Integer.parseInt(request.getParameter("loginid"));
		String password=request.getParameter("password");
		PreparedStatement ps=con.prepareStatement("select * from login where loginid=? AND password=?");
		ps.setInt(1, loginid);
		ps.setString(2, password);
		
		ResultSet rs=ps.executeQuery();
		PreparedStatement prs=con.prepareStatement("select email from login where loginid=?");
		 
		prs.setInt(1,loginid);
		ResultSet rst=prs.executeQuery();
		String email="";
		if(rst.next())
		{
			email=rst.getString("email");
			session.setAttribute("email",email);
		}
         
		session.setAttribute("email",email);
		//out.println(session);
		
		
		if(rs.next())
		{%>
			
			<jsp:forward page="loginMediate.jsp"></jsp:forward>
		
		<%}else
		{%>
			<script> alert("Invalid Details")</script>
		<%}
		}
		
	catch(Exception e){
		e.printStackTrace();
	}
	}
	%>

<a href="home.jsp"><font color="black" face="times new ronman" size="5">[Home]</a>	
	 
</body>
</html>