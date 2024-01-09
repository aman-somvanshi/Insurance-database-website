package com.pbl;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Database {
	public void insert(String username,String password,String email) throws Exception{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","aman1306");
	    PreparedStatement ps=con.prepareStatement("insert into users value(?,?,?)");
		ps.setString(1, username);
        ps.setString(2,password);
        ps.setString(3,email);
        int count=ps.executeUpdate();
        if(count>0) {
          System.out.println("User Registered  Successfully!!");
          }
        else {
        		System.out.println("Failed !!");
        	}
        con.close();
	}
	catch (Exception e) {
		System.out.println(e);
		}
	}
	
	public void insertp(String fname,String lname,String phn_num,String email,String dob,String pincode,String gender, String smoke, String alcohol, String address ) throws Exception{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","aman1306");
		    PreparedStatement ps=con.prepareStatement("INSERT INTO info (fname, lname, phn_num, email, dob, pincode, gender, smoke, alcohol, address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, fname);
	        ps.setString(2, lname);
	        ps.setString(3, phn_num);
	        ps.setString(4, email);
	        ps.setString(5, dob);
	        ps.setString(6, pincode);
	        ps.setString(7, gender);
	        ps.setString(8, smoke);
	        ps.setString(9, alcohol);
	        ps.setString(10, address);
	        int count=ps.executeUpdate();
	        if(count>0) {
	          System.out.println("Personal Details saved Successfully!!");
	          }
	        else {
	        		System.out.println("Failed !!");
	        	}
	        con.close();
		}
		catch (Exception e) {
			System.out.println(e);
			}
		}
	
	public void inserti(String aincome,String grebate,String trebate ) throws Exception{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","aman1306");
		    PreparedStatement ps=con.prepareStatement("insert into income_details value(?,?,?)");
			ps.setString(1, aincome);
	        ps.setString(2, grebate);
	        ps.setString(3, trebate);
	        int count=ps.executeUpdate();
	        if(count>0) {
	          System.out.println("Income Details entered Successfully!!");
	          }
	        else {
	        		System.out.println("Failed !!");
	        	}
	        con.close();
		}
		catch (Exception e) {
			System.out.println(e);
			}
		}
	

}