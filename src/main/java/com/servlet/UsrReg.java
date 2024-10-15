package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.UsersDetails;
import com.dao.UserDao;

/**
 * Servlet implementation class UsrReg
 */
@WebServlet("/UsrReg")
public class UsrReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsrReg() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		System.out.println("UsrReg Page running...");

		UsersDetails ud = new UsersDetails();
		//String role = request.getParameter("userrole");
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String umobile = request.getParameter("mno");

		// In your ApplicationServlet doPost method:
		//int userid = UniqueRandomGenerator.generateUniqueRandom();
		// Store uniqueRandom in the database along with other form data.

		// Store it in a session attribute
		HttpSession session = request.getSession();
		//session.setAttribute("userid", userid);
		session.setAttribute("uemail", uemail);
		session.setAttribute("umobile", umobile);
		session.setAttribute("uname", uname);

		// int usrid = Integer.parseInt(request.getParameter("uid"));
		ud.setUserId(request.getParameter("email"));
		System.out.println("User ID: " + ud.getUserId());
		ud.setName(uname);
		System.out.println("Name: " + ud.getName());
		ud.setEmail(uemail);
		System.out.println("Email: " + ud.getEmail());
		ud.setMobile(umobile);
		System.out.println("Mobile: " + ud.getMobile());
		ud.setPwd(request.getParameter("pwd"));
		System.out.println("Password: " + ud.getPwd());
		ud.setRole("Applicant");
		System.out.println("Role: " + ud.getRole());

		try {
			UserDao.createUser(ud);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Redirect to the application form page
		response.sendRedirect("application_form.jsp");

		
//		  boolean emailExists = UserDao.checkEmail(uemail); 
//		  if (emailExists) {
//			  request.setAttribute("regResult", "Email Already Exists"); 
//			  request.getRequestDispatcher("regpage.jsp").forward(request, response);
//		  }
		  
		  
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
