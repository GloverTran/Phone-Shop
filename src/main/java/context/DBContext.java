package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
	public Connection getConnection() throws Exception{
		String url = "jdbc:sqlserver://"+serverName+":"+portNumber+"\\"+instance+";databaseName="+dbName;
		if(instance == null || instance.trim().isEmpty()) {
			url = "jdbc:sqlserver://" +serverName+":"+portNumber+";databaseName="+dbName; 
		}
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url,userID,password);
	}
	
	private final String serverName = "127.0.0.1";
	private final String dbName= "ShoppingDB";
	private final String portNumber = "1433";
	private final String instance = "";
	private final String userID = "sa";
	private final String password = "sa";
}

