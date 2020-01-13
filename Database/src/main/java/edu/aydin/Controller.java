package edu.aydin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bson.Document;

import com.mongodb.client.MongoCollection;

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<Product> products;
	private HttpSession session;
	Mngo mongo;
	public void init() {
		
	}
    public Controller() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		String productid=request.getParameter("id");
		int id=Integer.parseInt(productid);
		request.setAttribute("prod", products.get(id-1));
		session.setAttribute("prod", products.get(id-1));
		RequestDispatcher rd =request.getRequestDispatcher("products.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		mongo = new Mngo("ElecDB", "users");
		String user = request.getParameter("username");
		String password =request.getParameter("pwd"); 
		String url = null;
		String str;
		if(mongo.checkLogin(user, password)==2) {
			Mngo mongo1= new Mngo("ElecDB", "products");
			products = mongo1.getProducts();
			session.setAttribute("products", products);
			session.setAttribute("username", user);
			session.setAttribute("userid", mongo.getID(user));
			url="Home.jsp";
		}
		else if(mongo.checkLogin(user, password)==1) {
			Mngo mongo1= new Mngo("ElecDB", "products");
			products = mongo1.getProducts();
			session.setAttribute("products", products);
			url="Home2.jsp";
		}
		else {
			str = "You entered wrong username or password";
			request.setAttribute("str", str);
			url="index2.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
