package com.testing;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import com.controller.DbConnection;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ReadXMLFile {

  public static String[] readXml(String iid,String key1) {
	  String s[]=new String[5];
    
  
			byte[] image = null;
			Connection con = null;
			byte[] imgData = null;
			byte[] key=null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DbConnection.connect();
				stmt = con.createStatement();
				rs = stmt.executeQuery("select fkey,file from filedata where fileid='"+iid+"' and filekey='"+key1+"'");
				if (rs.next()) {
					image = rs.getBytes("file");
					key=rs.getBytes("fkey");
				
					//imgData = image.getBytes(1, (int) image.length());
				} else {
				
					System.out.println("NOT DONE");
				}
				// display the image
				
				SecretKey key2 = new SecretKeySpec(key, 0, key.length, "AES");
				imgData=ImageEncrypt.decryptPdfFile(key2, image);
				System.out.println(key2);
				
				File f=new File("C://temp.xml");
				FileOutputStream o=new FileOutputStream(f);
				o.write(imgData);
			

	//File fXmlFile = new File("temp.xml");
	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	Document doc = dBuilder.parse(f);
			
	//optional, but recommended
	//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
	doc.getDocumentElement().normalize();

	System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
			
	NodeList nList = doc.getElementsByTagName("data");
			
	System.out.println("----------------------------");

	for (int temp = 0; temp < nList.getLength(); temp++) {

		Node nNode = nList.item(temp);
				
		System.out.println("\nCurrent Element :" + nNode.getNodeName());
				
		if (nNode.getNodeType() == Node.ELEMENT_NODE) {

			Element eElement = (Element) nNode;

							s[0]= eElement.getAttribute("id");
							s[1]=  eElement.getElementsByTagName("title").item(0).getTextContent();
							s[2]=  eElement.getElementsByTagName("keywords").item(0).getTextContent();
							s[3]=  eElement.getElementsByTagName("ref").item(0).getTextContent();
							s[4]=  eElement.getElementsByTagName("message").item(0).getTextContent();

		}
	}
    } catch (Exception e) {
	e.printStackTrace();
    }
    
    return s;
  }

}