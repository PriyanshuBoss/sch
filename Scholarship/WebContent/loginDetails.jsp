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
		.mybutton {padding:2px;color:red;border-radius:5px}
		.mybutton:hover{color:yellow;border-radius:7px;background-color:red;}
		body{
		background:white;
		}
	</style>
	<style>
		.name 
		{
			text-transform:capitalize;
		}
	</style>	
		 <SCRIPT language=Javascript>
      
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
      
   </SCRIPT>
   <script language="javascript" type="text/javascript">

        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if (charCode < 33 || (charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }

    </script>
   
</head>
<body >
<form method="post">

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
	<%String abc=request.getParameter("id");
				 
				%>
		<fieldset class="myfield">
		<table>
		<tr><td>
		<a href="loginMediate.jsp?id=<%=abc%>"><font color="black" face="times new ronman" size="5">[Back]</a>
	    <span style="display:inline-block; width: 1100;"></span>
		<a href="home.jsp"><font color="black" face="times new ronman" size="5">[Home]</a><td></tr>
		</table>
			<center>
				
				<br>
				<font face="times new roman" color=black size=5><b><u>STUDENT APPLICATION FORM</u></b></font><br><br><br>
				</font>
				</center>
				
				<table>
				<tr>
					<td>
						<font style="margin-left:40px;">Login id.  :  <input type="text"  name="loginId" readonly value="<%out.print(abc);%>"size=20 />
					</td>
					<td>
						<font style="margin-left:740px;">Scheme id.  :  <input type="text"  name="schemeId" size=20 />
					</td>
				</tr>
				</table>;
				<center>
				<br><hr>
				<table cellspacing=20>
					<tr>
						<td>Enter name : </td><td><input type="text" name="ename" class=name size=30 onkeypress="return onlyAlphabets(event,this);"></td>
						<td>Gender :</td><td><input type="text" name="gender" onkeypress="return onlyAlphabets(event,this);" ></td>
						    	
					</tr>
					<tr>
						<td>Father name:</td><td><input type="text" name="fname" size=30 class=name onkeypress="return onlyAlphabets(event,this);"/></td>
				<!-- 	<td>Date of Birth:</td><td><input name="dob"  placeholder = "dd/mm/yyyy" type="date" maxlength=10 pattern = "^\d{1,2}\/\d{1,2}\/\d{4}$" min="2000-01-01" max="2020-01-01" required="required" ></td>-->
					</tr>
					<tr>
						<td>Email Id : </td><td><input type="text"  name="email"  /></td>
						<td>Contact no : </td><td><input type="text" name="contactNo" size=30 id="text1" maxlength="10"  onkeypress="return isNumberKey(event);"/></td>
					</tr>
					<tr>
						<td>Enter City : </td><td><input type="text" name="city" size=30 class=name onkeypress="return onlyAlphabets(event,this);" /></td>
						<td>State : </td><td><input type="text" name="state" size=30 class=name onkeypress="return onlyAlphabets(event,this);"/></td>
					</tr>
					<tr>
						<td>Pincode : </td><td><input type="text" name="pincode" maxlength=6 size=30 onkeypress="return isNumberKey(event);"/></td>
					
					</tr>
					<tr>
						<td>Address :</td><td><textarea type="text" class=name name="address" cols=30 rows=2 ></textarea></td>
						<td>Course Name :</td>
						<td> 
							<select menu="Course Name" name="courseName">
								<option></option>
								<option value="B.A">B.A</option>
								<option value="B.Com">B.Com</option>
								<option value="B C A">B C A</option>
								<option value="B B A">B B A</option>
								<option value="B S C">B S C</option>
								<option value="B.Ed">B.Ed</option>
								<option value="B.tech">B.Tech</option>
								<option value="B.Pharma">B.Pharma</option>
								<option value="M.A">M.A</option>
								<option value="M.Com">M.Com</option>
								<option value="M C A">M C A</option>
								<option value="M B A">M B A</option>
								<option value="M S C">M S C</option>
								<option value="M.Tech">M.Tech</option>
								<option value="M.Pharma">M.Pharma</option>
								<option value="M.Ed">M.Ed</option>
							</select>
						</td>
					<tr>
					<td>College Name:</td><td><textarea type="text" class=name name="collegeName" cols=30 rows=2 onkeypress="return onlyAlphabets(event,this);"></textarea></td>
					<td>College Id : </td><td><input type="text" class=name name="collegeId" onkeypress="return isNumberKey(event);"/></td>
					</tr>	
					
					<tr>
					<td>Passing Year:</td><td><input type="text" class=name name="passingYear"  onkeypress="return isNumberKey(event);"/></td>
					<td>Current Percentage</td><td><input type="text" name="currentPercentage"  onkeypress="return isNumberKey(event);"/></td>
					</tr>
					
					<tr>
					<td>Fees:</td><td><input type="text" class=name name="fees"  onkeypress="return isNumberKey(event);" /></td>
					<td>Fee Reciept No.</td><td><input type="text" name="feesRecieptNo"/></td>
					</tr>
					
					<tr>
					<td>Caste:</td><td><input type="text" class=name name="caste" onkeypress="return onlyAlphabets(event,this);" /></td>
					<td>Caste Certificate No.</td><td><input type="text" name="casteCertificateNo" /></td>
					</tr>
					
					<tr>
					<td>Annual Income:</td><td><input type="text" class=name name="annualIncome"  onkeypress="return isNumberKey(event);"/></td>
					<td>Income Certificate No.</td><td><input type="text" name="IncomeCertificateNo"/></td>
					</tr>
					
					<tr>
					<td>Bank Name:</td><td><input type="text" class=name name="bankName" onkeypress="return onlyAlphabets(event,this);"/></td>
					<td>Bank IFSC:</td><td><input type="text" class=name name="bankIFSC" /></td>
					</tr>
					<tr>
					<td>Name on Account:</td><td><input type="text" class=name name="nameOnAccount"  onkeypress="return onlyAlphabets(event,this);"/></td>
					<td>Account No.:</td><td><input type="text" class=name name="accountNo" onkeypress="return isNumberKey(event);"/></td>
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
							<td>Marks Obtain :</td><td><input type="text" maxlength="3" name="marksObtainedHigh"  size="20" id="text1" onkeypress="return isNumberKey(event);"></td>
						</tr>
						<tr>
							<td>Subject  :</td><td><textarea type="text" class=name name="hSubject" cols=28 rows=2 onkeypress="return onlyAlphabets(event,this);"></textarea></td>
						</tr>
						<tr>
							<td>School  :</td><td><textarea type="text" name="hschool" class=name cols=28 rows=1 onkeypress="return onlyAlphabets(event,this);"></textarea></td>
							<td>Passing Year :</td><td><input type="text" name="hpassingyear" size="20" id="text1" maxlength="4" onkeypress="return isNumberKey(event);"></td>
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
							<td>Marks Obtain :</td><td><input type="text" name="marksObtainedInter" maxlength="3" size="20" id="text1" onkeypress="return isNumberKey(event);"></td>
						</tr>
						<tr>
							<td>Subject  :</td><td><textarea type="text" class=name name="ISubject" cols=28 rows=2 onkeypress="return onlyAlphabets(event,this);"></textarea></td>
						</tr>
						<tr>
							<td>School  :</td><td><textarea type="text" name="Ischool" class=name cols=28 rows=1 onkeypress="return onlyAlphabets(event,this);"></textarea></td>
							<td>IPassingYear :</td><td><input type="text" name="Ipassingyear" maxlength="4" size="20" id="text1" onkeypress="return isNumberKey(event);"></td>
						</tr>
					</table>
					</center>
	
			<center>
				<hr>
				<br>
				<input type="submit" class="mybutton" value="SUBMIT" name="submit" >
				<font style="margin-left:20px;">
				<input type="reset" class="mybutton" value="RESET" name=b2>
				</font>
				<br>
				<br>
			</center>
		</fieldset>
	
</form>

<%
if(request.getParameter("submit")!=null)
{
	
Connection con=null;
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE","scholar","rider");
	
	}catch(Exception er){
		out.println("connection fails");
	out.println(er.getMessage());
	
	 }
	
try{
int loginid=Integer.parseInt((String)request.getParameter("loginId"));

String name=request.getParameter("ename");
String gender=request.getParameter("gender");

String fname=request.getParameter("fname");
String dob=(String)request.getParameter("dob");

String email=request.getParameter("email");
String contactNo=request.getParameter("contactNo");

String city=request.getParameter("city");
String state=request.getParameter("state");

String pincode=request.getParameter("pincode");

String address=request.getParameter("address");
String courseName=request.getParameter("courseName");

String collegeName=request.getParameter("collegeName");
String collegeId=request.getParameter("collegeId");

String passingYear=request.getParameter("passingYear");
String currentPercentage=request.getParameter("currentPercentage");

String fees=request.getParameter("fees");
String feesRecieptNo=request.getParameter("feesRecieptNo");

String caste=request.getParameter("caste");
String casteCertificateNo=request.getParameter("casteCertificateNo");

String annualIncome=request.getParameter("annualIncome");
String IncomeCertificateNo=request.getParameter("IncomeCertificateNo");

String bankName=request.getParameter("bankName");
String bankIFSC=request.getParameter("bankIFSC");

String nameOnAccount=request.getParameter("nameOnAccount");
String accountNo=request.getParameter("accountNo");

String marksObtainedHigh=request.getParameter("marksObtainedHigh");
String hSubject=request.getParameter("hSubject");
String hSchool=request.getParameter("hschool");
String hpassingyear=request.getParameter("hpassingyear");

String marksObtainedInter=request.getParameter("marksObtainedInter");
String ISubject=request.getParameter("ISubject");
String Ischool=request.getParameter("Ischool");
String Ipassingyear=request.getParameter("Ipassingyear");
//out.println(name+" "+gender+""+fname+""+city+""+state+""+pincode+""+address+""+courseName+""+"  hjkgyhfm");
PreparedStatement ps=con.prepareStatement("insert into application values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2, gender);

ps.setString(3,fname);

ps.setString(4, city);
ps.setString(5,state);

ps.setString(6, pincode);
ps.setString(7,address);

ps.setString(8,courseName);

ps.setString(9,collegeName);
ps.setString(10, collegeId);

ps.setString(11,passingYear);
ps.setString(12, currentPercentage);

ps.setString(13,fees);
ps.setString(14, feesRecieptNo);

ps.setString(15,caste);
ps.setString(16, casteCertificateNo);

ps.setString(17,annualIncome);
ps.setString(18, IncomeCertificateNo);

ps.setString(19,bankName);
ps.setString(20, bankIFSC);

ps.setString(21,nameOnAccount);
ps.setString(22,accountNo);

ps.setString(23, marksObtainedHigh);
ps.setString(24,hSubject);
ps.setString(25, hSchool);
ps.setString(26,hpassingyear);


ps.setString(27,marksObtainedInter);
ps.setString(28, ISubject);
ps.setString(29,Ischool);
ps.setString(30, Ipassingyear);
ps.setInt(31, loginid);
ps.setString(32,dob);
ps.setString(33, contactNo);
ps.setString(34, email);
int k=ps.executeUpdate();
if(k!=0)
{
	response.sendRedirect("successApplication.html");
}
}catch(Exception e)
{%>
	<alert>You Form is Alrady Field</alert>
	
<%}
}

%>
</body>
</html>