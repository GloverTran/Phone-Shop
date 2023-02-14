package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<Product> items;
	
	public Cart() {
		items = new ArrayList<>();
	}
	
	public void add(Product ci) {
		for(Product x : items) {
			if(ci.getId() == x.getId()) {
				x.setNumber(x.getNumber() +1);
				return;
			}
		}
		items.add(ci);
	}
	
	public void remove(int id) {
		for(Product x: items) {
			if(x.getId() == id) {
				items.remove(x);
				return;
			}
		}
	}
	
	public double getAmount(){
		double a= 0;
		for(Product x: items) {
			a += x.getPrice()*x.getNumber();
		}
		return Math.round(a*100)/100;
	}
	
	public List<Product> getItems(){
		return items;
	}
}
