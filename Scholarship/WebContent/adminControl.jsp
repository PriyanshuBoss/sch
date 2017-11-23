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
<%
Connection con=null;
try
{
							
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","scholar","rider");
	PreparedStatement ps=con.prepareStatement("select * from application");
	ResultSet rs=ps.executeQuery();
	
	%>
	<table border=1px>
			<tr>
				<th><font face="times new roman"  color=" #000080 " size=5>NAME.</th>
				<th><font face="times new roman"  color=" #000080 " size=5>LOGIN</th>
				<th><font face="times new roman"  color=" #000080 " size=5>PASSWORD</th>
				<th><font face="times new roman"  color=" #000080 " size=5>COURSE</th>
				<th><font face="times new roman"  color=" #000080 " size=5>PERCENTAGE</th>
				<th><font face="times new roman"  color=" #000080 " size=5>CATEGORY</th>
				<th><font face="times new roman"  color=" #000080 " size=5>CASTECERTIFICATE</th>	
				<th><font face="times new roman"  color=" #000080 " size=5>INCOME</th>
				<th><font face="times new roman"  color=" #000080 " size=5>INCOMECERTIFICATE</th>
							
			</tr>

	<%
	
	String str="";
	String pass="";
	while(rs.next())
	{
		boolean bl=false;
    
		if(!bl)
		{
			
			str=rs.getString("LOGINID");
			//out.println(str);
			PreparedStatement pst=con.prepareStatement("select password from login where loginid="+str);
			ResultSet rst=pst.executeQuery();
			if(rst.next())
				pass=rst.getString("PASSWORD");
			out.println(pass);
			bl=true;
		}
	    out.print("<tr>");
	    out.println("<td>"+
		rs.getString(1)+"</td><td>"+
		rs.getString("LOGINID")+"</td><td>"+ pass +"</td><td>"+
		 rs.getString("COURSENAME")+"</td><td>"+
		
		 rs.getString("CURRENTPERCENTAGE")+"</td><td>"+
		rs.getString("CASTE")+"</td><td>"+
		rs.getString("CASTECERTIFICATENO")+"</td><td>"+
		
		 //rs.getString(7)+"</td><td>"+
		rs.getString("ANNUALINCOME")+"</td><td>"+
		 rs.getString("INCOMECERTIFICATENO.")+"</td>");
		/*rs.getString(10)+"</td><td>"+
		
		 rs.getString(11)+"</td><td>"+
		rs.getString(12)+"</td><td>"+
		 rs.getString(13)+"</td><td>"+
		
		rs.getString(14)+"</td><td>"+
		rs.getString(15)+"</td><td>"+
		 rs.getString(16)+"</td><td>"+
		
		 rs.getString(17)+"</td><td>"+
		rs.getString("INCOMECERTIFICATENO.")+"</td><td>"+
		//rs.getString("INCOMECERTIFICATENO."
		rs.getString(19)+"</td><td>"+
		
		 rs.getString(20)+"</td><td>"+
		rs.getString(21)+"</td><td>"+
		 rs.getString(22)+"</td><td>"+
		
		 rs.getString(23)+"</td><td>"+
		rs.getString(24)+"</td><td>"+
		 rs.getString(25)+"</td><td>"+
		 rs.getString("HPASSINGYEAR")+"</td><td>"+
		//rs.getString("HPASSINGYEAR"
		rs.getString(27)+"</td><td>"+
		rs.getString(28)+"</td><td>"+
		 rs.getString(29)+"</td><td>"+
		rs.getString("IPASSINGYEAR")+"</td><td>"+
		rs.getString("IPASSINGYEAR")+"</td><td>"+
		 rs.getString(33)+"</td><td>"+
		
		rs.getString(34)+"</td>");*/
		
	    out.print("</tr>");
	  
	}
	  out.print("</table>");					
 }
 catch(Exception e)
 {	
						  
out.write(e.getMessage());
}
				   
%>				   
</body>
</html>