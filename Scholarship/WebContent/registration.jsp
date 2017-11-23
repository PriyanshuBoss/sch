<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.util.regex.Matcher"%>
<%@ page language="java" import="java.util.regex.Pattern"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>




<style>
body {
	background-repeat: no-repeat;
	background: #c6ffb3;
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
}
}
</style>
</head>

<div align="right">

	<body>

		<table>
			<tr>
				<td><image src="pics/reg.jpg" /></td>
				<td>

					<form  method=post>
						<table cellspacing=20>

							<tr>
								<h2>
									<u><center>STUDENT REGISTRATION FORM</center> </u>
								</h2>
								<td><h3>NAME :</h3></td>
								<td><input type="text" name="name" required
									style="width: 406px; height: 25px; font-size: 21px; font-family: Arial" />
								</td>
							</tr>


							<tr>
								<td><h3>EMAIL:</h3></td>
								<td><input type="text" name="email"  required
									style="width: 406px; height: 25px; font-size: 21px; font-family: Arial" /></td>
							</tr>

							<tr>
								<td><h3>PASSWORD:</h3></td>
								<td><input type="password" name="password"  required
									style="width: 406px; height: 25px; font-size: 21px; font-family: Arial" /></td>
							</tr>

							<tr>
								<td><h3>CONFIRM PASSWORD:</h3></td>
								<td><input type="password" name="cpassword"  required
									style="width: 406px; height: 25px; font-size: 21px; font-family: Arial" /></td>
							</tr>
						</table>

						<table>
							<tr>
								<td><input type="submit" class="sb" name="submit"value="REGISTER"
									style="width: 200px; height: 37px;"></td>
								<td>
									<div align="right">
										<input type="reset" class="sb" value="RESET"
											style="width: 200px; height: 37px;">
									</div>
								</td>
								
						</table>
						
						</table>
						
						<%
						boolean bl=false;
						
						if(request.getParameter("submit")!=null)
						{
							
						Connection con=null;
							try {
								
								Class.forName("oracle.jdbc.driver.OracleDriver");
								con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","scholar","rider");
							
							}catch(Exception er){
							
							%>
							
							 <jsp:forward page="registrationFailure.jsp"></jsp:forward>
							
							
							<%}
                         try{
                        	boolean nameCheck=false;
                        	
						String name = request.getParameter("name");
						String email = request.getParameter("email");
						String password = request.getParameter("password");
						String cpassword = request.getParameter("cpassword");
						name=name.toLowerCase().trim();
						for(int i=0;i<name.length();i++)
						{
							char temp=name.charAt(i);
							if(temp==32)continue;
							if(temp<'a'||temp>'z'){
								nameCheck=true;
								break;
							}
						}
						
						int r=0;
						for(int i=0;i<email.length();i++)
						{
							char temp=email.charAt(i);
							if(temp=='@')
								r++;
							
						}
						out.println(nameCheck);
						if(!password.equals(cpassword)||email.indexOf('@')==-1||nameCheck||r!=1)
						{%>
						
							<jsp:forward page="registrationFailure.jsp"></jsp:forward>
						<%}
                        PreparedStatement ps=con.prepareStatement("insert into registration values(?,?,?,?)");

                        ps.setString(1,name);
                        ps.setString(2,email);
                        ps.setString(3,password);
                        ps.setString(4,cpassword);
                        
                       ps.executeUpdate();
                       bl=true;
                        if(bl){%>
                     <jsp:forward page="registrationSucess.jsp"></jsp:forward>
<%}                       
}catch(Exception e){
	//out.print(e.getMessage());
%>

 <jsp:forward page="registrationFailure.jsp"></jsp:forward>

<%}
}
	
 %>						

<a href="home.jsp"><font color="black" face="times new ronman" size="5">[Home]</a>
</form>

	</body>
</div>
</html>