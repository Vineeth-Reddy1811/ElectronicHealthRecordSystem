package com.testing;

import java.io.IOException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class CountXMLElement {

  public static void main(String argv[]) {

	try {
		String filepath = "D:\\file.xml";
		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
		Document doc = docBuilder.parse(filepath);

		NodeList list = doc.getElementsByTagName("Staff");

		System.out.println("Total of elements : " + list.getLength());

	} catch (ParserConfigurationException pce) {
		pce.printStackTrace();
	} catch (IOException ioe) {
		ioe.printStackTrace();
	} catch (SAXException sae) {
		sae.printStackTrace();
	}
  }
}