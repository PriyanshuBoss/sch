<html>
<head>
	<title>NATIONAL SCHOLARSHIP PORTAL</title>
	<style type="text/css">
		* {padding:0;margin:0;}
		.header {background-color:darkgreen;height:120;}
		.header h1{font-size:40;color:white; line-height:80px;}
		.header h2{color:white;}
		.header img {float:left;height:113px; width:150px; margin-left:5;margin-top:5;margin-right:20px;}
		.content {float:left;width:400px;}	
		.myfield {width:1290px;margin-left:36px;margin-top:15px;padding:0px;border-radius:10px;
		          background-color:#c6ffb3;outline:5px groove maroon;outline-offset:20px;}
		.mybutton {padding:2px;color:red;border-radius:5px}
		.mybutton:hover{color:yellow;border-radius:7px;background-color:darkgreen;}
		body{
	background-color:#c6ffb3;
		}
		.imgDes {
		margin-top: 10px;
  margin-left: 250px;
  overflow: hidden;
  text-align: right;
  
}
	</style>
	
<SCRIPT type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</SCRIPT>	

</head>	
<body  onload="noBack();" 
	onpageshow="if (event.persisted) noBack();" onunload="">
<div class="container">
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
			
		</div>
	</div>
	

<% 

String abc=(String)session.getAttribute("Login1"); 
if(abc==null)
	abc=request.getParameter("id");
%>

<table >
<tr>
<td style="vertical-align:top">
<br><br>
<button onclick="location.href='loginDetails.jsp?id=<%=abc%>'" class="mybutton" type="button" style="width: 200px; height: 37px;">
     APPLICATION FORM</button>


  <br><br><br><br>    
<button onclick="location.href='printLogin.jsp?id=<%=abc%>'" class="mybutton" type="button" style="width: 200px; height: 37px;">
     PRINT FORM</button>
 <br><br><br><br>
<button onclick="location.href='logout.html'" class="mybutton" type="button" style="width: 200px; height: 37px;">
     LOGOUT</button>	
<br><br><br><br>
<button onclick="location.href='home.jsp'" class="mybutton" type="button" style="width: 200px; height: 37px;">
    HOME</button>	      
</td>
<td>	 

<img src="pics/login.jpg" style="height:500px;"class="imgDes">

</td>
</tr>
</table>
</body>
</html>