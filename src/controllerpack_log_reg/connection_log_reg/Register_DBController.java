package controllerpack_log_reg.connection_log_reg;
import java.sql.*;

import database_connection_pack.ConnectToDB;
public class Register_DBController
{
	
 public int check(String name,String gender, String mobile,String email,String password)
 {
	 int i=-1;
	
	 String db_name=name;
	 String db_gender=gender;
	 String db_mobile=mobile;
	 String db_email=email;
	 String db_u_password=password;
	 Connection con;
	ConnectToDB ctdb= new ConnectToDB();
	 try 
	 	{
		  
		 con=ctdb.getConnectionObj();

		 Statement st= con.createStatement();
		 i = st.executeUpdate("insert into users (name,gender,mobile,email,password) values ('"+db_name+"','"+db_gender+"','"+db_mobile+"','"+db_email+"','"+db_u_password+"')");
		 i= st.executeUpdate("insert into test_record (username) values ('"+db_email+"')");
	 	}
	 	
	 	catch (SQLException e) {System.out.println("failed to establish the connection"+e);}
	return i;
	 
	 
 }
 
}
