package com.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * regservlet
 * @author zhang.xianl
 */
public class regServlet extends HttpServlet {
	private static final long serialVersionUID = 5280356329609002908L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		UserDao userDao = new UserDao();
		if(username != null && !username.isEmpty()){
			if(userDao.userIsExist(username)){

				User user = new User();		

				user.setUsername(username);	
				user.setPassword(password);

				userDao.saveUser(user);	
				request.setAttribute("info", "Successed!<br>");
			}else{
				request.setAttribute("info", "Already exists!");
			}
		}
		// turn to outline.jsp page
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

}
