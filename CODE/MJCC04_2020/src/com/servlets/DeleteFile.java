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
 * Servlet implementation class DeleteFile
 */
@WebServlet("/DeleteFile")
public class DeleteFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFile() {
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
		String fid=request.getParameter("fid");
		PrintWriter out=response.getWriter();
		
		
		try {
			int i=DbConnection.DeleteFile(fid);
					
			
			if(i>0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Deleted Successfully');");
				out.println("window.location='adminfiles.jsp'</script>");
			}else{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Failed To Delete File');");
				out.println("window.location='adminfiles.jsp'</script>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Failed To Delete File');");
			out.println("window.location='adminfiles.jsp'</script>");
		}
	}

}
