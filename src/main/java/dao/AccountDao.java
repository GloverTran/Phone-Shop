package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Account;
import context.DBContext;
import model.Product;

public class AccountDao {
	public List<Account> getAccount() throws Exception{		
		Connection connection = new DBContext().getConnection();
		List<Account> list = new ArrayList<Account>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("Select * from Account");
			while(rs.next()) {
				Account acc = new Account();
				acc.setUsr(rs.getString("user_mail"));
				acc.setPwd(rs.getString("password"));
				acc.setRole(rs.getInt("account_role"));
				acc.setAddress(rs.getString("user_address"));
				acc.setPhone(rs.getString("user_phone"));
				acc.setName(rs.getString("user_name"));
				list.add(acc);
			}
			
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
}
