package com.finalYearProject;
import javax.servlet.http.HttpServlet;
import java.sql.*;
public class GetCon extends HttpServlet {
private GetCon(){}

public static Connection con;
static{
	try {
		Class.forName(DBIntializer.DRIVER);
		con=DriverManager.getConnection(DBIntializer.CON_STRING);
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
	
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}



public static int getPrimaryKey(){
	int nextvalue=0;
	Connection con=GetCon.getCon();
	PreparedStatement ps2;
	try {
	
	ps2=con.prepareStatement("SELECT NEXT VALUE FOR pharmacy_sequence");
	
	ResultSet rs=ps2.executeQuery();
	rs.next();
	nextvalue=rs.getInt(1);

	
	
} catch (SQLException e) {
		
		e.printStackTrace();
	}
return nextvalue;

}
}

