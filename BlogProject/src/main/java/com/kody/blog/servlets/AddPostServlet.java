package com.kody.blog.servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.kody.blog.dao.PostDao;
import com.kody.blog.entities.Post;
import com.kody.blog.entities.UserProfile;
import com.kody.blog.helper.ConnectionProvider;
import com.kody.blog.helper.Helper;

/**
 * Servlet implementation class AddPostServlet
 */
@MultipartConfig
public class AddPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPostServlet() {
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
		
		response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String id = request.getParameter("categoryid");
            System.out.print(id);
            int cid=Integer.parseInt(id);
            String pTitle = request.getParameter("pTitle");
            String pContent = request.getParameter("pContent");
            String pCode = request.getParameter("pCode");
            Part part = request.getPart("pic");
            String imageName = part.getSubmittedFileName();

//            getting currentuser id
            HttpSession session = request.getSession();
            UserProfile user = (UserProfile) session.getAttribute("currentUser");

//            out.println("your post title is " + pTitle);
//            out.println(part.getSubmittedFileName());
            Post p = new Post(pTitle, pContent, pCode, imageName, null, cid, user.getId());
            PostDao dao = new PostDao(ConnectionProvider.getConnection());
            if (dao.savePost(p)) {
				String path = request.getRealPath("/") + "pics" + File.separator + part.getSubmittedFileName();
                Helper.saveFile(part.getInputStream(), path);
                response.sendRedirect("profile.jsp");
                out.println("done");
            } else {
            	response.sendRedirect("error_page.jsp");
                out.println("error");
            }

        }
		
		doGet(request, response);
	}

}
