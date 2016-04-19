package com.model;

import java.util.ArrayList;

import com.model.Register;
import org.rafi.db.Connector;


public class manager {


public static  ArrayList<Register> validateUser( String uname, String password)throws Exception 
{
	ArrayList<Register> feeds = null;
	
	
	Connector connector = new Connector();
	
	feeds = connector.validateUser(uname, password);
	
	
	
	
	
	return feeds;
	
	
		
	}
	
}	

