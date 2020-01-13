package edu.aydin;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;

public class Mngo {
	MongoClient mg;
	MongoDatabase db;
	MongoCollection<Document> coll;
	public Mngo(String db, String coll){
		mg = new MongoClient("localhost", 27017);
		this.db = mg.getDatabase(db);
		this.coll = this.db.getCollection(coll);
	}
	public ObjectId getID(String username) {
		ObjectId id = null;
		Iterator<Document> checkUsername = coll.find().iterator();
		while(checkUsername.hasNext()) {
			Document elem = checkUsername.next();
			if(elem.getString("username").contentEquals(username)) {
				id = elem.getObjectId("_id");
			}
		}
		return id;
	}
	public boolean insertDocument(String username, String password, String email) {
		Iterator<Document> checkUsername = coll.find().iterator();
		while(checkUsername.hasNext()) {
			Document elem = checkUsername.next();
			if(elem.getString("username").contentEquals(username) || elem.getString("email").contentEquals(email)) {
				return false;
			}
		}
		final String emailregex = "[-_a-zA-Z0-9]+@[a-zA-Z0-9]+\\.(com|net|org)";
		Pattern r = Pattern.compile(emailregex);
		Matcher m = r.matcher(email);
		if (m.find( )) {
			Document user = new Document("username", username).append("password", password).append("email", email).append("amount", "0").append("status", "customer");
			coll.insertOne(user);
			return true;
		}
		return false;
	}
	public String getAmount(String username) {
		Iterator<Document> checkUsername = coll.find().iterator();
		while(checkUsername.hasNext()) {
			Document elem = checkUsername.next();
			if(elem.getString("username").contentEquals(username)) {
				return elem.getString("amount");
			}
		}
		return null;
	}
	public void setAmount(String username, int amount) {
		Iterator<Document> checkUsername = coll.find().iterator();
		while(checkUsername.hasNext()) {
			Document elem = checkUsername.next();
			if(elem.getString("username").contentEquals(username)) {
				Document newAmount = new Document("$set",new Document("amount",String.valueOf(Integer.parseInt(elem.getString("amount"))+ amount)));
				coll.updateOne(new Document("username",username), newAmount);
			}
		}
	}
	public void insertProduct(int id, String name, String des, double price, String link) {
		Document product = new Document("id",id).append("name", name).append("description",des).append("price", price).append("link", link);
		coll.insertOne(product);
	}
	public boolean deleteProduct(int productid) {
		Iterator<Document> checkProduct = coll.find().iterator();
		while(checkProduct.hasNext()) {
			Document elem = checkProduct.next();
			if(elem.getInteger("id").equals(productid)) {
				coll.deleteOne(elem);
				return true;
			}
		}
		return false;
	}
	public void insertOrder(ObjectId userid, int productid, Date orderdate, double price) {
		Document order = new Document("userid",userid).append("productid", productid).append("orderdate",orderdate).append("price", price);
		coll.insertOne(order);
	}
	public int checkLogin(String username, String password) {
		Iterator<Document> checkUsername = coll.find().iterator();
		while(checkUsername.hasNext()) {
			Document elem = checkUsername.next();
			if(elem.getString("username").contentEquals(username) && elem.getString("password").contentEquals(password)) {
				if(elem.getString("status").contentEquals("admin")) {
					return 1;
				}
				else return 2;
			}
		}
		return 0;
	}
	
	public ArrayList<Product> getProducts(){
		ArrayList<Product> pr =
				new ArrayList<>();
		Iterator<Document> products = coll.find().iterator();
		while(products.hasNext()) {
			Document elem = products.next();
			pr.add(new Product(elem.getInteger("id"),elem.getString("name"),elem.getString("description"),
					elem.getDouble("price"),elem.getString("link")));
		}
		return pr;
	}
}