package com.testing;
import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class WriteXMLFile {

	public static File writeXml(String argv[]) {
		File f=new File("C://temp.xml");
	  try {

		DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

		// root elements
		Document doc = docBuilder.newDocument();
		Element rootElement = doc.createElement("storage");
		doc.appendChild(rootElement);

		// staff elements
		Element staff = doc.createElement("data");
		rootElement.appendChild(staff);

		// set attribute to staff element
		Attr attr = doc.createAttribute("id");
		attr.setValue(argv[0]);
		staff.setAttributeNode(attr);

		// shorten way
		// staff.setAttribute("id", "1");

		// firstname elements
		Element firstname = doc.createElement("title");
		firstname.appendChild(doc.createTextNode(argv[1]));
		staff.appendChild(firstname);

		// lastname elements
		Element lastname = doc.createElement("keywords");
		lastname.appendChild(doc.createTextNode(argv[2]));
		staff.appendChild(lastname);

		// nickname elements
		Element nickname = doc.createElement("ref");
		nickname.appendChild(doc.createTextNode(argv[3]));
		staff.appendChild(nickname);

		// salary elements
		Element salary = doc.createElement("message");
		salary.appendChild(doc.createTextNode(argv[4]));
		staff.appendChild(salary);

		// write the content into xml file
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = transformerFactory.newTransformer();
		DOMSource source = new DOMSource(doc);
		StreamResult result = new StreamResult(f);

		// Output to console for testing
		// StreamResult result = new StreamResult(System.out);

		transformer.transform(source, result);

		System.out.println("File saved!");

	  } catch (ParserConfigurationException pce) {
		pce.printStackTrace();
	  } catch (TransformerException tfe) {
		tfe.printStackTrace();
	  }
	  
	  return f;
	}
}