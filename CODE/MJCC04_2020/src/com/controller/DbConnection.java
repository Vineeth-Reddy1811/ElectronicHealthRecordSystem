package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.beans.UserBean;


public class DbConnection {
	public static Connection connect()
	{
		Connection con = null;
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mjcc04_2020","root","root");
			return con;
		}catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			return con;
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			return con;
		}
		
	}

	
	//Method for Customer Registration
	public static int Register(UserBean u) throws SQLException
	{	Connection con=null;
	int i=0;	
	try{
		 con =DbConnection.connect();
		String sql="insert into user values(?,?,?,?,?,'new user');";
		PreparedStatement p=con.prepareStatement(sql);
		p.setString(1, u.getName());
		p.setString(3, u.getAge());
		p.setString(2, u.getEmail());
		p.setString(4, u.getGender());
		p.setString(5, u.getPass());
		i=p.executeUpdate();
		}catch (SQLException e) {
			// TODO: handle exception
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}
	

	
	public static int addRequest(String email,String fid) throws SQLException
	{	Connection con=null;
	int i=0;	
	try{
		 con =DbConnection.connect();
		String sql="insert into requests values(0,?,?);";
		PreparedStatement p=con.prepareStatement(sql);
		p.setString(1, email);
		p.setString(2, fid);
		i=p.executeUpdate();
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}
	
	public static int addResponse(String email,String fid,String fkey) throws SQLException
	{	Connection con=null;
	int i=0;	
	try{
		 con =DbConnection.connect();
		String sql="insert into responses values(0,?,?,?);";
		PreparedStatement p=con.prepareStatement(sql);
		p.setString(1, email);
		p.setString(2, fid);
		p.setString(3, fkey);
		i=p.executeUpdate();
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return i;
	}
	
	
	//Method For Check userLogin
	public static boolean checkLog(UserBean u) throws SQLException
	{
		Connection con = null;
		int count=0;
		try{
		con =DbConnection.connect();
		String sql="select * from user;";
		Statement s=con.createStatement();
		ResultSet r=s.executeQuery(sql);
		while(r.next())
		{
		
			if(r.getString(5).equals(u.getPass())&&r.getString(2).equals(u.getEmail()))
			{
			
				count++;
				break;
			} 	
		}
		}catch (SQLException e) {
			// TODO: handle exception
		}finally{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(count>0)
		{
			return true; 	
		}else
		{
			return false;
		}
		
	}
	
	
	
	public static ResultSet getUser() throws SQLException
	{
		Connection con =DbConnection.connect();
		String sql="select * from reg ";
		Statement s=con.createStatement();
		ResultSet r=s.executeQuery(sql);
		return r;
	}
	
	public static ResultSet getFilesData() throws SQLException
	{
		Connection con =DbConnection.connect();
		String sql="select * from filedata ";
		Statement s=con.createStatement();
		ResultSet r=s.executeQuery(sql);
		return r;
	}
	
	public static ResultSet getResquests() throws SQLException
	{
		Connection con =DbConnection.connect();
		String sql="select * from requests ";
		Statement s=con.createStatement();
		ResultSet r=s.executeQuery(sql);
		return r;
	}
	
	public static int DeleteResquests(String fid,String emai) throws SQLException
	{
		Connection con =DbConnection.connect();
		String sql="delete from requests where fid="+fid+" and email='"+emai+"' ";
		Statement s=con.createStatement();
		int r=s.executeUpdate(sql);
		return r;
	}
	
	public static int DeleteKey(String rid) throws SQLException
	{
		Connection con =DbConnection.connect();
		String sql="delete from responses where rid="+rid+"";
		Statement s=con.createStatement();
		int r=s.executeUpdate(sql);
		return r;
	}
	
	public static int DeleteFile(String fid) throws SQLException
	{
		Connection con =DbConnection.connect();
		String sql="delete from filedata where fileid="+fid+"";
		Statement s=con.createStatement();
		int r=s.executeUpdate(sql);
		return r;
	}
	
	public static ResultSet getResponses(String email) throws SQLException
	{
		Connection con =DbConnection.connect();
		String sql="select * from responses where email='"+email+"'";
		Statement s=con.createStatement();
		ResultSet r=s.executeQuery(sql);
		return r;
	}
	


	

}
