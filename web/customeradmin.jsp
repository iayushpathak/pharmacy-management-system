<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Arka Jain Pharmacy</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function dil(form) {
            for (var i = 0; i < form.elements.length; i++) {
                if (form.elements[i].value == "") {
                    alert("Fill out all Fields")
                    document.F1.accountno.focus()
                    return false
                }
            }

            if (isNaN(document.F1.accountno.value)) {
                alert("Accountno must  be  number & can't be null")
                document.F1.accountno.value = ""
                document.F1.accountno.focus()
                return false
            }
            if (!isNaN(document.F1.username.value)) {
                alert("User Name  must  be  char's & can't be null")
                document.F1.username.value = ""
                document.F1.username.focus()
                return false
            }

            if (!isNaN(document.F1.password.value)) {
                alert("Password  must  be  char's & can't be null")
                document.F1.password.value = ""
                document.F1.password.focus()
                return false
            }

            return true
        }
    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Global Banking ..</title>
    <link href="style.css" rel="stylesheet" type="text/css">

</head>
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

<table class="center" style="margin-left:auto;margin-right:auto;" width="100%" border="0" cellspacing="10"
       cellpadding="0" background="images/wp1931605.jpg">

    <%
        if (request.getAttribute("deleted") != null) {
            out.print("<table>");
            out.print("<div width='200' align='left'>");
            out.print("<font color='blue'><font size='10'>" + request.getAttribute("deleted"));

            out.print("</div>");
            out.print("<table>");
        }

    %>

    <tr align="center">
        <td valign="top">
            <%-- <table cellspacing="10" cellpadding="8">	--%>

                <%
                %>
            <table style="background-color:#1fc8e0;" align="center"><%

                try {
                    Connection con = GetCon.getCon();
                    PreparedStatement ps = con.prepareStatement("Select * from newcust4");
                    //ps.setString(1,uname);
                    ResultSet rs = ps.executeQuery();
                    //out.print("<table>");


                    //out.print("<table align='left' width='300' border='0' cellspacing='10' cellpadding='0'>");
                    out.print("<tr><th>ID</th><th>USERNAME</th><th>PASSWORD</th><th>ADDRESS</th><th>PHONE</th><th>EMAIL</th></tr>");
                    while (rs.next()) {
                        int id = rs.getInt(1);
                        session.setAttribute("id", id);
                        out.print("<tr>");
                        out.print("<td>" + rs.getString(1) + "</td>");
                        out.print("<td>" + rs.getString(2) + "</td>");
                        out.print("<td>" + rs.getString(3) + "</td>");
                        out.print("<td>" + rs.getString(6) + "</td>");
                        out.print("<td>" + rs.getString(11) + "</td>");
                        out.print("<td>" + rs.getString(12) + "</td>");
                        out.print("<td><a href=/pharmacy1_war_exploded/Deletecustomer1.jsp?custid="+rs.getString(1)+">Delete</a></td>");
                        //out.print("<td>" + rs.getString(4) + "</td>");
                        //out.print("<td>" DeleteServlet.Del`"</td>");
                        out.print("</tr>");


                    }
                    //out.print("</table>");
                    //out.print("<table>");

                    //out.print("</table>");

                } catch (SQLException e) {
                    e.printStackTrace();
                }

            %></table>
                <%
                %>

            <%@ page import="java.sql.*" %>
            <%@ page import="java.io.*" %>
            <%@ page import="javax.servlet.*" %>
            <%@ page import="com.finalYearProject.*" %>

            <%-- <td valign="top">
                <img src="images/hioxindia-pharmacy_12.jpg" alt="" border="0" />
                <h1>Tablets</h1>
              <p>This high quality free pharmaceutical company template is built using XHTML and CSS..</p>
                <p align="right"><a href="#" class="more">View More</a></p>
            </td>--%>

    </tr>
    <tr>
        <td colspan="4" style="border-bottom:1px solid #CCCCCC;"></td>
    </tr>
</table>


<div id="content">
    <table width="960" border="0" cellspacing="0" cellpadding="0">
        <tr align="justify">
            <td width="200" valign="top">
                <img src="images/hioxindia-pharmacy_19.jpg" alt="" border="0"/></td>
            <td width="760" valign="top">
                <h1>Welcome to Arka Jain Pharmacy </h1>
                <p>This is a Pharmaceutical Company designed by college students, for their final year project
                    submission .
                    Anyone wants good, professional, template for their pharmacy, drug store, medical store then they
                    may contact us for the best one.
                    This project is designed by professional designers to make your task much easier to understand.</p>
                <br/>

                <p>There are many other categories of website which we design so if you want to create a professional
                    website then you can contact us. We design many categories of websites like Arts, Agriculture,
                    Computers, Satellite, Cars, Finance, Nature, Music, Personal Website,
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
        </ul>
        <br/>
        <span id="design">Designed by Ayush Pathak & Debashish Bera</span>
    </div>
</div>
</body>
</html>


<body>


<div id="footer_top">
    <div id="footer_navigation">


    </div>

</div>

</body>
</html>