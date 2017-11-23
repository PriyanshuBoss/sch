<%@page language="java" import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NATIONAL SCHOLARSHIP PORTAL</title>
</head>
<h1><u>REGISTRATION SUCESSFUL</u></h1>

<style>
body{
background-repeat: no-repeat;
background: #c6ffb3;
}

</style>
<a href="home.jsp"><font color="black" face="times new ronman" size="5">[Home]</a>
<body >
<h2>
<%
Connection con=null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","scholar","rider");
}catch(Exception e){
	out.println(e.getMessage());
}

try{
	
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String res=email;
	PreparedStatement ps=con.prepareStatement("insert into login values(loginsequence.nextval,?,?)");
	ps.setString(1, email);
	ps.setString(2, password);
	ps.executeUpdate();
	PreparedStatement pr=con.prepareStatement("select * from login where email=?");
	pr.setString(1, res);
	ResultSet rs=pr.executeQuery();
	if(rs.next()){
		out.println("Your Login Id :");%>
		<br><br>
		<%
		out.print(rs.getInt(1));
		%>
		<br><br>
		<%
		out.println("Please save it for future References");
		
	}
}catch(Exception e){
	
	out.println(e.getMessage());
}

%>
</h2>
</body>
</html>