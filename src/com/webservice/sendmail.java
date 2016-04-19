package com.webservice;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.rafi.db.Connector;

import com.dunithd.jmail.GmailSender;
import com.google.gson.Gson;

import com.model.Register;
import com.model.manager;

public class sendmail extends HttpServlet {
	
	
	
	public void doGet(HttpServletRequest request,
            HttpServletResponse response)
    throws ServletException, IOException {
		
		response.setContentType("application/json");
		 String userName = request.getParameter("userName");
		 String password = request.getParameter("password");

		 
		 response.setContentType("application/json");
		 PrintWriter out=response.getWriter();
		 if(userName == null)
		 {
		 	out.println("The userName you entered is wrong");
		 }
		 if(password ==  null)
		 {
		 	out.println("Wrong password");
		 }
		


		 //Get the DB connection Validation here 
		 
		 String feeds = null;

		 try {
			 ArrayList<Register> login = null;
		
			 manager Manager = new manager();
			 login = Manager.validateUser(userName, password);
			System.out.println(login);
			if(Connector.validateUser(userName,password) != null)
			 {
			 	out.println("Login successfull !!!");
			 	out.print("The userName is "+userName+" pasword is "+password);
			 	 try {
			            // get Employee object as a json string
			 		 
			 		Gson gson = new Gson();
					
					out.println(gson.toJson(login));
					feeds = gson.toJson(login);
			        } catch (Exception e) {
			            // TODO Auto-generated catch block
			            e.printStackTrace();
			        }
			 	

			 	
			 }
			 else
			 {
			 	out.println("Authentication Failed Boss!!!");
			 }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	 public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	 {
		 
		 
		
		 String username = req.getParameter("username");
		 String password = req.getParameter("password");
		 String emaiId = req.getParameter("emailId");

		 String phonenum = req.getParameter("phonenum");
		 String gender = req.getParameter("gender");
		 System.out.println("username is " +username);
		 System.out.println("password is " +password);
		 System.out.println("emailId is " +emaiId);
		 System.out.println("phonenum is " +phonenum);
		 System.out.println("gender is " +gender);

		 PrintWriter out=res.getWriter();
		 
		 
		 String feeds = null;

		 try {
			if(Connector.insertUser(username,password, emaiId,phonenum,gender))
			 {
				 
				 
			 	out.println("Login successfull !!!");
			 	out.print("The userName is "+username+" pasword is "+password);
			 	GmailSender.send(emaiId,username,password);
			 


			 }
			 else
			 {
			 	out.println("Authentication Failed Boss!!!");
			 }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 
		 
		 
	 }
	
	
	

}
