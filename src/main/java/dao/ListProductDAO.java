package dao;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import model.Product;


public class ListProductDAO {
	private int noOfRecords;
	public List<Product> search(String character) throws Exception{		
		Connection connection = new DBContext().getConnection();
		List<Product> list = new ArrayList<Product>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM PRODUCTS WHERE PRODUCT_NAME LIKE '%"+ character +"%'");
			this.noOfRecords = 0;
			while(rs.next()) {
				Product pr = new Product();
				pr.setId(rs.getInt("product_id"));
				pr.setName(rs.getString("product_name"));
				pr.setBrand(rs.getString("product_brand"));
				pr.setDescription(rs.getString("product_des"));
				pr.setNumber(1);
				pr.setPrice(rs.getInt("product_price"));
				pr.setSrc(rs.getString("product_img_source"));
				pr.setType(rs.getString("product_type"));
				
				list.add(pr);
				this.noOfRecords ++;
			}
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}
	
	public Product getProduct(String character) throws Exception {
		Connection connection = new DBContext().getConnection();
		Product pr = new Product();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("Select * from products where product_id = "+ character);
			if(rs.next()) {
				pr.setId(rs.getInt("product_id"));
				pr.setName(rs.getString("product_name"));
				pr.setBrand(rs.getString("product_brand"));
				pr.setDescription(rs.getString("product_des"));
				pr.setNumber(1);
				pr.setPrice(rs.getInt("product_price"));
				pr.setSrc(rs.getString("product_img_source"));
				pr.setType(rs.getString("product_type"));
			}
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return pr;
	}
	public int getNoOfRecord() {
		return this.noOfRecords;
	}
	public List<Product> getRecord(int start, int total) throws Exception{
		Connection connection = new DBContext().getConnection();
		List<Product> list = new ArrayList<>();
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery("SELECT * FROM PRODUCTS WHERE product_id >="+ start +"and product_id <="+ total); 
			while(rs.next()) {
				Product pr = new Product();
				pr.setId(rs.getInt("product_id"));
				pr.setName(rs.getString("product_name"));
				pr.setBrand(rs.getString("product_brand"));
				pr.setDescription(rs.getString("product_des"));
				pr.setNumber(1);
				pr.setPrice(rs.getInt("product_price"));
				pr.setSrc(rs.getString("product_img_source"));
				pr.setType(rs.getString("product_type"));
				
				list.add(pr);
			}
		}catch (SQLException ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}
		return list;
	}
}
