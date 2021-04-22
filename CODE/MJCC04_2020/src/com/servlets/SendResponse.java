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
 * Servlet implementation class SendResponse
 */
@WebServlet("/SendResponse")
public class SendResponse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendResponse() {
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
		PrintWriter out=response.getWriter();
		String title=request.getParameter("title");
		String email=request.getParameter("email");
		String fid=request.getParameter("fid");
		String fkey=request.getParameter("fkey");
		
		try {
			int i=DbConnection.addResponse(email, fid,fkey);
			if(i>0)
			{
				DbConnection.DeleteResquests(fid,email);
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Key Sended Successfully');");
				out.println("window.location='keyrequests.jsp'</script>");
			}else{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Failed To Send Key');");
				out.println("window.location='keyrequests.jsp'</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Failed To Send Key');");
			out.println("window.location='keyrequests.jsp'</script>");
			e.printStackTrace();
		}
	}

}
