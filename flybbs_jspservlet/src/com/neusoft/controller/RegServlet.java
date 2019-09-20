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
 * Servlet implementation class RegServlet
 */
@WebServlet("/regServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//注册
		String email = request.getParameter("email");
		User user = userService.getUser(email);
		PrintWriter p = response.getWriter();
		int n = 0;
		if(user == null){
			n = 1; //邮箱不重复，可以注册
		}else{
			n = -1; //邮箱重复，不能注册
		}
		p.print(n);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/text");
		response.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
