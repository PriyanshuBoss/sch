<%@ page language="java" import="java.sql.*"%>	
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
		.mybutton {padding:2px;color:black;border-radius:5px}
		.mybutton:hover{color:yellow;border-radius:7px;background-color:darkgreen;}
		body{
		background:white;
		}
		
	@media print{
	#printPageButton{
	display:none;
	}
	#homeShow{
	display:none;
	}
	
	#formShow{
	display:inline-block;
	border:none
	}
	
	#fieldShow{
	display:inline-block;
	border:none
	}
	input[type=text] {
        display: inline-block;
        border:none;
     
    }
    input[type=number] {
        display: none;
    }
	}	
	</style>
	<style>
		.name 
		{
			text-transform:capitalize;
		}
	</style>	
		
   
   
   
</head>
<body >

<form method="post" id="formShow">

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
	<br>
		<fieldset class="myfield" id="fieldShow">
		<a href="home.jsp" id="homeShow"><font color="black" face="times new ronman" size="5">[Home]</a>
			<center>
					<div align="right">
				<button id="printPageButton" onclick="window.print();" class="mybutton" type="button" style="width: 150px; height: 27px;">
   						 PRINT</button>
   				</div>	
				<br>
				
				<font face="times new roman" color=black size=5><b><u>STUDENT APPLICATION FORM</u></b></font><br><br><br>
				</font>
				</center>
				 
				<table>
				<tr>
					<td>
						<font style="margin-left:40px;">Login id.  :  <input type="text"  size=20  name="loginId" readonly="readonly" value=<%=session.getAttribute("loginid") %> />
					</td>
					<td>
						
					</td>
				</tr>
				</table>;
				<center>
				<br><hr>
				
				<table cellspacing=20>
					<tr>
						<td>Enter name : </td><td><input type="text" name="ename" class=name size=30 readonly="readonly" value="<%=session.getAttribute("name") %>"></td>
						<td>Gender :</td><td><input type="text" name="gender" readonly="readonly" value=<%=session.getAttribute("gender") %> ></td>
						    	
					</tr>
					<tr>
						<td>Father name:</td><td><input type="text" name="fname" size=30 class=name readonly="readonly" value="<%=session.getAttribute("fname") %>"></td>
				<!-- 	<td>Date of Birth:</td><td><input name="dob"  placeholder = "dd/mm/yyyy" type="date" maxlength=10 pattern = "^\d{1,2}\/\d{1,2}\/\d{4}$" min="2000-01-01" max="2020-01-01" required="required" ></td>-->
					</tr>
					<tr>
						<td>Email Id : </td><td><input type="text"  name="email"  readonly="readonly" value=<%=session.getAttribute("email") %>></td>
						<td>Contact no : </td><td><input type="text" name="contactNo" size=30 id="text1" maxlength="10" readonly="readonly" value=<%=session.getAttribute("contactNo") %>></td>
					</tr>
					<tr>
						<td>Enter City : </td><td><input type="text" name="city" size=30 class=name readonly="readonly" value=<%=session.getAttribute("city") %> ></td>
						<td>State : </td><td><input type="text" name="state" size=30 class=name readonly="readonly" value=<%=session.getAttribute("state") %>></td>
					</tr>
					<tr>
						<td>Pincode : </td><td><input type="text" name="pincode" maxlength=6 size=30 readonly="readonly" value=<%=session.getAttribute("pincode") %>></td>
					
					</tr>
					<tr>
						<td>Address :</td><td><input type="text" class=name name="address"  readonly="readonly" value="<%=session.getAttribute("address") %>"></td>
						
							<td>Course Name:</td><td><input type="text" class=name name="passingYear"   value="<%=session.getAttribute("courseName") %>"></td>
					<tr>
					<td>College Name:</td><td><input type="text" class=name name="collegeName" readonly="readonly" value="<%=session.getAttribute("collegeName") %>"></td>
					<td>College Id : </td><td><input type="text" class=name name="collegeId" readonly="readonly" value="<%=session.getAttribute("collegeId") %>"></td>
					</tr>	
					
					<tr>
					<td>Passing Year:</td><td><input type="text" class=name name="passingYear"  readonly="readonly" value="<%=session.getAttribute("passingYear") %>"></td>
					<td>Current Percentage</td><td><input type="text" name="currentPercentage" readonly="readonly" value=<%=session.getAttribute("currentPercentage") %>></td>
					</tr>
					
					<tr>
					<td>Fees:</td><td><input type="text" class=name name="fees" readonly="readonly" value="<%=session.getAttribute("fees") %>"></td>
					<td>Fee Reciept No.</td><td><input type="text" name="feesRecieptNo"readonly="readonly" value=<%=session.getAttribute("feesRecieptNo") %>></td>
					</tr>
					
					<tr>
					<td>Caste:</td><td><input type="text" class=name name="caste" readonly="readonly" value=<%=session.getAttribute("caste") %>></td>
					<td>Caste Certificate No.</td><td><input type="text" name="casteCertificateNo" readonly="readonly" value=<%=session.getAttribute("casteCertificateNo") %>></td>
					</tr>
					
					<tr>
					<td>Annual Income:</td><td><input type="text" class=name name="annualIncome" readonly="readonly" value=<%=session.getAttribute("annualIncome") %>></td>
					<td>Income Certificate No.</td><td><input type="text" name="IncomeCertificateNo"readonly="readonly" value="<%=session.getAttribute("IncomeCertificateNo") %>"></td>
					</tr>
					
					<tr>
					<td>Bank Name:</td><td><input type="text" class=name name="bankName" readonly="readonly" value="<%=session.getAttribute("bankName") %>"></td>
					<td>Bank IFSC:</td><td><input type="text" class=name name="bankIFSC" readonly="readonly" value="<%=session.getAttribute("bankIFSC") %>"></td>
					</tr>
					<tr>
					<td>Name on Account:</td><td><input type="text" class=name name="nameOnAccount" readonly="readonly" value="<%=session.getAttribute("nameOnAccount") %>"></td>
					<td>Account No.:</td><td><input type="text" class=name name="accountNo" readonly="readonly" value=<%=session.getAttribute("accountNo") %>></td>
					</tr>
					</table>
					</center>
					<hr>
					<center>
					<table cellspacing=15>
						<tr>
							<ul>
								<h3><u><li  style="margin-right:55%;">High School</li></u></h3>
							</ul>
						</tr>
						<tr>
							<td>Total Marks  :</td><td><input type="text" maxlength="3" value="600" readonly="readonly" name="1" size="20" id="text1" onkeypress="return isNumberKey(event);"></td>
							<td>Marks Obtain :</td><td><input type="text" maxlength="3" name="marksObtainedHigh"  size="20" id="text1" readonly="readonly" value=<%=session.getAttribute("marksObtainedHigh") %>></td>
						</tr>
						<tr>
							<td>Subject :</td><td><input type="text" class=name name="hSubject" cols=28 rows=2 readonly="readonly" value="<%=session.getAttribute("hSubject") %>"></td>
						</tr>
						<tr>
							<td>School  :</td><td><input type="text" name="hschool" class=name cols=28 rows=1 readonly="readonly" value="<%=session.getAttribute("hSchool") %>"></td>
							<td>Passing Year :</td><td><input type="text" name="hpassingyear" size="20" id="text1" maxlength="4"readonly="readonly" value=<%=session.getAttribute("hpassingYear") %>></td>
						</tr>
					</table>
					</center>
					<center>
					<table cellspacing=15>
						<tr>
							<ul>
								<h3><u><li  style="margin-right:55%;">Intermediate</li></u></h3>
						</tr>
						<tr>
							<td>Total Marks  :</td><td><input type="text" name="6" maxlength="3" value=500 readonly="readonly" size="20" id="text1" onkeypress="return isNumberKey(event);"></td>
							<td>Marks Obtain :</td><td><input type="text" name="marksObtainedInter" maxlength="3" size="20" id="text1"readonly="readonly" value=<%=session.getAttribute("marksObtainedInter") %>></td>
						</tr>
						<tr>
							<td>Subject  :</td><td><input type="text" class=name name="ISubject" cols=28 rows=2 readonly="readonly" value=<%=session.getAttribute("ISubject") %>></td>
						</tr>
						<tr>
							<td>School  :</td><td><input type="text" name="Ischool" class=name cols=28 rows=1 readonly="readonly" value=<%=session.getAttribute("ISchool") %>></td>
							<td>Passing Year :</td><td><input type="text" name="Ipassingyear" maxlength="4" size="20" id="text1"readonly="readonly" value=<%=session.getAttribute("IPassingYear") %>></td>
						</tr>
					</table>
					</center>
			<br><br>		
	        <center>
			
   			</center>			 
		</fieldset>
	
</form>

</body>
</html>