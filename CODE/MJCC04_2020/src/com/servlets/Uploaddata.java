package com.servlets;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.crypto.KeyGenerator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;








import com.controller.DbConnection;
import com.testing.ImageEncrypt;
import com.testing.RandomeString;
import com.testing.WriteXMLFile;

/**
 * Servlet implementation class Uploaddata
 */
@WebServlet("/Uploaddata")
public class Uploaddata extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int BUFFER_SIZE = 4096; 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uploaddata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		String id=RandomeString.getID();
		String title=request.getParameter("title");
		String keys=request.getParameter("keys");
		String ref=request.getParameter("ref");
		String message=request.getParameter("message");
		
		String arg[]={id,title,keys,ref,message};
		
		File file=WriteXMLFile.writeXml(arg);
		PrintWriter out=response.getWriter();
		ByteArrayOutputStream bs1 = new ByteArrayOutputStream();
	    InputStream   inputStream1 = new FileInputStream(file);
        int bytesRead1 = -1;
 	    byte[] buffer1 = new byte[BUFFER_SIZE];
 	    while ((bytesRead1 = inputStream1.read(buffer1)) != -1) 
 	    {
 	    	 	bs1.write(buffer1, 0, bytesRead1);
 	    }
		
		
 		
		KeyGenerator keyGenerator;
		keyGenerator = KeyGenerator.getInstance("AES");
	
        keyGenerator.init(128);
        Key key = keyGenerator.generateKey();
        System.out.println(key);
        byte[] keybit=key.getEncoded();
        
        

       byte[] encrypted = ImageEncrypt.encryptPdfFile(key, bs1.toByteArray() );
       System.out.println(encrypted);
        
        String k=key.getEncoded().toString();
     
     
    	 	Connection	conn=DbConnection.connect();
    	 	String sql="insert into filedata values(?,?,?,?,?,?)";
    
    	 	PreparedStatement statement = conn.prepareStatement(sql);
    	 	statement.setString(1, id);
    	 	statement.setString(2, keys);
    	 	statement.setBytes(3, encrypted);
    		statement.setString(4, k);
    		statement.setBytes(5,keybit);
    		statement.setString(6, title);
    	 
    	 	int row = statement.executeUpdate();
    	 	
    	 	if (row > 0)
    	 	{
    	 		out.println("<script type=\"text/javascript\">");
				out.println("alert('Uploaded Successfully');");
				out.println("window.location='admin.jsp'</script>");
    	 	
    	 	}
    	 	
    		} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
	}

}
