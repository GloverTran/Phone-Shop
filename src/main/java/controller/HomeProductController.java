package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ListProductDAO;
import model.Product;

/**
 * Servlet implementation class HomeProductController
 */
@WebServlet("/HomeProductController")
public class HomeProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int page = 1;
		int recordPerPage = 7;
		ListProductDAO dao = new ListProductDAO();
		if(request.getParameter("page")!= null) {
			page = Integer.parseInt(request.getParameter("page"));
		}try {
			List<Product> temp = dao.search("");
			int noOfRecord = dao.getNoOfRecord();
			int noOfPage = (int) Math.ceil(noOfRecord * 1.0/(recordPerPage-1));
			List<Product> list = dao.getRecord((page-1)*recordPerPage,recordPerPage*page-1);
			request.setAttribute("productList", list);
			request.setAttribute("noOfPage", noOfPage);
			request.setAttribute("currentPage", page);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try {
			List<Product> temp = new ArrayList<Product>();
			request.setAttribute("ProductList", temp);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
