package edu.aydin;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.bson.Document;
import org.bson.types.ObjectId;

/**
 * Servlet implementation class Order
 */
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Product c = (Product) session.getAttribute("prod");
		System.out.println(c.getPrice());
		int pr = (int)(c.getPrice());
		Mngo mongo = new Mngo("ElecDB", "users");
		mongo.setAmount((String) session.getAttribute("username"), pr);
		Mngo m2 = new Mngo("ElecDB", "orders");
		ObjectId userid = (ObjectId) session.getAttribute("userid");
		Product prod = (Product) session.getAttribute("prod");
		m2.insertOrder(userid, prod.getId(), new java.util.Date(),prod.getPrice());
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/ordered.jsp");
		rd.forward(request, response);
	}
}
