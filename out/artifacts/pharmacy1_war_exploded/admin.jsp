


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title> Arka Jain Pharmacy </title>
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
		   document.F1.username.focus()
		   return false
		}
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
            <li><a href="admin.jsp">ADMIN </a></li>
            <li><a href="distributerlogin.jsp">DISTRIBUTER </a></li>
            <li><a href="customer.jsp">CUSTOMER</a></li>
            <li><a href="contactus.jsp">CONTACT US</a></li>
        </ul>	
    </div>
</div>

<table class="center" style="margin-left:auto;margin-right:auto;" width="100%" border="0" cellspacing="10" cellpadding="0" background="images/wp1931605.jpg">
  <tr align="center">
     <td valign="top">
    
    	<form name=F1 onSubmit="return dil(this)" action="adminprocess.jsp" >
				   <table cellspacing="10" cellpadding="8">	
				  <%if(request.getAttribute("aa")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("aa")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
	    			<tr><td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">LOGIN ID:</td><td> <input type="text" name="username"/></td></tr>
					
					<tr><td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="Submit" style="font-size:7pt;color:white;
background-color:green;border:2px solid #336600;padding:3px;"/>
					
                   
                   <INPUT TYPE=RESET VALUE="CLEAR" style="font-size:7pt;color:white;
background-color:red;border:2px solid #336600;padding:3px;"></td></tr>
                   
             	</table>
				</form>
  		
			
		

    
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


<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
