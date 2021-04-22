package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.DbConnection;

/**
 * Servlet implementation class SendRequest
 */
@WebServlet("/SendRequest")
public class SendRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendRequest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String title=request.getParameter("title");
		
		try {
		String email=request.getParameter("email");
		String fid=request.getParameter("fid");
		
			int i=DbConnection.addRequest(email, fid);
			if(i>0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Request Sended Successfully');");
				out.println("window.location='searchresuilt.jsp?title="+title+"'</script>");
			}else{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Failed To Send Request');");
				out.println("window.location='searchresuilt.jsp?title="+title+"'</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Failed To Send Request');");
			out.println("window.location='searchresuilt.jsp?title="+title+"'</script>");
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
