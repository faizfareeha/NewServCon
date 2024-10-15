package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.UsersDetails;
import com.dao.UserDao;

/**
 * Servlet implementation class EmpReg
 */
@WebServlet("/EmpReg")
public class EmpReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		UsersDetails ud = new UsersDetails();
		//String role = request.getParameter("userrole");
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String umobile = request.getParameter("mno");

		ud.setUserId(request.getParameter("uid"));
		System.out.println("User ID: " + ud.getUserId());
		ud.setName(uname);
		System.out.println("Name: " + ud.getName());
		ud.setEmail(uemail);
		System.out.println("Email: " + ud.getEmail());
		ud.setMobile(umobile);
		System.out.println("Mobile: " + ud.getMobile());
		ud.setPwd(request.getParameter("pwd"));
		System.out.println("Password: " + ud.getPwd());
		ud.setRole("Official");
		System.out.println("Role: " + ud.getRole());
		ud.setDivision(request.getParameter("div"));
		System.out.println("Division: " + ud.getDivision());
		ud.setSubdivision(request.getParameter("subdiv"));
		System.out.println("Subdivision: " + ud.getSubdivision());
		ud.setSection(request.getParameter("section"));
		System.out.println("Section: " + ud.getSection());

		try {
			UserDao.createUser(ud);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("admin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
