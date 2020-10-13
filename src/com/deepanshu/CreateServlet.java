package com.deepanshu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreateServlet extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
						throws ServletException, IOException
	{
	
		//System.out.print("Inside Create Servlet 1.0");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
		String amoun = request.getParameter("amount");
		double amount = Double.parseDouble(amoun);
		
		String address = request.getParameter("address");
		
		String ph = request.getParameter("phone");
		double phone = Double.parseDouble(ph);
		
		//System.out.print("Inside Create Servlet 2.0");
		
		int status = RegisterUser.register(username,password,repassword,amount,address,phone);
		
		if(status>0)
		{
			out.print("Welcome! Your Account Has Opened");
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.include(request, response);
		}else
		{
			out.print("Sorry, Registration failed. please try later");
			RequestDispatcher rd = request.getRequestDispatcher("Error_Register.jsp");
			rd.include(request, response);
		}
		
		out.close();
		
	}
}
