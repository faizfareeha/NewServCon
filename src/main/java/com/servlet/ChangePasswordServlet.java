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
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
        HttpSession session = request.getSession();
		String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");
        String userId = (String) session.getAttribute("userid");
        String userrole = (String) session.getAttribute("urole");

        // Verify the current password (retrieve the password from the database)
        
		try {
			String currentPasswordFromDB = UserDao.getUserCurrentPassword(userId);


        if (currentPasswordFromDB.equals(currentPassword) && newPassword.equals(confirmPassword)) {
            // Update the password in the database
            UserDao.updateUserPassword(userId, newPassword);

            // Provide a success message
            request.setAttribute("message", "Password changed successfully");
        } else {
            // Provide an error message
            request.setAttribute("message", "Password change failed. Please check your current password and the new password.");
        }
        
        if (userrole.equals("Official")) {
        request.getRequestDispatcher("changeemppwd.jsp").forward(request, response);
        } else if (userrole.equals("Applicant")) {
        	request.getRequestDispatcher("changeapppwd.jsp").forward(request, response);
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
