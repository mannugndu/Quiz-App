package user_profile_manager;
import database_connection_pack.*;
import java.sql.*;
public class TestFetcher 
{
	ResultSet rs=null;
	Statement st;
	ConnectToDB ctdb= new ConnectToDB();
	Connection con= ctdb.getConnectionObj();
public ResultSet testData(String active_user)
{

try 
{
	st = con.createStatement();
	rs= st.executeQuery("select * from saved_tests where username ='"+active_user+"' order by sr desc");
	return rs;
} catch (SQLException e) {System.out.println("sql problem in TestFetcher from the package user_profile_manager"+e);}



return rs;
}

public int countSavedTest(String username)
{
int count=0;

ResultSet rs2= testData(username);
try {
	while(rs2.next())
	{
		count++;
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

	
	
return count;	
}




}
