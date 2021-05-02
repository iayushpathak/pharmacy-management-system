


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Arka Jain Pharmacy</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
</script>


<head>
<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.productname.focus()
		   return false
		}
   }
 if(!isNaN(document.F1.productname.value))
   {
       alert("productname  must  be  char's & can't be null")
	   document.F1.productname.value=""
	   document.F1.productname.focus()
	   return false
   }
  
  
	
	 if(isNaN(document.F1.tax.value))
   {
       alert("tax field must  be  number & can't be null")
	   document.F1.tax.value=""
	   document.F1.tax.focus()
	   return false
   }
  
    if(isNaN(document.F1.minq.value))
   {
       alert("min quanty of order field must  be  number & can't be null")
	   document.F1.minq.value=""
	   document.F1.minq.focus()
	   return false
   }
    if(isNaN(document.F1.orderq.value))
   {
       alert("Ordering Qty field must  be  number & can't be null")
	   document.F1.orderq.value=""
	   document.F1.orderq.focus()
	   return false
   }
    if(isNaN(document.F1.discount.value))
   {
       alert("discount field must  be  number & can't be null")
	   document.F1.discount.value=""
	   document.F1.discount.focus()
	   return false
   }
    if(isNaN(document.F1.netcost.value))
   {
       alert("Netcost field must  be  number & can't be null")
	   document.F1.netcost.value=""
	   document.F1.netcost.focus()
	   return false
   }
    if(isNaN(document.F1.amount.value))
   {
       alert("tax field must  be  number & can't be null")
	   document.F1.amount.value=""
	   document.F1.amount.focus()
	   return false
   }
   
   

   return true   
   }
</SCRIPT>
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
			
				<form name=F1 onSubmit="return dil(this)" action="orderdetail.jsp" >
				  <table cellspacing="5" cellpadding="3">	
				  <TR>
	<TD style="color:yellow;"> Product Name : </TD> <TD> <SELECT NAME="ProdCode">
									<option value="paracetamol"> Paracetamol
									<option value="Zintec"> Zintec
									<option value="Dettol"> Dettol
									<option value="Volini Spray"> Volini Spray
									<option value="Acenac"> Acenac
                                    <option value="Aceon"> Aceon
                                    <option value="Acetamophin"> Acetamophin
                                    <option value="Apriso"> Apriso
                                    <option value="Aransap"> Aransap
                                    <option value="Gabitril"> Gabitril

									
									</SELECT> 
							  </TD>
	
</TR>


					
					<tr><td style="color:yellow;">Ordering Qty :</td><td> <input type="text" name="orderq"/></td></tr><tr><td style="color: yellow;">Delivery Address:</td><td><input type="text" name="Address"/></td></tr>
					<tr><td style="color:yellow;">Discount :</td><td> <input type="text" name="discount"/></td></tr>
					<tr><td style="color:yellow;">Net cost:</td><td> <input type="text" name="netcost"/></td></tr>
					<tr><td style="color:yellow;">Amount:</td><td> <input type="text" name="amount"/></td></tr>
					
<TR><TD style="color:yellow;">  Mode of Payment: </TD>
	
			<TD style="color:red;"> Cash  <INPUT TYPE="radio" NAME="r1" VALUE="cash"></TD>
	
			<TD style="color:red;"> Card   <INPUT TYPE="radio" NAME="r1" VALUE="DD"></TD>
</TR>
	
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
        	<li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
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

        Copyright © Arka Jain University</div>
</div>

<script type="text/javascript">
    document.onload = ctck();
</script>
</div>

</body>
</html>


