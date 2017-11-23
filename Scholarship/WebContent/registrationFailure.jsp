<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NATIONAL SCHOLARSHIP PORTAL</title>
</head>

<style>
body{
background-repeat: no-repeat;
background: #c6ffb3;
}

</style>
<h1> REGISTRATION FAILED</h1><br><br>

<body>

<%
boolean bl=false;
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String cpassword = request.getParameter("cpassword");

if(name.equals("")&&email.equals("")&&password.equals("")&&cpassword.equals(""))
	out.println("YOU HAVE NOT ENTERED ANYTHING");
else
if(name.equals("")){bl=true;
	out.println("ENTER VALID NAME");}
else if(email.equals("")){bl=true;
	out.println("ENTER VALID EMAIL ID");}
else if(password.equals("")){bl=true;
	out.println("PASSWORD CANT BE EMPTY");}
else if(!password.equals(cpassword)){bl=true;
	out.println("PASSWORD AND CONFIRM PASSWORD DOES NOT MATCH");}

if(!bl)
{%>

<script type="text/javascript">alert("email id must be unique")</script>
<%}
%>

<a href="home.jsp"><font color="black" face="times new ronman" size="5">[Home]</a>
</body>
</html>