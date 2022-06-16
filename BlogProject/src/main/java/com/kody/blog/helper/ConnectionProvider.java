package com.kody.blog.helper;
import java.sql.*;
public class ConnectionProvider {
	 private static Connection con;

	    public static Connection getConnection() {
	    	try {

	            if (con == null) {
	                //driver class load
	                Class.forName("com.mysql.cj.jdbc.Driver");

	                //create a connection..
	                con = DriverManager.
	                        getConnection("jdbc:mysql://localhost:3306/blogproject", "root", "root");
	                
	                // Class.forName("com.mysql.jdbc.Driver"); 
	                  
	                Statement stmt = con.createStatement();
	    			ResultSet rs = stmt.executeQuery("select * from user");
	    			
	    			while (rs.next()) {
	    				System.out.println(rs.getInt(1) + "  " + rs.getString(2));
	    			}
	    			//con.close();                                                        

	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        System.out.println(con);
	        return con;
	    }
	}
