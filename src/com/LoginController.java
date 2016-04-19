package com;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		 String userName = request.getParameter("userName");
		 String passWord = request.getParameter("passWord");
		 
		 String name = "Only Java";
		 
		 if(userName.equals("admin") && passWord.equals("admin")){
			 HttpSession session = request.getSession();
			 session.setAttribute("name",name);
		 }
		 
		 response.sendRedirect("welcome.jsp");
	}
	
	 public void doFilter(ServletRequest request, 
             ServletResponse response, 
             FilterChain chain)
throws IOException, ServletException
{
int hitCount = 0;
hitCount++;
chain.doFilter(request, response);
GenericServlet context = null;
context.log("This filter has been hit = " + hitCount + " times");
}
}
