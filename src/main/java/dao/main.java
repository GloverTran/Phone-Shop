package dao;

import java.util.List;

import model.Product;

public class main {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		ListProductDAO dao = new ListProductDAO();
		
		List<Product> list1 = dao.getRecord(0, 3);
		Product pr = list1.get(0);
		System.out.print(pr.getSrc());
	}

}
