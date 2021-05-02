<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Arka Jain Pharmacy</title>
	<link href="style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript">
	</script>

		<SCRIPT LANGUAGE="JavaScript">
			function dil(form) {
				for (var i = 0; i < form.elements.length; i++) {
					if (form.elements[i].value == "") {
						alert("Fill out all Fields")
						document.F1.username.focus()
						return false
					}
				}
				if (!isNaN(document.F1.username.value)) {
					alert("User Name  must  be  char's & can't be null")
					document.F1.username.value = ""
					document.F1.username.focus()
					return false
				}
				if (document.F1.password.value != document.F1.repassword.value) {
					alert("Check Confirm PWD");
					document.F1.repassword.value = ""
					document.F1.repassword.focus()
					return false
				}
				if (!isNaN(document.F1.disname.value)) {
					alert("DISTRIBUTER NAME  must  be  char's & can't be null")
					document.F1.disname.value = ""
					document.F1.disname.focus()
					return false
				}
				if (!isNaN(document.F1.adderess.value)) {
					alert("Address field  must  be  char's & can't be null")
					document.F1.adderess.value = ""
					document.F1.adderess.focus()
					return false
				}
				if (!isNaN(document.F1.cityname.value)) {
					alert("City Name field  must  be  char's & can't be null")
					document.F1.cityname.value = ""
					document.F1.cityname.focus()
					return false
				}
				if (!isNaN(document.F1.statename.value)) {
					alert("State Name field  must  be  char's & can't be null")
					document.F1.statename.value = ""
					document.F1.statename.focus()
					return false
				}
				if (!isNaN(document.F1.phone.value)) {
					if (document.F1.phone.value > 9999999999) {
						alert("Not a valid number")
						document.F1.phone.value = ""
						document.F1.phone.focus()
						return false
					}
				} else {
					alert("This  field  must  be  number")
					document.F1.phone.value = ""
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

					<form name=F1 onSubmit="return dil(this)" action="CreateServlet">
						<table cellspacing="5" cellpadding="3">

							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">USER NAME:</td>
								<td> <input type="text" name="username" /></td>
							</tr>
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">PASSWORD:</td>
								<td> <input type="password" name="password" /></td>
							</tr>
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">RE-PASSWORD:</td>
								<td> <input type="password" name="repassword" /></td>
							</tr>
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">DISTRIBUTER NAME:</td>
								<td> <input type="text" name="disname" /></td>
							</tr>

							<!-- Gender:<br/><br/>
                                  Male<input type="radio" name="gender" value="male"> Female<input type="radio" name="gender" value="female"/><br/><br/> -->
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">ADDRESS:</td>
								<td> <input type="text" name="adderess" /></td>
							</tr>
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">CITY NAME:</td>
								<td> <input type="text" name="cityname" /></td>
							</tr>
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">STATE NAME:</td>
								<td> <input type="text" name="statename" /></td>
							</tr>

							<TR>
								<TD style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;"> Country Name :</TD>
								<TD> <SELECT NAME="country">
									<option value=a> America
									<option value=b> Bangladesh
									<option value=c1> China
									<option value=c2> Canada
									<option value=g> Germany
									<option value=h> Holland
									<option value=i> India
									<option value=a> Malasia
									<option value=p> Polland
									<option value=r> Russia
									<option value=u> UK
								</SELECT> </TD>

							</TR>
							<TR>
								<TD style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;"> Region :</TD>
								<TD> <SELECT NAME="region">
									<option value=a1> Africa
									<option value=a2> Australia
									<option value=a3> Asia
									<option value=e> Europe
									<option value=i> Antarctica
									<option value=n> North America
									<option value=c2> South America
								</SELECT> </TD>

							</TR>
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">PHONE:</td>
								<td> <input type="text" name="phone" /></td>
							</tr>
							<tr>
								<td style="font-size:12pt;color:black;font-family:Serif;
background-color:#56c790;border:2px solid #336600;padding:3px;">EMAIL:</td>
								<td> <input type="text" name="email" /></td>
							</tr>
							<tr>
								<td></td>
								<td><input type="submit" value="Submit" style="font-size:7pt;color:white;
background-color:green;border:2px solid #336600;padding:3px;" />

									<INPUT TYPE=RESET VALUE="CLEAR" style="font-size:7pt;color:white;
background-color:red;border:2px solid #336600;padding:3px;">
								</td>
							</tr>
						</table>
					</form>

			</tr>
			<tr>
				<td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td>
			</tr>
		</table>

		<div id="content">
			<table width="960" border="0" cellspacing="0" cellpadding="0">
				<tr align="justify">
					<td width="200" valign="top">
						<img src="images/hioxindia-pharmacy_19.jpg" alt="" border="0" />
					</td>
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
				</ul> <br />
				<span id="design">Designed by Ayush Pathak & Debashish Bera</span>
				<script type="text/javascript">
					document.onload = ctck();
				</script>
			</div>
		</div>

</head>

<body>

<div id="footer_top">
	<div id="footer_navigation">

	</div>

	<div id="footer_copyright">
		<p></p>

		Copyright © Arka Jain University
	</div>
</div>

<script type="text/javascript">
	document.onload = ctck();
</script>
</div>

</body>

</html>