package in.cdac;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DBRegisterService 
{
	

	private static String driver = "com.mysql.cj.jdbc.Driver";
	//private static String url = "jdbc::mysql://192.168.64.4:3306/";
	//private static String url = "jdbc::mysql://127.0.0.1/phpmyadmin/db_structure.php?server=1&db=DFI_Project/";
	private static String url = "http://127.0.0.1/phpmyadmin/db_structure.php?db=DFI_Project";
	private static String Username = "root"; //root
	private static String Password = ""; //""
	
	public static void registerUser(User user) throws Exception
	{
		
		try
		{
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, Username, Password);
			
			
			String sql = "INSERT INTO Users(UserID, Username, Name, Email, Password, Hometown, Twitter, Instagram, Reason) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, 1);
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getName());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getHometown());
			ps.setString(7, user.getTwitter());
			ps.setString(8, user.getInstagram());
			ps.setString(9, user.getReason());
			
			ps.executeUpdate();
			return;
		}
		catch(Exception e)
		{
			throw e;
		}
		
	}
}
