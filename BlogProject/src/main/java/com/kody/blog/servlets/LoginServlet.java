package com.kody.blog.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kody.blog.dao.UserProfileDao;
import com.kody.blog.entities.Message;
import com.kody.blog.entities.UserProfile;
import com.kody.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//      login 
//      fetch username and password from request
      String userEmail = request.getParameter("email");
      String userPassword = request.getParameter("password");

      UserProfileDao dao = new UserProfileDao(ConnectionProvider.getConnection());

      UserProfile u = dao.getUserByEmailAndPassword(userEmail, userPassword);

      if (u == null) {
          //login.................
//          error///
    	  Message msg = new Message("Invalid Details ! try with another", "error", "alert-danger");
          HttpSession s = request.getSession();
          s.setAttribute("msg", msg);

          response.sendRedirect("Login.jsp");
      } else {
          //......
//          login success
    	  HttpSession s = request.getSession();
          s.setAttribute("currentUser", u);
          response.sendRedirect("profile.jsp");
    	//  System.out.println("Success");
          //response.sendRedirect("error_page.jsp");

      }
		//doGet(request, response);
	}

}
