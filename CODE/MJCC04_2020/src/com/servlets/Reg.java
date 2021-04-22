package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.beans.UserBean;
import com.controller.DbConnection;

/**
 * Servlet implementation class Reg
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("name");
		String email=request.getParameter("email");
		String age=request.getParameter("Mobile");
		String pass=request.getParameter("Password");
		String gen=request.getParameter("Gender");
		UserBean u=new UserBean();
		u.setName(uname);
		u.setEmail(email);
		u.setGender(gen);
		u.setPass(pass);
		u.setAge(age);
		try {
			int i=DbConnection.Register(u);
			if(i>0)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('registration successfully');");
				out.println("window.location='index.html'</script>");
				
			}else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('failed to register');");
				out.println("window.location='index.html'</script>");
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
