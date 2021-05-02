package com.finalYearProject;

import javax.servlet.*;
import java.sql.*;

public class MyListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent arg0) {
        int status = 0;
        Connection con = null;
        try {
            con = GetCon.getCon();
            PreparedStatement ps1 = con.prepareStatement("Select * from NEWCUST4");
            try {
                ps1.executeQuery();
                status = 1;
            } catch (Exception e) {
//                e.printStackTrace();
                status = 2;
//                System.out.println("my staus is1111111" + status);
            }

            if (status == 0) {
                System.out.println("your table name already exist" + status);
            } else if (status == 2) {
                System.out.println("else if part table does not exist new table has created" + status);
                PreparedStatement ps3 = con.prepareStatement("CREATE SEQUENCE IF NOT EXISTS pharmacy_sequence MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 1");
                ps3.executeUpdate();

                PreparedStatement ps = con.prepareStatement("CREATE TABLE IF NOT EXISTS NEWCUST4(ID INT,USERNAME VARCHAR(32),PASSWORD VARCHAR(32), REPASSWORD VARCHAR(32),DISNAME VARCHAR(128), ADDERESS VARCHAR(256),CITYNAME VARCHAR(32),STATENAME VARCHAR(32),COUNTRY VARCHAR(32),REGION VARCHAR(32),PHONE BIGINT,EMAIL VARCHAR(128),PRIMARY KEY (ID))");
                ps.executeUpdate();

                PreparedStatement ps2 = con.prepareStatement("create table IF NOT EXISTS NEWORDER4(ID INT,PRODCODE VARCHAR(128),PRODUCTNAME VARCHAR(128),TAX BIGINT,MINQ INT,ORDERQ INT,DISCOUNT DOUBLE,NETCOST DOUBLE,AMOUNT DOUBLE,PAYMODE VARCHAR(128),PRIMARY KEY (ID))");
                ps2.executeUpdate();

                PreparedStatement ps4 = con.prepareStatement("create table IF NOT EXISTS PHARMACYADMIN(USERNAME VARCHAR(128),PASSWORD VARCHAR(128))");
                ps4.executeUpdate();
                ps4 = con.prepareStatement("Insert into PHARMACYADMIN values(?,?)");
                ps4.setString(1, "admin");
                ps4.setString(2, "admin");

                ps4.executeUpdate();

                PreparedStatement ps5 = con.prepareStatement("CREATE TABLE IF NOT EXISTS DISTRIBUTERADMIN(USERNAME VARCHAR(128),PASSWORD VARCHAR(128))");
                ps5.executeUpdate();

                ps5 = con.prepareStatement("Insert into DISTRIBUTERADMIN values(?,?)");
                ps5.setString(1, "dis");
                ps5.setString(2, "dis");
                ps5.executeUpdate();

            } else {
                System.out.println("else part " + status);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void contextDestroyed(ServletContextEvent arg0) {
        System.out.println("project undeployed");

    }
}
