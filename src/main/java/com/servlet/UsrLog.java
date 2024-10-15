package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;

/**
 * Servlet implementation class UsrLog
 */
@WebServlet("/UsrLog")
public class UsrLog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsrLog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String userid = request.getParameter("uid");
        String password = request.getParameter("pwd");
		try { 
			String uname = UserDao.getName(userid);
			String uemail = UserDao.getEmail(userid);
			String umobile = UserDao.getMobile(userid);
		
		HttpSession session = request.getSession();
		//session.setAttribute("userid", userid);
		session.setAttribute("uemail", uemail);
		session.setAttribute("umobile", umobile);
		session.setAttribute("uname", uname);

        //System.out.println(userid+" "+ password);
//        boolean validUid = UserDao.checkUid(userid);
//        boolean validPwd = UserDao.checkPwd(userid, password);
		boolean validUid = false;
        boolean validPwd = false;
        if(UserDao.getUserId(userid).equals(userid)) {
        	validUid = true;
        }
        if(UserDao.getUserCurrentPassword(userid).equals(password)) {
        	validPwd = true;
        }
        
        if (validUid && validPwd) {
		    request.setAttribute("loginResult", "Login Successful");
		} else if (!validUid) {
		    request.setAttribute("loginResult", "User not found");
		    request.getRequestDispatcher("logpg.jsp").forward(request, response);
		} else {
		    request.setAttribute("loginResult", "Incorrect Password");
		    request.getRequestDispatcher("logpg.jsp").forward(request, response);
		}
        		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
        try {
			String role = UserDao.getRole(userid);
	        if(role.equalsIgnoreCase("Official")) {
	        	String oname = UserDao.getName(userid);
	        	String uemail = UserDao.getEmail(userid);
				String umobile = UserDao.getMobile(userid);
				String divi = UserDao.getDivision(userid);
				String subdivi = UserDao.getSubdivision(userid);
				String sect = UserDao.getSection(userid);
				String urole = UserDao.getRole(userid);
	    		
	    		HttpSession session = request.getSession();
	    		session.setAttribute("oname", oname);
	    		session.setAttribute("userid", userid);
	    		session.setAttribute("uemail", uemail);
	    		session.setAttribute("umobile", umobile);
	    		session.setAttribute("divi", divi);
	    		session.setAttribute("subdivi", subdivi);
	    		session.setAttribute("sect", sect);
	    		session.setAttribute("urole", urole);
	        	request.getRequestDispatcher("official.jsp").forward(request, response);
	        }
	        
	        else if(role.equalsIgnoreCase("Admin"))
	        	request.getRequestDispatcher("admin.jsp").forward(request, response);
	        
	        else if(role.equalsIgnoreCase("Applicant")) {
	        	String uname = UserDao.getName(userid);
				String uemail = UserDao.getEmail(userid);
				String umobile = UserDao.getMobile(userid);
				String urole = UserDao.getRole(userid);
			
				HttpSession session = request.getSession();
				session.setAttribute("userid", userid);
				session.setAttribute("uemail", uemail);
				session.setAttribute("umobile", umobile);
				session.setAttribute("uname", uname);
				session.setAttribute("urole", urole);
				request.getRequestDispatcher("application_form.jsp").forward(request, response);
	        }

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
