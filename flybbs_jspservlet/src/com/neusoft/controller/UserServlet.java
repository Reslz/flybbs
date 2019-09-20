package com.neusoft.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neusoft.model.bean.User;
import com.neusoft.model.service.UserService;
import com.neusoft.model.service.UserServiceImpl;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	private UserService userService = new UserServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		if("login".equals(flag)){
			login(request,response);
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
		User user = new User();
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		user.setEmail(email);
		user.setPassword(pass);
		
		User user1 = userService.login(user);
		int n = 0;
		if(user1 != null){
			n = 1 ;  //可以登陆
			System.out.println(n);
		}else {
			n = -1 ; //数据库没有这个用户
			System.out.println(n);
		}
		PrintWriter p = response.getWriter();
		p.print(n);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
