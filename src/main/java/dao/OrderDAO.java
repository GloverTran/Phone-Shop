package dao;

import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import context.DBContext;
import model.Cart;
import model.Orders;
import model.Product;

public class OrderDAO {
	
	public void insertOrder(Orders o, Cart c)throws Exception {
		Connection connection = new DBContext().getConnection();
		try {
			List<Product> pr = c.getItems();
			String sql = "Insert into orders_detail Values(?,?,?,?)";
			Statement stmt = connection.createStatement();
			ResultSet rs = stmt.executeQuery("Select top 1 order_id From Orders_detail order by Order_id desc");
			int id = 0;
			if(rs.next()) {
				id = rs.getInt("order_id");
			}
			id = id + 1;
			PreparedStatement statement = connection.prepareStatement(sql);
			for(Product p: pr) {
				statement.setInt(1, 1);
				statement.setInt(2, 1);
				statement.setInt(3, 1);
				statement.setInt(4, 1);
				statement.executeUpdate();
			}
			statement.close();
			
			String sql2 = "Set identify_insert orders on"
					+ " insert into orders(user_mail, order_id, order_status, order_date, order_discount_code, order_address) Values(?,?,?,?,?,?)"
					+ " set identify_insert orders off";
			PreparedStatement statement2 = connection.prepareStatement(sql2);
			statement2.setString(1, o.getUserMail());
			statement2.setString(2, ""+ id);
			statement2.setString(3, ""+o.getStatus());
			
			Date date = new Date(Calendar.getInstance().getTime().getTime());
			SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd");
			String validDate = f.format(date);
			statement2.setDate(4, date);
			statement2.setString(5, o.getDiscount());
			statement2.setString(6, o.getAddress());
			statement2.executeUpdate();
			statement2.close();
			
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
