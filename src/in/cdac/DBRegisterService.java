package in.cdac;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DBRegisterService 
{
	

	private static String driver = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/DFI_Project?serverTimezone=GMT";
	private static String Username = "root"; //root
	private static String Password = ""; //""
	
	public static void registerUser(User user) throws Exception
	{	
		try
		{
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, Username, Password);
			
			String sql = "INSERT INTO Users(Username, Name, Type, Email, Password, Hometown, Birthday, Twitter, Instagram, Reason, Fanart, Status, Verification) VALUES (?, ?, 'Member', ?, ?, ?, ?, ?, ?, ?, ?, 'Suspend', 'Unverified');";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPassword());
			ps.setString(5, user.getHometown());
			ps.setString(6, user.getBirthday());
			ps.setString(7, user.getTwitter());
			ps.setString(8, user.getInstagram());
			ps.setString(9, user.getReason());
			ps.setString(10, user.getFanart());
			
			ps.executeUpdate();
			return;
		}
		
		catch(Exception e)
		{
			throw e;
		}
		
	}
}
