<%@ page language="java" import="java.sql.*"%>	
<%@ page language="java" import="javax.servlet.*"%>	
<html>	
<style>
.header {background-color:darkgreen;height:100;}
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
input:focus {
    outline:none;
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
	
<br><br>
<table>
<tr>
<td >
<%String abc=request.getParameter("id");%>
<a href="loginMediate.jsp?id=<%=abc%>"><font color="black" face="times new ronman" size="5">[Back]</a></td><td>
<span style="display:inline-block; width: 1100;"></span>
<a href="home.jsp"><font color="black" face="times new ronman" size="5">[Home]</a></td>
</tr>
</table>			
	<br><br><br><br>


	<%	
	Connection con=null;
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","scholar","rider");
		
		}catch(Exception er){
		
		out.println(er.getMessage());
		
		 }
	try{
		int loginid=Integer.parseInt(abc);
	    out.print(loginid);
		PreparedStatement ps=con.prepareStatement("select * from application where loginid=?");
		ps.setInt(1,Integer.parseInt(abc));

		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			
		session.setAttribute("loginid",loginid);
	    
		session.setAttribute("name", rs.getString(1));
		session.setAttribute("gender",rs.getString(2));
		session.setAttribute("fname", rs.getString(3));
		
		session.setAttribute("city", rs.getString(4));
		session.setAttribute("state",rs.getString(5));
		session.setAttribute("pincode", rs.getString(6));
		
		session.setAttribute("address", rs.getString(7));
		session.setAttribute("courseName",rs.getString(8));
		session.setAttribute("collegeName", rs.getString(9));
		session.setAttribute("collegeId", rs.getString(10));
		
		session.setAttribute("passingYear", rs.getString(11));
		session.setAttribute("currentPercentage",rs.getString(12));
		session.setAttribute("fees", rs.getString(13));
		
		session.setAttribute("feesRecieptNo", rs.getString(14));
		session.setAttribute("caste",rs.getString(15));
		session.setAttribute("casteCertificateNo", rs.getString(16));
		
		session.setAttribute("annualIncome", rs.getString(17));
		session.setAttribute("IncomeCertificateNo",rs.getString("INCOMECERTIFICATENO."));
		//out.println(rs.getString("INCOMECERTIFICATENO."));
		session.setAttribute("bankName", rs.getString(19));
		
		session.setAttribute("bankIFSC", rs.getString(20));
		session.setAttribute("nameOnAccount",rs.getString(21));
		session.setAttribute("accountNo", rs.getString(22));
		
		session.setAttribute("marksObtainedHigh", rs.getString(23));
		session.setAttribute("hSubject",rs.getString(24));
		session.setAttribute("hSchool", rs.getString(25));
		session.setAttribute("hpassingYear", rs.getString("HPASSINGYEAR"));
		//out.println(rs.getString("HPASSINGYEAR"));
		session.setAttribute("marksObtainedInter",rs.getString(27));
		session.setAttribute("ISubject", rs.getString(28));
		session.setAttribute("ISchool", rs.getString(29));
		session.setAttribute("IPassingYear",rs.getString("IPASSINGYEAR"));
		out.println(rs.getString("IPASSINGYEAR"));
		session.setAttribute("contactNo", rs.getString(33));
		
		session.setAttribute("email",rs.getString(34));
		%>
			<jsp:forward page="updateDetails.jsp"></jsp:forward>
		<%}else
		{%>
			<script>alert("invalid details")</script>
		<%}
	}
	catch(Exception e){
		e.printStackTrace();
	}finally{
		con.close();
	}
	
	%>


	 
</body>
</html>