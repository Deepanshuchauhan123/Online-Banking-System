package com.deepanshu;
import java.sql.*;

public class verifyLogin1 
{
	public static boolean checkLogin(int accountno,String username,String password)
	{
		
		boolean status = false;
		Connection con = GetCon.getcon();
		
		try
		{
		
			PreparedStatement ps = con.prepareStatement("Select * from NEWACCOUNT where accountno=? and username=? and password=?");
			ps.setInt(1, accountno);
			ps.setString(2, username);
			ps.setString(3,password);
			
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
	}
}
