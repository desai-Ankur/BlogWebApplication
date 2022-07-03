package com.kody.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.kody.blog.dao.UserProfileDao;
import com.kody.blog.entities.UserProfile;
import com.kody.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class UserRegisterServlet
 */

public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served Jay Goga at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String check=request.getParameter("check");
		if(check==null)
		{
			System.out.println("Tick karo");
		}
		else
		{
			String name=request.getParameter("user_name");
			String email=request.getParameter("user_email");
			String about=request.getParameter("about");
			String gender=request.getParameter("gender");
			String password=request.getParameter("user_password");
			
			UserProfile user=new UserProfile(name, email, password, gender, about);
			UserProfileDao dao=new  UserProfileDao(ConnectionProvider.getConnection());
			if(dao.saveUserProfile(user))
			{
				 response.sendRedirect("profile.jsp");
			}
			else
			{
				 response.sendRedirect("error_page.jsp");
			}
		}
		doGet(request, response);
	}

}
