package org.rafi.db;


//package org.rafi.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import com.google.gson.Gson;
import com.model.Register;



public class Connector {
	static PreparedStatement pstmt;
	private static Connection con = null;
	public static void main(String[] args) throws Exception {

	}
	public static HashMap<String,String> getResults(String tableName,ArrayList<String> columNames,String condition)throws Exception 
	{
 
		ResultSet rs = null;
		HashMap <String,String> hMap = new HashMap<String,String>();
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("SELECT * from "+tableName+" where "+condition);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				for (int i = 0; i < columNames.size(); i++) {
					hMap.put(""+(i+1), rs.getString(columNames.get(i)));	
				}
				System.out.println("RESULT HMAP::"+hMap);
			}
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return hMap;
	}
	
	public static HashMap<String,String> getResults2(String tableName,ArrayList<String> columNames,String condition)throws Exception 
	{
 
		ResultSet rs = null;
		HashMap <String,String> hMap = new HashMap<String,String>();
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("SELECT * from "+tableName+" where "+condition);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				for (int i = 0; i < columNames.size(); i++) {
					hMap.put(""+(i+1), rs.getString(columNames.get(i)));	
				}
				System.out.println("RESULT HMAP::"+hMap);
			}
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return hMap;
	}

	public static HashMap<String,String> getResults1(String tableName,ArrayList<String> columNames,String condition)throws Exception 
	{
 
		ResultSet rs = null;
		HashMap <String,String> hMap = new HashMap<String,String>();
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("SELECT * from "+tableName+" where "+condition);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				for (int i = 0; i < columNames.size(); i++) {
					hMap.put(""+(i+1), rs.getString(columNames.get(i)));	
				}
				System.out.println("RESULT HMAP::"+hMap);
			}
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return hMap;
	}

	public static  ArrayList<Register> validateUser( String uname, String password)throws Exception 
	{
		
		ArrayList<Register> login = new ArrayList<Register>();
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("SELECT uname,password FROM login WHERE uname = ? ");
			pstmt.setString(1,uname);
			//pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				
				Register reg = new Register();
				reg.setUname(rs.getString("uname"));
				reg.setPassword(rs.getString("password"));
				login.add(reg);
				
				Gson gson = new Gson();
				System.out.println(gson.toJson(reg));
				
				System.out.println("password is "+rs.getString(2)+" username is "+rs.getString(1));
				if(rs.getString(2).equals(password))
				{
					
				}
				
			}
			else
				return login;
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return login;

	}
	public static boolean Ajax( String uname, String password)throws Exception 
	{
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("SELECT uname FROM login WHERE uname = ? ");
			pstmt.setString(1,uname);
			//pstmt.setString(2, password);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
			{
				System.out.println("password is "+rs.getString(2)+" username is "+rs.getString(1));
				if(rs.getString(2).equals(password))
				{
					return true;	
				}
				return false;
			}
			else
				return false;
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return false;

	}
	public static boolean insertUser( String uname, String password, String emaiId, String phonenum, String gender)throws Exception 
	{
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("insert into login (uname,password, emaiId, phonenum, gender) values (?,?,?,?,?)");
			pstmt.setString(1,uname);
			pstmt.setString(2, password);
			pstmt.setString(3, emaiId);
			pstmt.setString(4, phonenum);
			pstmt.setString(5, gender);
			System.out.println("username is"+uname);
			System.out.println("password is"+password);
			System.out.println("emailid is "+emaiId);
			System.out.println("phonenum  is"+phonenum);
			System.out.println("gender is" +gender);

			int rs = pstmt.executeUpdate();
			System.out.println("row updated " +rs);
			if(rs==1)

			{

				return true;
			}
			else
				return false;
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return false;

	}

	
	public static boolean insertFee( String AdmissionNum, String studentName, String className, String fTerm, String sTerm, String tTerm)throws Exception 
	{
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("insert into fees (AdmissionNum,studentName,className, fTerm, sTerm, tTerm) values (?,?,?,?,?,?)");
			pstmt.setString(1,AdmissionNum);
			pstmt.setString(2,studentName);
			pstmt.setString(3, className);
			pstmt.setString(4, fTerm);
			pstmt.setString(5, sTerm);
			pstmt.setString(6, tTerm);
			System.out.println("student name  is"+studentName);
			System.out.println("class is"+className);
			System.out.println("first term fee is "+fTerm);
			System.out.println("second term fee  is"+sTerm);
			System.out.println("third term fee is" +tTerm);

			int rs = pstmt.executeUpdate();
			System.out.println("row updated " +rs);
			if(rs==1)

			{

				return true;
			}
			else
				return false;
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return false;

	}


	public static boolean insertUser1( String admissionNum, String studentName, String fatherName, String aa, String gender )throws Exception 
	{
		try 
		{
			con = establishConnection();
			pstmt = con.prepareStatement("insert into admissions (admissionNum,studentName,fatherName,aa,gender) values (?,?,?,?,?)");
			pstmt.setString(1,admissionNum);
			pstmt.setString(2, studentName);
			pstmt.setString(3, fatherName);
			pstmt.setString(4, aa);
			pstmt.setString(5, gender);
			System.out.println("admission number is"+admissionNum);
			System.out.println("student name is"+studentName);
			System.out.println("father name is "+fatherName);
			System.out.println("class is"+aa);
			System.out.println("gender is" +gender);
			int rs = pstmt.executeUpdate();
			System.out.println("row updated " +rs);
			if(rs==1)

			{

				return true;
			}
			else
				return false;
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try 
			{
				if(pstmt!=null)
					pstmt.close();
				if(con != null)
					con.close();
			} catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return false;

	}

	public static Connection establishConnection() throws Exception
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dimpy","root","theo");
		}
		catch(ClassNotFoundException ex)
		{
			System.err.print("com.mysql.jdbc.Driver Not Found\n"+ex);
		}
		catch(SQLException ex)
		{
			System.err.print("sql exception\n"+ex);
		}
		return con;
	}
}
