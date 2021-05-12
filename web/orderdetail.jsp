<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Arka Jain Pharmacy</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
    </script>

    <SCRIPT LANGUAGE="JavaScript">
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
    </SCRIPT>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Global Banking ..</title>
    <link href="style.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function ctck() {
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

<table width="960" border="0" cellspacing="10" cellpadding="0" align="center">
    <tr align="center">

        <td valign="top">


                <%
                %>
            <table width="300" border="0" cellspacing="10" cellpadding="0" align="center"><%

                String ProdCode = request.getParameter("ProdCode");
                String productname = request.getParameter("ProdCode");

                double minq = 2;

                String order = request.getParameter("orderq");
                double orderq = Double.parseDouble(order);

                String ds = request.getParameter("discount");
                double discount = Double.parseDouble(ds);

                String nst = request.getParameter("netcost");
                double netcost = Double.parseDouble(nst);

                String amoun = request.getParameter("amount");
                double amount = Double.parseDouble(amoun);

                String paymode = request.getParameter("r1");

                try {
                    if(orderq < minq){
                        out.print("Order quantity is less than minimum quantity to order");
                        request.setAttribute("order", "Order quantity is less than minimum quantity to order");
                    }
                    else{
                    Connection con = GetCon.getCon();
                    PreparedStatement ps = con.prepareStatement("insert into neworder4 values(?,?,?,?,?,?,?,?,?,?)");
                    int nextvalue = GetCon.getPrimaryKey();
                    double tax = amount*0.18;
                    ps.setInt(1, nextvalue);
                    // ps.setInt(1,8);
                    ps.setString(2, ProdCode);
                    ps.setString(3, productname);
                    ps.setDouble(4, tax);
                    ps.setDouble(5, minq);
                    ps.setDouble(6, orderq);
                    ps.setDouble(7, discount);
                    ps.setDouble(8, netcost);
                    ps.setDouble(9, amount);
                    ps.setString(10, paymode);
                    int rs = ps.executeUpdate();

                    if (rs > 0) {

                        out.print("Your order has been confirmed");
                        request.setAttribute("order", "Your order has booked");
                        request.setAttribute("ProdCode",ProdCode);
                        request.setAttribute("productname",productname);
                        request.setAttribute("tax",tax);
                        request.setAttribute("minq",minq);
                        request.setAttribute("orderq",orderq);
                        request.setAttribute("discount",discount);
                        request.setAttribute("netcost",netcost);
                        request.setAttribute("amount",amount);
                        request.setAttribute("paymode",paymode);
            %>
                <jsp:forward page="index.jsp"></jsp:forward>
                <%

                } else {

                    out.print("sorry try later");

                %>
                <jsp:forward page="index.php"></jsp:forward>
                <%

                        }
                    }
                    }catch (SQLException e) {
                        e.printStackTrace();
                    }

                %></table>
                <%
                %>

            <%@ page import="java.sql.*" %>
            <%@ page import="java.io.*" %>
            <%@ page import="javax.servlet.*" %>
            <%@ page import="com.finalYearProject.*" %>




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
        </ul>
        <br/>
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

