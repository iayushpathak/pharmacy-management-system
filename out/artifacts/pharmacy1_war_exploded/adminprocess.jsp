


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Arka Jain Pharmacy</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Accountno must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
   }
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>
<body>
<div id="header">
	<div id="navigation">
    	<ul>
            <li><a href="index.jsp">HOME</a></li>
            <li><a href="about.jsp">ABOUT US</a></li>
            <li><a href="admin.jsp">AMDIN </a></li>
            <li><a href="distributer.jsp">DISTRIBUTER </a></li>
            <li><a href="customer.jsp">CUSTOMER</a></li>
            <li><a href="contactus.jsp">CONTACT US</a></li>
        </ul>	
    </div>
</div>

<table class="center" style="margin-left:auto;margin-right:auto;" width="100%" border="0" cellspacing="10" cellpadding="0" background="images/wp1931605.jpg">
  <tr align="center">
    <td valign="top">
    	
				   <%-- <table >--%>	
	
    	<% 
%>
<table width="300" border="0" cellspacing="10" cellpadding="0" align="center"><%
        
        String username=request.getParameter("username");
		String password=request.getParameter("password");
	    boolean status=verifyLogin2.checkLogin(username,password);
		
		try {
		if(status==true){
			out.print("Welcome    " + username);
		    //out.print("<table>");
			out.println("<br><br><a href='customeradmin.jsp' style='color:yellow;'> Click here to go to Customer Administration </a><br>");
			out.println("<br><a href='ordersadmin.jsp' style='color:yellow;'>Click here to go to Orders Administration </a><br>");
		   // out.print("</table>");
			
//			Connection con=GetCon.getCon();
//			PreparedStatement ps=con.prepareStatement("");
           			
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("aa","Please check your username and Password");
			%>
			<jsp:forward page="admin.jsp"></jsp:forward> 
			<% 
			}
		 }catch (Exception e) {
			e.printStackTrace();
		}
		
		//}
		
			//}
			%></table><%
%>
    	
    	
		<%-- </table>--%>


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.finalYearProject.*" %>
 
             	<%--</table>--%>
    
  </tr>
  <tr><td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td></tr>
</table>


<div id="content">
<table width="960" border="0" cellspacing="0" cellpadding="0">
  <tr align="justify">
    <td width="200" valign="top">
    	<img src="images/hioxindia-pharmacy_19.jpg" alt="" border="0" />    </td>
    <td width="760" valign="top">
        <h1>Welcome to Arka Jain Pharmacy </h1>
        <p>This is a Pharmaceutical Company designed by college students, for their final year project submission .
            Anyone wants good, professional, template for their pharmacy, drug store, medical store then they may contact us for the best one.
            This project is designed by professional designers to make your task much easier to understand.</p><br />

        <p>There are many other categories of website which we design so if you want to create a professional website then you can contact us. We design many categories of websites like Arts, Agriculture, Computers, Satellite, Cars, Finance, Nature, Music, Personal Website,
            Religious, Fashion, Furniture, Holiday, Travel, Night club.</p>
    </td>
  </tr>
</table>
</div>

<div id="footer">
  <div id="footer_1">
   		<ul>
        	<li><a href="#">HOME</a></li>
            <li><a href="#">ABOUT US</a></li>
            <li><a href="#">SPECIALS</a></li>
            <li><a href="#">ALL PRODUCTS</a></li>
            <li><a href="#">CONTACT US</a></li>
        </ul>	<br />
      <span id="design">Designed by Ayush Pathak & Debashish Bera</span>
      <script type="text/javascript">
          document.onload = ctck();
      </script>
  </div>
</div>
</body>
</html>

</head>

<body>








<div id="footer_top">
    <div id="footer_navigation">


    </div>

    <div id="footer_copyright" >
        <p></p>

        Copyright � Arka Jain University</div>
</div>

<script type="text/javascript">
    document.onload = ctck();
</script>
</div>

</body>
</html>

