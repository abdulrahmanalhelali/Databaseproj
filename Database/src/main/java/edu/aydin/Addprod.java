package edu.aydin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Addprod
 */
public class Addprod extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addprod() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("reached editprod.java");
		Mngo m = new Mngo("ElecDB","products");
		String url = null;
		String name = request.getParameter("productname");
		String description = request.getParameter("description");
		String price = request.getParameter("price");
		String link = request.getParameter("link");
		if(	name.isEmpty() ||
			description.isEmpty() ||
			price.isEmpty() ||
			link.isEmpty()) {
					url="editfailed.jsp";
		}
		else {
			m.insertProduct(m.getProducts().size()+1, name, description, Double.parseDouble(price), link);
			url="edited.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
