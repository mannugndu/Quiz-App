package controllerpack_log_reg.connection_log_reg;
import java.sql.*;
import database_connection_pack.*;


public class Login_DBController 
{
	public boolean check(String usr,String pswd)
	{
		
		Connection con;
		ConnectToDB ctdb= new ConnectToDB();
		try {
			con=ctdb.getConnectionObj();
			Statement st= con.createStatement();
			ResultSet rs= st.executeQuery("select * from users where email='"+usr+"' and password='"+pswd+"'");
			if(rs.next())
			{
				return true;
			}
			    
			}
			
			catch (SQLException e) {  System.out.println("establishment of database connection failed");  }
			return false;
			
		
		
	}
	
	
	
}
