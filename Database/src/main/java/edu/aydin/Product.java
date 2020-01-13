package edu.aydin;

public class Product {
	private int id;
	private String name;
	private String description;
	private double price;
	private String link;
	
	
	public Product(int id,String name,String des, double price, String link){	
		this.id=id;
		this.name=name;
		this.description=des;
		this.price=price;
		this.link=link;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
