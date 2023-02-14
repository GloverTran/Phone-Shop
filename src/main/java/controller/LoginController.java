package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Account;
import dao.AccountDao;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			request.getSession(true).invalidate();
			//make sure that email is valid
			String regexMail = "^[A-Z0-9_a-z]+@[A-Z0-9\\.a-z]+\\.[A-Za-z]{2,6}$";
			String regex = "[a-zA-Z0-9!@#$%^&*]+";
			//collect data from a login form
			String user = request.getParameter("username");
			String password = request.getParameter("password");
			HttpSession session = request.getSession(true);
			if(!password.matches(regex)|| !user.matches(regexMail)) {
				session.setAttribute("error","invalid syntax");
				response.sendRedirect("login.jsp");
			}
			if(request.getParameter("remember")!= null) {
				Cookie cookie = new Cookie("username", user);
				cookie.setMaxAge(300);
				response.addCookie(cookie);
			}
			//read information of account in web.xml
			AccountDao dao = new AccountDao();
			List<Account> temp = dao.getAccount();
			for(Account acc: temp) {
				//check account - use validate code in assignment 1 to valid user
				if(user != null && acc.getPwd().equals(password) && acc.getUsr().equalsIgnoreCase(user) && acc.getRole()==1) {
					//set session
					session.setAttribute("user", user);
					//login is valid, now redirect to index page of admin
					response.sendRedirect("admin/index.jsp");
				}if(user != null && acc.getPwd().equals(password) && acc.getUsr().equalsIgnoreCase(user) && acc.getRole()==0) {
					//set session
					session.setAttribute("user", user);
					//login is valid, now redirect to index page of admin
					response.sendRedirect("customer.jsp");
				}
				
				else {
					session.setAttribute("error","<h2><br>Wrong username or password</h2>");
					response.sendRedirect("login.jsp");
				}
			}

		}catch(NullPointerException e){
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}catch (Exception ex) {
			response.getWriter().println(ex);
		}
	}

}
