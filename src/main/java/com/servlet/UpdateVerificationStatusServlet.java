package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ApplicationDao;

/**
 * Servlet implementation class UpdateVerificationStatusServlet
 */
@WebServlet("/UpdateVerificationStatusServlet")
public class UpdateVerificationStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVerificationStatusServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		// Retrieve the application ID from the request
        String applicationId = request.getParameter("applicationId");
        System.out.println(applicationId);
        // Update the verification status and get the result
		try {
			boolean verificationSuccess = ApplicationDao.updateVerificationStatus(applicationId);

        if (verificationSuccess) {
            response.getWriter().write("Success"); // You can send any response you prefer
        } else {
            response.getWriter().write("Failure"); // You can send any response you prefer
        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//        if (verificationSuccess) {
//            // Redirect back to the application_status.jsp with a success message
//            response.sendRedirect("application_status.jsp?success=true");
//        } else {
//            // Redirect back to the application_status.jsp with an error message
//            response.sendRedirect("application_status.jsp?success=false");
//        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
